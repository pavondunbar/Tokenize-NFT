Tokenize NFT

This repo consists of a smart contract that takes a $200,000 bottle of Macallan 78 Scotch Whiskey and tokenizes it on the blockchain.

1. Deploy both contracts (NFT (Macallan78N))and ERC20 (Macallan78T))

2. Run truffle console.

3. Go through the usual steps to get the methods for each contract.

4. IN THE NFT CONTRACT, MINT the NFT to the wallet address that deployed the contracts.

5. Add the NFT and Token contract addresses to deployer Metamask wallet. 

6. Run the NFT approve(address, uint256) function from the NFT owner (the deployer wallet address). Put the TOKEN contract address in the address parameter
and 1 in the uint256 field). This function gives the TOKEN contract address approval to convert NFT to tokens.

7. Run the TOKEN convertToTokens(uint256) function. Put the ID number of the NFT in the "uint256" parameter (normally 1).

The NFT will be converted to the ERC20 tokens you specified in the deployer.js migration file.

DISCLAIMER: The contracts in this repository have not been audited. Use at your own risk. It is highly recommended you audit these contracts with an independent third party auditing company if you plan to use these contracts in a production environment where real crypto will be traded. By using these contracts, you hold me harmless from any liability or loss of funds that may result from improper use or modifications of these contracts.
