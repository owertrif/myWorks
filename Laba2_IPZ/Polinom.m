function [plnm,res] = Polinom(w1,w2,c1,c2)
res = conv([1,2*c1*w1,w1^2],[1,2*c2*w2,w2^2]);
plnm = w1^2*w2^2;