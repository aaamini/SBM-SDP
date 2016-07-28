% If you don't have mmread, download from here:
% http://math.nist.gov/MatrixMarket/mmio/matlab/mmread.m
A = mmread('polGraph.mm');  % load political blog network
n = size(A,1);

N = 400;
temp = randperm(n); % Generate a random sample of size N out of n
idx = temp(1:N); 
As = A(idx,idx); % Take the corresponding random submatrix of A

%%
K = 4;
opts = struct('rho',.1,'T',10000,'tol',1e-2,'report_interval',50);
t0=tic; [X,delta,T_term] = sdp_admm1(As,K,opts); toc(t0)

%%
e = labelsFromX(X,K); % Get the labels from X

%%
figure(1), clf
subplot(131), spy(As)
subplot(132), imagesc(X)
subplot(133), spy(sort_symAdj_rel_labels(As,e))

 