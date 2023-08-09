require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config()

const privateKey = process.env.PRVIATE_KEY || ""

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  networks: {
    hardhat: {
      forking: {
        url: `https://eth-mainnet.g.alchemy.com/v2/${process.env.ALCHEMY_API_KEY}`,
      }
    }
  }
};
