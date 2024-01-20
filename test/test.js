import { expect } from 'chai';

describe("MyContract", function () {
    it("should return correct name", async function () {
        const MyContract = await hre.ethers.getContractFactory("MyContract");
        const myContractDeployed = await MyContract.deploy("MyContractName", "MCN");
        await myContractDeployed.deployed();
        expect(await myContractDeployed.name()).to.equal("MyContractName");
    })
})