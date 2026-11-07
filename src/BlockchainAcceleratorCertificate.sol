// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
    import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

    import "../lib/openzeppelin-contracts/contracts/utils/Strings.sol";

contract BlockchainAcceleratorCertificate is ERC721 {

    uint256 public tokenCounter;
    string public baseUri = "ipfs://bafkreicxp4h46j4rzl44ccyblvtbkqm2lq3wae4eyw2itss3srmtknyx4m";

    constructor() ERC721("Blockchain Accelerator Certificate", "BAC") {}

    event CertificateMinted(address indexed user, uint256 indexed certificateId);

    function mintBAC() public {
        uint256 mintId = tokenCounter;
        _mint(msg.sender, mintId);
        tokenCounter++;

        emit CertificateMinted(msg.sender, mintId);
    }

    function tokenURI(uint256 tokenId) public view override virtual returns (string memory) {
        _requireOwned(tokenId);
        string memory baseURI = _baseURI();
        return baseURI;
    }

    function _baseURI() internal view override virtual returns (string memory) {
        return baseUri;
    }

}

