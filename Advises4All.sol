pragma solidity ^0.4.0;
contract Advice4All {
    uint32 index;
    
    struct Advice {
        address analyst;
        string content;
    }

    Advice[] advices;

    function Advice4All() {
    }

    function getAnalyst(uint32 index) returns (address, bool) {
        if (index >= advices.length) {
            return (0, false);
        }
        return (advices[index].analyst, true);
    }
    
    function getAdvice(uint32 index) returns(string, bool) {
        if (index >= advices.length) {
            return ("", false);
        }
        return (advices[index].content, true);
    }
    
    function addAdvice(string advice) {
        advices.push(Advice(msg.sender, advice));
    }
}
