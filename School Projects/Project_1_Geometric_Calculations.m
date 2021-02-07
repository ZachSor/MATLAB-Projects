%Function Name: Project_1_Geometric_Calculations
%
%Description: A function that acts as a multi-purpose calculator for
%different properties of geometric shapes
%
%Assumptions: None
%
%Inputs:
%The Indicator will use a double data type and there will be 4 numbers
%Each number is assigned to a different geometric formula
%1 is Area of a Rectangle
%2 is Volume of a Cylinder
%3 is Volume of a Pyramid
%4 is Volume of a Cone

function[result] = Project_1_Geometric_Calculations(var1,var2,indicator)
formula = indicator;

%Area of a Rectangle
if (formula == 1)
    lengthArea1 = abs(var1);
    lengthArea2 = abs(var2);
    Area = lengthArea1 * lengthArea2;
    result = Area;

    
%Volume of a Cylinder
elseif (formula == 2)
    lengthVolCyl = abs(var1);
    radiusVolCyl = abs(var2);
    Volume_of_Cylinder = lengthVolCyl*pi*(radiusVolCyl^2);
    result = Volume_of_Cylinder;


%Volume of a Pyramid   
elseif (formula == 3)
    lengthVolPyr = abs(var1);
    heightVolPyr = abs(var2);
    Volume_of_Pyramid = ((lengthVolPyr^2)*heightVolPyr)/3;
    result = Volume_of_Pyramid;

    

%Volume of a Cone
elseif (formula == 4)
    heightVolCon = abs(var1);
    radiusVolCon = abs(var2);
    Volume_of_Cone = pi*(radiusVolCon^2)*(heightVolCon/3);
    result = Volume_of_Cone;


%Statement if user calls for function with a non-associated indicator
%value
else
    result = "The indicator value that you have entered is not valid";

end