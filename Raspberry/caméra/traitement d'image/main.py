"""
Script de traitement d'images

==========================================
| tâche | description                     |
|-------|---------------------------------
|   1   | binarisation de l'image         |
|   2   | détection de formes             |
|   3   | détection de feuilles           |
|   4   | détection de trous              |
|   5   | détection de couleurs           |
===========================================

"""

# inclusion de librairies

import PIL.Image
import matplotlib.pyplot as plt
from function import *

if __name__ == '__main__':

#   acquisition de l'image

    path = "E:/ecole/5A/IOT/clône/Smart-Green-House/Raspberry/caméra/traitement d'image/petite base de données de feuille/Quercus_acerifolia_leaves3.jpg"
    image = PIL.Image.open(path)
    definition = image.size
    image = image.resize((round(definition[0]/4), round(definition[1]/4)))
#   premier traitement d'image
    image_bin = gray2bin(image)
    new_image = image_bin
    new_image = errode(new_image, 6)
    new_image = dilate(new_image, 5)
#   création d'une matrice avec toute les formes indéxé
    image_groupe, nombre_objet = get_form(new_image)
#   calcul des centres de gravités
    gravity_point_list = np.zeros((nombre_objet, 2))
    for i in range(0, nombre_objet):
        gravity_point_list[i][0], gravity_point_list[i][1] = get_gravity_point(isolate_object(image_groupe, i+1))

#   affichage de tout ce bordel
    fig = plt.figure()
    fig.add_subplot(2,2,1)
    for i in range(0, nombre_objet):
        plt.scatter(gravity_point_list[i][1],gravity_point_list[i][0], color='r', marker='+')
    plt.title("image original")
    plt.imshow(image)
    fig.add_subplot(2,2,2)
    plt.title("image binarisé")
    plt.imshow(image_bin)
    fig.add_subplot(2,2,3)
    plt.title('image errodé/dilaté')
    plt.imshow(new_image)
    fig.add_subplot(2,2,4)
    plt.title('Détection des objets: %i' %nombre_objet)
    plt.imshow(image_groupe)
    plt.show()
    print("done!")
