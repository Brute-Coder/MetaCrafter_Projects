const { ethers } = require("hardhat");

async function main() {
  const MyNFT = await ethers.getContractFactory("Brute_NFT");
  const myNFT = await MyNFT.attach("0x334B909e3beebB2c95D28e22b46d2853E822CE2D");

  // Generate an array of recipient addresses
  const recipient = "0x7c8aDc3d3C8a0a73CfbB77fD3D214824Ff114013";
   
    
 

  // Generate an array of token URIs corresponding to the recipients
  const tokenURIs = [
    "ipfs://QmWyPuUcbtXS1k5EnVVRCJPpxNE9PDn7yCpuCAGM8TMYhQ",
    "ipfs://QmVcYmLXXHJJRnJ3cdfN5kPzd7BfhkoyDeaye3gBWFysuF",
    "ipfs://Qmak9swJXVmyke2sSNx6LTg3wb5UKT92qGAVeCTMvf1E6o",
    "ipfs://QmWzEoVdcvcwzzLrvVUejUYBbJTdyJ1gmukNDtEbDTv3md",
    "ipfs://QmbGeYacPzacJjFukm4efcqYacoCTWdKQ2iVGGjvtzfSbJ",
    // Add more token URIs as needed
  ];

  // Batch mint NFTs
  const batchMint = await myNFT.batchMint(recipient, tokenURIs);

  // Wait for the transaction to be mined
  await batchMint.wait();

  console.log("You have successfully minted NFTS");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
