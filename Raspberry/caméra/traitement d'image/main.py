"""
Script de traitement d'images
==========================================
| tâche | description                     |
|-------|---------------------------------
|   1   | binarisation de l'image         |
|   2   | détection de formes             |
|   3   | détection de couleurs           |
===========================================
"""

# inclusion de librairies

import PIL.Image
import matplotlib.pyplot as plt

scale = 6
path = "image/aaaa.jpg"
errodation = 2
dilatation = 2
#pas besoin pour le romarain
#nb_trou = 10
good_health_color = (151, 196, 53)
bad_health_color = (86, 59, 40)

if __name__ == '__main__':

#   acquisition de l'image

    stop = 0
    while stop <= 1:
      image = PIL.Image.open(path)
      definition = image.size
      image = image.resize((round(definition[0]/scale), round(definition[1]/scale)))
#     premier traitement d'image
      image_bin = gray2bin(image, 0, stop)
      new_image = image_bin
      new_image = errode(new_image, errodation)
      new_image = dilate(new_image, dilatation)
#     création d'une matrice avec toute les formes indéxé
      image_groupe, nombre_objet = get_form(new_image)
#     calcul des centres de gravités
      gravity_point_list = np.zeros((nombre_objet, 2))
      for i in range(0, nombre_objet):
          gravity_point_list[i][0], gravity_point_list[i][1] = get_gravity_point(isolate_object(image_groupe, i+1))
#     analyse des trou dans chacune des feuilles
#     pas besoin dans le romarain

#     calcul de la couleur moyenne
      average_color = identify_color(image, new_image)

#     affichage de tout ce bordel (image)
      fig1 = plt.figure()
      fig1.add_subplot(2,2,1)
      for i in range(0, nombre_objet):
          plt.scatter(gravity_point_list[i][1],gravity_point_list[i][0], color='r', marker='+')
      plt.title("image original")
      plt.imshow(image)
      fig1.add_subplot(2,2,2)
      plt.title("image binarisé")
      plt.imshow(image_bin)
      fig1.add_subplot(2,2,3)
      plt.title('image errodé/dilaté')
      plt.imshow(new_image)
      fig1.add_subplot(2,2,4)
      plt.title('Détection des objets: %i' %nombre_objet)
      plt.imshow(image_groupe)
      plt.show()

#     affichage des info
      print("Average color: ", average_color, " Good health color: ", good_health_color, " Bad health color: ", bad_health_color)
      good_health = color_identification(average_color)

      fig2 =plt.figure()
      fig2.add_subplot(1, 3, 1)
      average_color_img = PIL.Image.new('RGB', (100,100), average_color)
      plt.title("Average color")
      plt.imshow(average_color_img)
      fig2.add_subplot(1, 3, 2)
      good_color_img = PIL.Image.new('RGB', (100,100), good_health_color)
      plt.title("Good health color")
      plt.imshow(good_color_img)
      fig2.add_subplot(1, 3, 3)
      bad_color_img = PIL.Image.new('RGB', (100,100), bad_health_color)
      plt.title("Bad health color")
      plt.imshow(bad_color_img)

      if good_health == True:
        print("Votre plante est en bonne santé :)")
        stop += 10
      elif stop == 1:
        print("Votre plante est en train de crever dans d'atroce soufrance >:(")
        stop += 1
      else:
        stop += 1

