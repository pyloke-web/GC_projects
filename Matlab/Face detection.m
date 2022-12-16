web = webcam();
A = snapshot(web);
alg = vision.CascadeObjectDetector();
imshow(A);
 
while true
    A = snapshot(web);
    A2 = rgb2gray(A);
    bbox = step(alg,A2);
    pic = insertObjectAnnotation(A,'rectangle',bbox,'Face');
    imshow(pic);
end
