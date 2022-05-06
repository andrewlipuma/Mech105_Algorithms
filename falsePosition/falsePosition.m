function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
iter = 0;
ea = 100;
if func(xl)*func(xu) < 0
    else error('Does not bracket')
end
if nargin < 4 || isempty(es)
    es = 0.0001;
end
if nargin < 5 || isempty(maxit)
    maxit = 200;
end
root = xl;
while es < ea && iter < maxit
    iter = iter + 1
    xg = root
    root = (xu - (func(xu)*(xl-xu))/(func(xl)-func(xu)))
    fx = func(root)
    if func(root) < 0 
        xg = xl;
        xl = root;
        ea = abs((root-xg)/root)*100
    elseif func(root) > 0
        xg = xu;
        xu = root;
        ea = abs((root-xg)/root)*100
    elseif func(root) == 0
        ea = 0
    break 
    end
end
end