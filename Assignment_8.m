%This script reads data from xlsx file 'Section9_data (1)' and sums scores
%for each student.

%{Ben Hagenau, SID: 105932529, CSCI 1320, Assignment 4, Section: 302%}
%{Last edited: 2/16/16%}

clc; clear all; 
%extract file information
[txt,char,final]=xlsread('Section9_data (1)');
%sum multiple choice scores
for r=3:103 %select SID
    final{r,4}=0;
    for c=7:23 %select question 
        if final{r,c}==final{2,c};
           final{r,4}=final{r,4}+1;
        else 
            final{r,4}=final{r,4}+0;
        end
    end
end
%determine final score
for r=3:103
    final{r,3}=final{r,4}*5 + final{r,5};
end
%create histogram of final scores
y=cell2mat(final((3:103),3));
figure
histogram(y,20)

%extra credit: determine number of students with A's, B's, C's, D's, and
%F's. Then graph the data on a pi chart.

%Find the number of people who recieved each letter grade.
A=sum(numel(find(y>=90)));
B=sum(numel(find(y<90 & y>=80)));
C=sum(numel(find(y<80 & y>=70)));
D=sum(numel(find(y<70 & y>=60)));
F=sum(numel(find(y<60 & y>=0)));
%make vector that is to be graphed.
grade=[A B C D F];
%Graph and label as pi chart.
figure
pie(grade, {'A', 'B', 'C', 'D', 'F'})
