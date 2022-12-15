const Macallan78N = artifacts.require("./Macallan78N");
const Macallan78T = artifacts.require("./Macallan78T");

module.exports = async function (deployer) {
    const IPFS_IMAGE_METADATA_URI = 'https://gateway.pinata.cloud/ipfs/QmeAwqW5p3jPd5sqYnjxePzUTcRJJsC9Ss7QXvbfVF9Uth/'

    // Deploy NFT collection first...

    await deployer.deploy(
        Macallan78N,
        "Macallan78 Rare Scotch Whiskey 750mL",
        "MAC78N",
        IPFS_IMAGE_METADATA_URI,
    )

    // Once deployed, grab the address, and deploy the ERC20 vault...

    const nft = await Macallan78N.deployed()

    await deployer.deploy(
        Macallan78T,
        "Macallan78 Token",
        "MAC78T",
        nft.address,
        2150,
    )
};
