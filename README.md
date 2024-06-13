# NonlocalityDIRandomness-Theorem3-MATLAB
MATLAB implementation of the proof for Theorem 3 in the paper 'Maximum Quantum Non-Locality is not always Sufficient for Device-Independent Randomness Generation'

1. Deterministic3232.m is used to generate all local deterministic points for the (3,2;3,2) Bell scenario.
2. ParticalDeterministicNS3232.m is used to generate all partially deterministic no-signaling extreme points (excluding any local deterministic points).
3. ParticalDeterministicFacet3232.m is used to calculate the intersection (POLY) of all partially deterministic polytopes POLY11,POLY12,...,POLY33.
4. 
   4.1 In CHSH.m, we maximize the CHSH expression under 1. no-signaling conditions; 2.normalization conditions; 3.facet inequalities of POLY.
   4.2 In I3322.m, we maximize the I3322 expression under 1. no-signaling conditions; 2.normalization conditions; 3.facet inequalities of POLY.
