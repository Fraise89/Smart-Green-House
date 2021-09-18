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

    path = "E:/ecole/5A/IOT/clône/Smart-Green-House/Raspberry/caméra/traitement d'image/petite base de données de feuille/érable_sain.png";
    image = PIL.Image.open(path)
    definition = image.size
    image = image.resize((round(definition[0]/10), round(definition[1]/10)))
    image_bin = gray2bin(image)
    new_image = image_bin
    new_image = errode(new_image, 12)
    new_image = dilate(new_image, 10)
    #new_image = errode(new_image, 4)
    plt.imshow(new_image)
    plt.show()
    print("done!")
