// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22<0.9.0;

contract TicketNFT {
  uint256[] private tokensIds;
  mapping(uint256 => string) private _tokenURIs;
  
  function createTokenURI(string memory _tokenURI) public returns(uint256, string memory) {
    uint256 currentTokenId = tokensIds.length;
    setTokenURI(currentTokenId, _tokenURI);
    tokensIds.push(currentTokenId++);
    return (currentTokenId, _tokenURI);
  }

  function setTokenURI(uint256 tokenId, string memory _tokenURI) public {
    _tokenURIs[tokenId] = _tokenURI;
  }

  function getTokenURI(uint256 tokenId) public view returns(string memory) {
    string memory _tokenURI = _tokenURIs[tokenId];
    return _tokenURI;
  }
}