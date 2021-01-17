function f= feature_extract(im)
%% scale 1:
    [RO, GM, RM]=FGr(im);% compute the RO RM and GM map

    f1=VarInformation(GM, 2);% compute the statistics variance of GM

    f2=VarInformation(RO, 1);% compute the statistics variance of RO
    
    f3=VarInformation(RM, 2);% compute the statistics variance of RM

%% scale 2:
    im2=imresize(im,0.5);
    [RO2, GM2, RM2]=FGr(im2);% compute the RO RM and GM map in size 2

    f4=VarInformation(GM2, 2);% compute the statistics variance of GM in size 2
        
    f5=VarInformation(RO2, 1);% compute the statistics variance of RO in size 2
    
    f6=VarInformation(RM2, 2);% compute the statistics variance of RM in size 2

%% feature
    f=[f1, f2, f3, f4, f5, f6];
end