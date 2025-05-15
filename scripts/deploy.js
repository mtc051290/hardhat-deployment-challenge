async function main() {
    const Governance = await ethers.getContractFactory("Governance");
    const governance = await Governance.deploy();
    await governance.deployed();
    console.log("Contract deployed to:", governance.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
