function [dis1,dis2] = Disc(f_sample,plnm,res)
[dis1,dis2] = impinvar(plnm,res,f_sample);%переклад аналогового фільтра в цифровий