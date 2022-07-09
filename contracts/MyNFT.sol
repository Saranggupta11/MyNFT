//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage,Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokedId;

    constructor() ERC721("Sarang's NFT","SGAvi"){  
    }

    function mintNFT(address recipient,string memory tokenURI) public onlyOwner returns(uint256){
        _tokedId.increment();
        uint256 newId=_tokedId.current();
        _mint(recipient,newId);
        _setTokenURI(newId,tokenURI);

        return newId;
    }
}