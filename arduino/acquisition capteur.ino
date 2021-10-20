
#include <DHT.h>
#define DHTPIN A1                      // A1 ->  DHT
#define DHTTYPE DHT11
uint32_t delayMS;
const int relay_LED = 11;               // PIN11 -> RELAY LED
const int ldrPin = A2;                 // A2 -> LDR
int pompe = 8;
DHT dht(DHTPIN, DHTTYPE);
int Ventilo = 10;                      //  PIN 10 -> VENTILO
int tempMax = 30;   // the maximum temperature when Ventilo is at 100%
int VentiloSpeed;
int temp;

int pinhumidite= A0 ;   
int humid ;
int percentValue = 0;


void setup() 
   {
  Serial.begin(9600) ;
  dht.begin();
  pinMode(Ventilo, OUTPUT);
  pinMode(DHTPIN, INPUT);
  pinMode(pinhumidite, INPUT) ; 
  pinMode(pompe, OUTPUT) ; 
  pinMode(relay_LED, OUTPUT);
  pinMode(ldrPin, INPUT);
  digitalWrite(pompe, LOW) ; // pompe off
    }

void loop()
  {
 
      temperature();
      humidity_soil();
      eclairage();
   
  }
void temperature() //PARTIE CONTROLE PAR VENTILO ET SERVO
  { 
   Serial.println(F("**Test temperature... "));
  float h = dht.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht.readTemperature();

  // Check if any reads failed and exit early (to try again).
  if (isnan(h) || isnan(t) ) {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }
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
        } 
      else
        {  
       VentiloSpeed = 1; // Ventilo is spinning 
       digitalWrite(Ventilo, HIGH); 
       Serial.print(" Ventilo ON ->");
         }
  }

  void humidity_soil()  // PARTIE CONTROLE HUMIDIT2 DU SOL
  {
  
  Serial.println(" **Test humidité du Sol...");
  humid= analogRead(pinhumidite) ; // lecture capteur humidité
  Serial.print("Analog Value humidity: ");
  Serial.println(humid) ; //affichage humidité
  percentValue = map(humid, 0,1023,100,0);
  Serial.print("Percent Value humidity: ");
  Serial.print(percentValue);
  Serial.println("%");
 
 
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
    int ldrStatus = analogRead(ldrPin);
    if (ldrStatus <=300)
        {
        digitalWrite(relay_LED, HIGH);
        Serial.println("LDR is DARK, LED is ON");
        delay(2000);
         }
    else {
         digitalWrite(relay_LED, LOW);  
         Serial.println("LDR is BRIGHT, LED is OFF");
         delay(1000);
         }
  Serial.println("------------------------------------") ;
  }
