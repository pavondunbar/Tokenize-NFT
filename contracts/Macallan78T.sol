// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Macallan78N.sol";

// This contract is essentially a vault that keeps the NFT token, and distributes ERC20 in return

contract Macallan78T is ERC20, Ownable {
    address public nftAddress;
    uint256 public supplyPerNFT;

    constructor(string memory _name, string memory _symbol, address _nftAddress, uint256 _supplyPerNFT) ERC20(_name, _symbol) {
        supplyPerNFT = _supplyPerNFT;
        nftAddress = _nftAddress;
    }

    function decimals() public view virtual override returns (uint8){
        return 0;
    }

    function convertToTokens(uint256 _tokenId) public {
        Macallan78N(nftAddress).transferFrom(msg.sender, address(this), _tokenId);
        _mint(msg.sender, supplyPerNFT);
    }
}
