%This function creates a matrix that saves the locations you have alread
%uncovered. Top and right rims are NaN
function s=selected()
s=zeros(8);
s(1,:)=NaN;
s(:,1)=NaN;
end