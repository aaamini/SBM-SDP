function [Asorted,I] = sort_symAdj_rel_labels(A,label)

if label
    [~,I] = sort(label);
else
    I = 1:size(A,1);
end


Asorted = A(I,I);