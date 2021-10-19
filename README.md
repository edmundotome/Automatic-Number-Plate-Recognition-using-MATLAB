#Automatic-Number-Plate-Recognition-using-MATLAB

The objetive of the project is that applying a series of filters we can stand out important characteristics in a set of traffic images, where at the end of the implementation only the plate number of the cars is show.

The first image is a random picture taken in the middle of the traffic.

The second image is the original image in grayscale. In the project we don't need colors and working in only one color channel represents an easier processing.

In the third image a binarization is applied with the MATLAB function **imbinarize()** this will return us an image with only two colors (black and white), the level of binarization is a variable that we can change easily.

After this with the functions **boundingbox()** and **regionprops()** is possible to set the dimensions that we want to stand out.

Finally the original image is shown with the highlighted number plate of each vehicle.
