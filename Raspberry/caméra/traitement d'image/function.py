"""
Fonction lié au traitement d'image
"""
import numpy as np
import math

#obtention d'un pixel en son équivalent gris
def get_gray_pix(image, pixel):
    pixel = image.getpixel(pixel)
    return round((pixel[0] + pixel[1] + pixel[2])/3)
#obtention d'un histogramme du niveau de gris d'une image
def get_histo(image):
    print("Histrogram processing... ")
    definition = image.size
    histo = np.zeros(256)
    gris = 0
    for i in range(definition[0]):
        for j in range(definition[1]):
            pixel = image.getpixel((i,j))
            gris = round((pixel[0] + pixel[1] + pixel[2])/3)
            histo[gris] += 1
    print('End of the histogram processing!')
    return histo
#obtention du seuil d'une image pour sa binarisation
def get_seuil(image, sensibility):
    print('Treshold processing... ')
    definition = image.size
    somme = 0
    m = np.zeros(4, int)
    c = np.zeros(2, int)
    z = np.zeros(2, int)
    histo = get_histo(image)
    m[0] = 1

    for i in range(256):
        somme += histo[i]*i
    m[1] = somme/(definition[0]*definition[1])
    somme = 0
    for i in range(256):
        somme += histo[i]*i*i
    m[2] = somme/(definition[0]*definition[1])
    somme = 0
    for i in range(256):
        somme += histo[i]*i*i*i
    m[3] = somme/(definition[0]*definition[1])

    c[1] = (m[2]*m[1]-m[0]*m[3])/(m[2]*m[0]-m[1]*m[1])
    c[0] = (-c[1]*m[1]-m[2])/m[0]

    z[0] = (-c[1]+math.sqrt(c[1]*c[1]-4*c[0]))/2
    z[1] = (-c[1]-math.sqrt(c[1]*c[1]-4*c[0]))/2

    seuil = (z[0] + z[1])/2
    print('End of the treshold processing!')
    if (seuil < sensibility):
       return 0 
    else:
       return seuil-sensibility
#binarisation d'une image
#!!! Attention, certaine fois la binarisation est inversé
def gray2bin(image, sensibility = 0, invert = False):
    print('Binarisation processing... ')
    seuil = get_seuil(image, sensibility)
    definition = image.size
    new_image = np.zeros((definition[1], definition[0]))
    for y in range(definition[1]):
        for x in range(definition[0]):
            if get_gray_pix(image, (x, y)) > seuil:
                if invert == True:
                  new_image[y][x] = 0
                else:
                  new_image[y][x] = 1
            else:
                if invert == True:
                  new_image[y][x] = 1
                else:
                  new_image[y][x] = 0
    print('End of the binarisation processing!')
    return new_image
#errodation d'une image binarisé
def errode(image, intensity):
    print('Errodation processing...')
    for i in range(1,intensity+1):
        print(i,'/',intensity,'...', end='')
        if i == 1:
            definition = image.shape
        else:
            definition = new_image.shape
            image = new_image
        new_image = np.zeros((definition[0]-2, definition[1]-2))
        for y in range (1, definition[1]-1):
            for x in range (1, definition[0]-1):
                test = 1
                for j in range(-1, 1):
                    for k in range (-1, 1):
                        if image[x+j][y+k] == 0:
                            test = 0
                new_image[x-1][y-1] = test
        print('done!')
    print('End of the errodation processing!')
    return new_image
#dilatation d'une image binarisé
def dilate(image, intensity):
    print("Dilatation processing...")
    for m in range(1, intensity+1):
        print(m, '/',intensity,'...',end='')
        if m == 1:
            definition = image.shape
        else:
            definition = new_image.shape
            image = new_image
        new_image = np.zeros((definition[0] + 2, definition[1] + 2))
        for y in range(definition[1]):
            for x in range(definition[0]):
                if image[x][y] == 1:
                    for i in range (2):
                        for j in range (2):
                            new_image[x+i][y+j] = 1
        print('done!')
    print('End of the dilatation processing!')
    return new_image
#remplissage d'une forme d'une image à partir d'un pixel
#obselette / à refaire
def fill_an_object(color, image, image_group):
    definition = image.shape
    for y in range(definition[1]):
        for x in range(definition[0]):
            if image_group[x][y] == color:
                #4 cotés
                if y+1 < definition[1]:
                    if image[x][y+1] == 1:
                        image_group[x][y+1]= color
                if y-1 >= 0:
                    if image[x][y-1] == 1:
                        image_group[x][y-1] = color
                if x+1 < definition[0]:
                    if image[x+1][y] == 1:
                        image_group[x+1][y] = color
                if x-1 >= 0:
                    if image[x-1][y] == 1:
                        image_group[x-1][y] = color
                #diagonales
                if x-1 >= 0 and y-1>= 0:
                    if image[x-1][y-1] == 1:
                        image_group[x-1][y-1] = color
                if x+1 < definition[0] and y-1 >= 0:
                    if image[x+1][y-1] == 1:
                        image_group[x+1][y-1] = color
                if x-1 >= 0 and y+1 < definition[1]:
                    if image[x-1][y+1] == 1:
                        image_group[x-1][y+1] = color
                if x+1 < definition[0] and y+1 < definition[1]:
                    if image[x+1][y+1] == 1:
                        image_group[x+1][y+1] = color
    for y in range(definition[1]):
        for x in range(definition[0]-1,0,-1):
            if image_group[x][y] == color:
                #4 cotés
                if y+1 < definition[1]:
                    if image[x][y+1] == 1:
                        image_group[x][y+1]= color
                if y-1 >= 0:
                    if image[x][y-1] == 1:
                        image_group[x][y-1] = color
                if x+1 < definition[0]:
                    if image[x+1][y] == 1:
                        image_group[x+1][y] = color
                if x-1 >= 0:
                    if image[x-1][y] == 1:
                        image_group[x-1][y] = color
                #diagonales
                if x-1 >= 0 and y-1>= 0:
                    if image[x-1][y-1] == 1:
                        image_group[x-1][y-1] = color
                if x+1 < definition[0] and y-1 >= 0:
                    if image[x+1][y-1] == 1:
                        image_group[x+1][y-1] = color
                if x-1 >= 0 and y+1 < definition[1]:
                    if image[x-1][y+1] == 1:
                        image_group[x-1][y+1] = color
                if x+1 < definition[0] and y+1 < definition[1]:
                    if image[x+1][y+1] == 1:
                        image_group[x+1][y+1] = color
    for y in range(definition[1]-1,0,-1):
        for x in range(definition[0]):
            if image_group[x][y] == color:
                #4 cotés
                if y+1 < definition[1]:
                    if image[x][y+1] == 1:
                        image_group[x][y+1]= color
                if y-1 >= 0:
                    if image[x][y-1] == 1:
                        image_group[x][y-1] = color
                if x+1 < definition[0]:
                    if image[x+1][y] == 1:
                        image_group[x+1][y] = color
                if x-1 >= 0:
                    if image[x-1][y] == 1:
                        image_group[x-1][y] = color
                #diagonales
                if x-1 >= 0 and y-1>= 0:
                    if image[x-1][y-1] == 1:
                        image_group[x-1][y-1] = color
                if x+1 < definition[0] and y-1 >= 0:
                    if image[x+1][y-1] == 1:
                        image_group[x+1][y-1] = color
                if x-1 >= 0 and y+1 < definition[1]:
                    if image[x-1][y+1] == 1:
                        image_group[x-1][y+1] = color
                if x+1 < definition[0] and y+1 < definition[1]:
                    if image[x+1][y+1] == 1:
                        image_group[x+1][y+1] = color
    for y in range(definition[1]-1,0,-1):
        for x in range(definition[0]-1,0,-1):
            if image_group[x][y] == color:
                #4 côtés
                if y+1 < definition[1]:
                    if image[x][y+1] == 1:
                        image_group[x][y+1] = color
                if y-1 >= 0:
                    if image[x][y-1] == 1:
                        image_group[x][y-1] = color
                if x+1 < definition[0]:
                    if image[x+1][y] == 1:
                        image_group[x+1][y] = color
                if x-1 >= 0:
                    if image[x-1][y] == 1:
                        image_group[x-1][y] = color
                #4 diagonales
                if x-1 >= 0 and y-1 >= 0:
                    if image[x-1][y-1] == 1:
                        image_group[x-1][y-1] = color
                if x+1 < definition[0] and y-1 >= 0:
                    if image[x+1][y-1] == 1:
                        image_group[x+1][y-1] = color
                if x-1 >= 0 and y+1 < definition[1]:
                    if image[x-1][y+1] == 1:
                        image_group[x-1][y+1] = color
                if x+1 < definition[0] and y+1 < definition[1]:
                    if image[x+1][y+1] == 1:
                        image_group[x+1][y+1] = color
    return image_group
#obtention d'une matrice avec tous les objets
#retourne le nombre d'objets et la matrice d'objets
def get_form(image):
    print("Object counting processing...")
    definition = image.shape
    image_groupe = np.zeros(definition)
    color = 0
    stop = 0
    # regarde si un pixel appartient déja à un objet détécté
    # ou non
    while True:
        for y in range(definition[1]):
            for x in range(definition[0]):
                if image[x][y] == 1 and image_groupe[x][y] == 0 and stop == 0:
                    color += 1
                    stop = 1
                    #création d'un pixel dans la matrice des objets trouvé
                    image_groupe[x][y] = color

        if stop == 0:
            break
        stop = 0
        print('object ',color,'processing...')
        image_groupe = fill_an_object(color, image, image_groupe)
    nombre = color
    print("End of the object counting processing!")
    return image_groupe,nombre
#retourne le centre de gravité d'un objet
def get_gravity_point(image):
    definition = image.shape
    xg = definition[0]/2
    yg = definition[1]/2
    segment = np.zeros((definition[1],2))
    for y in range(definition[1]):
        for x in range(definition[0]):
            if image[x][y] == 1:
                segment[y][0] = x
                for x in range(x,definition[0]):
                    if image[x][y] == 1:
                        segment[y][1] += 1
                    else:
                        break
                break
    sx = 0
    sy = 0
    m = 0
    for i in range(definition[1]):
        sx += ((segment[i][0]+segment[i][1])**2 - segment[i][0]**2)/2
        sy += segment[i][1]*((i+1)**2 -i**2)/2
        m += segment[i][1]
    if m != 0:
        xg = sx/m
        yg = sy/m
    return round(xg),round(yg)
#isole un objet de l'image
def isolate_object(image,color):
    definition = image.shape
    new_image = np.zeros(definition)
    for y in range(definition[1]):
        for x in range(definition[0]):
            if image[x][y] == color:
                new_image[x][y] = 1
    return new_image
# retourne la couleur principal d'une image sur un masque
def identify_color(image_colored, mask):
  definition = image.size
  average_color = (0,0,0)
  compteur = 0
  for y in range(definition[1]):
    for x in range(definition[0]):
      if mask[y][x] == 1:
        color = image.getpixel((x,y))
        average_color = (average_color[0] + color[0], average_color[1] + color[1], average_color[2] + color[2])
        compteur += 1
  if compteur == 0:
    compteur = 1
  return (round(average_color[0]/compteur), round(average_color[1]/compteur), round(average_color[2]/compteur))

#identification  de la correspondance de couleur des feuilles
def color_identification(average_color):
  print(average_color)
  #si rouge plus grand que vert, la plante est malade
  if (average_color[0] > (average_color[1] + 30)) or (average_color[2] > average_color[1] + 30):
    return False
  else:
    return True
