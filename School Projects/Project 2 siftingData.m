function [siftedData,siftedMean,siftedStd,siftedNorm] = siftingData(rawData,Categories,selectedCategory)
%Defining some variables
k = 1;
initialLength = length(rawData);

%Preallocating 
siftedData = zeros(1,initialLength);
siftedCategories = zeros(1,initialLength);

%if something isn't right
if (length(rawData) > length(Categories)) || (length(rawData) < length(Categories))
    siftedData = "Missing indecies in one of the array inputs";
    siftedMean = "Missing indecies in one of the array inputs"; 
    siftedStd =  "Missing indecies in one of the array inputs";
    siftedNorm = "Missing indecies in one of the array inputs";

else
    %Getting data specified by category
    for i = 1:initialLength
        [newData,index]  = sort(rawData);
        newCategories = Categories(index);

        for i = 1:initialLength
            if selectedCategory == newCategories(i)
                siftedCategories(i) = newCategories(i);
                siftedData(i) = newData(i);
            end
        end
    end

    %This removes the zeros that are in the siftedData
    while k <= length(siftedData)
        if (siftedData(k) == 0)   
            siftedData(k) = [];
        else
            k = k+1;
        end
    end

    %Calculating mean for siftedData
    siftedMean = mean(siftedData);

    %Calculating standard deviation for siftedData
    siftedStd = std(siftedData);

    %Calculating normal for siftedData
    siftedNorm =  zeros(1,length(siftedData));
    for g = 1:length(siftedData)
        siftedNorm(g)= ((siftedData(g)-siftedMean)/siftedStd);
    end
end

end
