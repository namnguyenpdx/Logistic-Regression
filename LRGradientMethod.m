clc;
clear all;
A=load('Data.txt'); %Read the dataset to a matrix
A=A';
X=A(:,1);
y=A(:,2);
m=size(A,1); %The number of data points
O=ones(m,1);%Add ones to the third colums
X=[X O];%The extended matrix
w=[0 0]';%The starting point
N=5000;%The number of iterations

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   THE GRADIENT METHOD ITERATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:N
    grad=0;
    for t=1:m
    z=1/(1+exp(-X(t,:)*w));
     grad=grad+(z-y(t))*X(t,:)';
           end
    w=w-0.01*grad;
end
w
%==============================================================================

A=load('Data.txt'); %Read the dataset to a matrix
A=A';
X=A(:,1);
y=A(:,2);
m=size(A,1); %The number of data points
O=ones(m,1);%Add ones to the third colums
X=[X O];%The extended matrix
w=[0 0]';%The starting point
N=10;%The number of iterations

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   THE NEWTON METHOD ITERATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:N
    grad=0;
    H=zeros(2,2);
    for t=1:m
     z=1/(1+exp(-X(t,:)*w));
     grad=grad+(z-y(t))*X(t,:)';
     H=H+z*(1-z)*X(t,:)'*X(t,:);
    end
     w=w-pinv(H)*grad;
    end
w








        
        