function [waveImage] = Project3 (dims, fred, fgreen, fblue, pred, pgreen, pblue) 

waveImage = uint8(zeros (dims, dims, 3)); 


for i = 1:dims 

    waveImage (:, i, 1) = 255* abs(sin(((i*fred)/100)+ pred));

    waveImage (:, i, 2) = 255* abs(sin(((i*fgreen)/100) + pgreen));

    waveImage (:, i, 3) = 255* abs(sin(((i*fblue)/100) + pblue)); 

end 