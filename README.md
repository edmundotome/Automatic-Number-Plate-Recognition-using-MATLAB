# Automatic-Number-Plate-Recognition-using-MATLAB

The objetive of the project is that applying a series of filters we can stand out important characteristics in a set of traffic images, where at the end of the implementation only the plate number of the cars is show.

The first image is a random picture taken in the middle of the traffic.

![Captura de pantalla (831)](https://user-images.githubusercontent.com/37748958/137852898-b600ba1a-2284-4059-a519-9b82d1540b70.png)

The second image is the original image in grayscale. In the project we don't need colors and working in only one color channel represents an easier processing.

![Captura de pantalla (832)](https://user-images.githubusercontent.com/37748958/137853605-d65d8cd3-ea13-4ac7-8e00-6bcd6f06ed8a.png)

In the third image a binarization is applied with the MATLAB function **imbinarize()** this will return us an image with only two colors (black and white), the level of binarization is a variable that we can change easily.

![Captura de pantalla (833)](https://user-images.githubusercontent.com/37748958/137853617-81c14afb-b4ac-444f-9fe8-48351139bf9e.png)

After this with the functions **boundingbox()** and **regionprops()** is possible to set the dimensions that we want to stand out and discard those elements that do not meet the desired requirements.

![Captura de pantalla (834)](https://user-images.githubusercontent.com/37748958/137853636-98f24519-af66-4a69-abef-c257abde2c74.png)

Finally the original image is shown with the highlighted number plate of each vehicle.

![Captura de pantalla (835)](https://user-images.githubusercontent.com/37748958/137853660-941379d4-de38-431a-921b-1daa0095a18f.png)


