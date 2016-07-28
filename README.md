# SBM-SDP

This is the ADMM implementation of a semidefinite programming approach to fitting the stochastic block model (SBM). This provides a robust method of fitting assortative communities. For specifics, see SDP-1 in https://arxiv.org/abs/1406.5647

Run `test_sdp_polNet.m` to test the SDP on the political blog network. (Data is in `polGraph.mm`.)

The content of the `common` folder should be on MATLAB's path. For example, run `addpath('common/')`. The `mmread.m` provided here is from [here](http://math.nist.gov/MatrixMarket/mmio/matlab/mmread.m). 