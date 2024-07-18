pragma circom 2.1.8;

include "./node_modules/circomlib/circuits/poseidon.circom";

template SafePoseidon() {
    signal input in;
    signal output out;

    component phash = Poseidon(1);

    phash.inputs[0] <== in;
    phash.out ==> out;
}

component main = SafePoseidon();

