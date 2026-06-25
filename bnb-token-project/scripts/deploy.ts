import hre from "hardhat";

async function main() {
  const Token = await hre.ethers.getContractFactory("MyToken");

  const token = await Token.deploy();

  await token.waitForDeployment();

  console.log("Token deployed at:");
  console.log(await token.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});