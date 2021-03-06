#include <DHT.h>
#include <ArduinoLowPower.h>
#define DHTPIN A1              // A1 ->  DHT
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);
#define Ventilo 10            //  PIN 10 -> VENTILO
#define LED_Matrix 11             // PIN11 -> LED
#define LDR_pin A2                // A2 -> LDR
#define pompe  8
#define Humidite_sol A0 

int tempMax = 30;        // the maximum temperature when Ventilo is at 100%
uint32_t delayMS;
int VentiloSpeed;
int temp;
int humid ;
int percentValue = 0;
char toDatabase[30];
int compteurEnvoi;

void setup() 
   {
  Serial.begin(9600) ;
  dht.begin();
  pinMode(Ventilo, OUTPUT);
  pinMode(DHTPIN, INPUT);
  pinMode(Humidite_sol, INPUT) ; 
  pinMode(pompe, OUTPUT) ; 
  pinMode(LED_Matrix, OUTPUT);
  pinMode(LDR_pin, INPUT);
  digitalWrite(pompe, LOW) ; // pompe off
  compteurEnvoi = 0;
    toDatabase[compteurEnvoi++] = 'B';
    toDatabase[compteurEnvoi++] = 'D';
    toDatabase[compteurEnvoi++] = ';';
    }

void loop()
  {
      temperature();
      humidity_soil();
      eclairage();
   
      Serial.print(toDatabase);
      compteurEnvoi = 3;
   
      LowPower.deepSleep(60000); // put the arduino in sleep mode for 1 min
  }
void temperature() //PARTIE CONTROLE PAR VENTILO ET SERVO
  { 
    char buff[10];
   Serial.println(F("**Test temperature... "));
  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();

  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t) ) {
    Serial.println(F("Failed to read from DHT sensor!"));

    //Valeurs non valides pour la base de donnée
    toDatabase[compteurEnvoi++] = '-';
    toDatabase[compteurEnvoi++] = ';';
    toDatabase[compteurEnvoi++] = '-';
    toDatabase[compteurEnvoi++] = ';';
    
    return;
  }
  // pour la base de donnée
  dtostrf(h, 4, 2, buff); // valeur valide
  toDatabase[compteurEnvoi++] = buff[0];
  toDatabase[compteurEnvoi++] = buff[1];
  toDatabase[compteurEnvoi++] = buff[2];
  toDatabase[compteurEnvoi++] = buff[3];
  toDatabase[compteurEnvoi++] = buff[4];
  toDatabase[compteurEnvoi++] = ';';

  dtostrf(t, 4, 2, buff); 
  toDatabase[compteurEnvoi++] = buff[0]; 
  toDatabase[compteurEnvoi++] = buff[1];
  toDatabase[compteurEnvoi++] = buff[2];
  toDatabase[compteurEnvoi++] = buff[3];
  toDatabase[compteurEnvoi++] = buff[4];
  toDatabase[compteurEnvoi++] = ';';

  
  Serial.print(F("Humidity: "));
  Serial.print(h);
  Serial.print(F("%  Temperature: "));
  Serial.print(t);
  Serial.println(F("°C "));
   temp = dht.readTemperature();     // get the temperature
      if(temp  < tempMax)
         { // if temp is lower than minimum temp 
      VentiloSpeed = 0; // Ventilo is not spinning 
      digitalWrite(Ventilo, LOW);    
      Serial.print("Ventilo OFF ->"); 
      
        toDatabase[compteurEnvoi++] = '0';
        toDatabase[compteurEnvoi++] = ';';
        } 
      else
        {  
       VentiloSpeed = 1; // Ventilo is spinning 
       digitalWrite(Ventilo, HIGH); 
       Serial.print(" Ventilo ON ->");
       
        toDatabase[compteurEnvoi++] = '1';
        toDatabase[compteurEnvoi++] = ';';
         } }

  void humidity_soil()  // PARTIE CONTROLE HUMIDIT2 DU SOL
  {
  char buff[5];
  
  Serial.println(" **Test humidité du Sol...");
  humid= analogRead(Humidite_sol) ; // lecture capteur humidité
  Serial.print("Analog Value humidity: ");
  Serial.println(humid) ; //affichage humidité
  percentValue = map(humid, 0,1023,100,0);  
  Serial.print("Percent Value humidity: ");
  Serial.print(percentValue);
  Serial.println("%");

if (percentValue != 100){
 sprintf(buff, "%d", percentValue); // valeur valide
  toDatabase[compteurEnvoi++] = buff[0];
  toDatabase[compteurEnvoi++] = buff[1];
  toDatabase[compteurEnvoi++] = ';';
}
else{
  toDatabase[compteurEnvoi++] = '1';
  toDatabase[compteurEnvoi++] = '0';
  toDatabase[compteurEnvoi++] = '0';
  toDatabase[compteurEnvoi++] = ';';
}
 
   if (humid>500) // si le sol est  sec (dans l’eau : 0, dans l’air 1023)
      {
          digitalWrite(pompe, HIGH) ; // allumage de la pompe
          Serial.println("Vanne ON") ;
          delay(3000), // arrosage 3 secondes
          Serial.println("attendre l'écoulement de l'eau dans la plante..") ;
          delay(1000) ; // pause 10mns le temps que l’eau se diffuse autour du capteur
          digitalWrite(pompe, LOW) ; // arret de la pompe
          Serial.println("Vanne OFF") ;
      }
  }


  
   void eclairage() //PARTIE CONTROLE LUMIERE
  {


 Serial.println(" **Test Eclairage...");
    int ldrStatus = analogRead(LDR_pin);
    if (ldrStatus <=300)
        {
        digitalWrite(LED_Matrix, HIGH);
        Serial.println("LDR is DARK, LED is ON");
        toDatabase[compteurEnvoi++] = '1';
        toDatabase[compteurEnvoi++] = ';';
        delay(2000);
         }
    else {
         digitalWrite(LED_Matrix, LOW);  
         Serial.println("LDR is BRIGHT, LED is OFF");
         toDatabase[compteurEnvoi++] = '0';
         toDatabase[compteurEnvoi++] = ';';
         delay(1000);
         }
  Serial.println("------------------------------------") ;
  }
