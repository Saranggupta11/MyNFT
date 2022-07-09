async function main() {
  const MyNFT = await ethers.getContractFactory("MyNFT");

  const myNFT = await MyNFT.deploy();
  console.log("Contract deployed to address:", myNFT.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });


//0x83C27A551e979A105718EC61c3816af3e6444F99  