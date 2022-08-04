# erc1511_sample
a erc1511 sample. could be deployed on all EVM-compatible blockchains. (bsc, polygon, ...).

The sample erc1511 smart contract has 2 tokens(nfts) inside.
You can add the mintedNFT and nftMaxSupply array to have more (remember to modify the mint function require part as well).
The initialize mint price is 0.001 ether. If you want each tokens(nfts) has a unique mint price, you can change the variable type to a uint256 array like the mintedNFT and nftMaxSupply.
The minted amount limit is 1 which means every transaction allows to mint 1 token(nft). Also you could change it the amount in the mint function part.
After the nft minted, the mintedNFT will automatically update the minted amount.

# smart contract variables
mint price = 0.001 ether
mintedNFT = [0,0] //record the minted nft number
nftMaxSupply = [5,5] //initialize the nfts maxSupplies

enjoy :)
Tony Ma 2022/08/05
