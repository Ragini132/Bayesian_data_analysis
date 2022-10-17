
%%%% FUNCTION HEADER EXAMPLE  %%%%
%%%% FUNCTION HEADER  %%%%
%
% Usage:
%           function y = myCOSINE(x)
%           
% Where:
%           x  = the value for which you have to compute cosine
%      
% Output: gives us the cosine value of the x variable
%
% Created By: 
%           RAGINI RANI
%           09/20/2022


function y = myCOSINE(x)
%Evaluate and sum the first n terms of the cosx Taylor Series
% loop variable is i
i=0;
% initial variable
sum_term=1.000;
% n= no. of terms in taylor series that is required for correct
% approximation I have taken it to be 7 i.e x^12 
n=6;
% In this for loop we are summing the terms of the taylor series
for i=1:n+1
    % calculating the individual terms of the taylor series
    term_value = ((-1).^i)*(x.^(2*i))/factorial(2*i);
    % taking decimal value till 3 places
    decimal_digits = 3;
    % taking the sum till 3 decimal places
    term_value = round(10^decimal_digits*term_value)/10^decimal_digits;
    % adding all the terms one by one to y
    sum_term = sum_term + term_value;
    % taking the sum till 3 decimal places
    sum_term = round(10^decimal_digits*sum_term)/10^decimal_digits;
end
% storing sum_term in y
y=sum_term;
end