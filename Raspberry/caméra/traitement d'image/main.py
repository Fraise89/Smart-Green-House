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

#     calcul de la couleur moyenne de chaque formes
      nb_forme_verte = 0
      average_color = np.zeros((nombre_objet, 3));
      for i in range(0, nombre_objet):
        average_color[i][0], average_color[i][1], average_color[i][2] = identify_color(image, isolate_object(image_groupe, i+1))
#       comptage des formes vertes
        nb_forme_verte += color_identification(average_color[i])

      print(nb_forme_verte, " objet verts on été détécté sur ", nombre_objet)
      health = False

      if (nb_forme_verte / nombre_objet) > 0.25:
        health = True


#     affichage de tout ce bordel (image)
      fig1 = plt.figure()
      fig1.add_subplot(2,2,1)
      for i in range(0, nombre_objet):
          plt.scatter(gravity_point_list[i][1],gravity_point_list[i][0], color='r', marker='+')
      plt.title("image original")
      plt.gca().axes.get_yaxis().set_visible(False)
      plt.gca().axes.get_xaxis().set_visible(False)
      plt.imshow(image)
      fig1.add_subplot(2,2,2)
      plt.title("image binarisé")
      plt.gca().axes.get_yaxis().set_visible(False)
      plt.gca().axes.get_xaxis().set_visible(False)
      plt.imshow(image_bin)
      fig1.add_subplot(2,2,3)
      plt.title('image errodé/dilaté')
      plt.gca().axes.get_yaxis().set_visible(False)
      plt.gca().axes.get_xaxis().set_visible(False)
      plt.imshow(new_image)
      fig1.add_subplot(2,2,4)
      plt.title('Détection des objets: %i' %nombre_objet)
      plt.gca().axes.get_yaxis().set_visible(False)
      plt.gca().axes.get_xaxis().set_visible(False)
      plt.imshow(image_groupe)
      plt.show()

      if health == True:
        print("Votre plante est en bonne santé :)")
        stop += 10
      elif stop == 1:
        print("Votre plante est en train de crever dans d'atroce soufrance >:(")
        stop += 1
      else:
        stop += 1

