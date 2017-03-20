function [LL] = MYloglikHMM( HMM, data )
% trainHMM
%
%  inputs:
%          HMM       : the HMM in which to compute the likelihood
%          data(d,n) : Matrix, d by n.
%
%     outputs:
%          LL           : the log likelihood of the data given the HMM

Pi  = CPD_to_CPT( hmm.CPD{1} );  % prior probability of the states
A  = CPD_to_CPT( hmm.CPD{4} );  % transition probabilities (from row to column)

W = CPD_to_CPT( hmm.CPD{2} );  % (r,c) = weight of r^th state's q^th Gaussian

Mu = get_field( hmm.CPD{3}, 'mean'); % (i,j,k) matrix where (:,j,k) is the
                                     % mean vector for the j^th state's
                                     % k^th Gaussian
Cov = get_field( hmm.CPD{3}, 'cov'); % (i,j,k,l) matrix where (:,:,j,k) is the
                                     % covariance matrix for the j^th
                                     % state's k^th Gaussian
                                     
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% YOUR CODE GOES HERE
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



return
