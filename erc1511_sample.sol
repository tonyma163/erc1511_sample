// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//author: tony ma 2022/08/05

contract TokenName is ERC1155, Ownable {

    //nft variables
    uint256 public mintPrice = 0.001 ether;
    uint256[] public mintedNFT = [0,0]; //record the mintedNum
    uint256[] public nftMaxSupply = [5,5]; //initialize the maxSupply of each nfts

    constructor() ERC1155("") {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        payable
    {
        //requirements
        require(id>=0, "NFT-NOT-EXIST");
        require(id<=1, "NFT-NOT-EXIST.");

        require(mintedNFT[id] < nftMaxSupply[id], "OUT-OF-STOCK.");

        require(amount==1, "AMOUNT-ERROR.");

        require(msg.value >= mintPrice, "NOT-ENOUGH-BNB.");

        //mint
        _mint(account, id, amount, data);

        //update records
        mintedNFT[id] = mintedNFT[id]+1;
    }

}