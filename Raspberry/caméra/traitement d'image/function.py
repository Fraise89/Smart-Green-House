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
def get_seuil(image):
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
    return seuil
#binarisation d'une image
def gray2bin(image):
    print('Binarisation processing... ')
    seuil = get_seuil(image)
    definition = image.size
    new_image = np.zeros(definition)
    for y in range(definition[1]):
        for x in range(definition[0]):
            if get_gray_pix(image, (x, y)) > seuil:
                new_image[x][y] = 0
            else:
                new_image[x][y] = 1
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
#ne fait rien mdr
def get_form(image):
    print("lol")