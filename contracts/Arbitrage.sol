//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@balancer-labs/v2-interfaces/contracts/vault/IValut.sol";
import "@balancer-labs/v2-interfaces/contracts/vault/IFlashLoanRecipient.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract Arbitrage is IFlashLoanRecipient{
    IVault private constant vault =
    IVault("");

    IUniswapV2Router02 public immutable sRouter;
    IUniswapV2Router02 public immutable uRouter;
    address public owner;

    constructor(address _sRouter, address _uRouter) {
        sRouter = IUniswapV2Router(_sRouter); //Sushiswap
        uRouter = IUniswapV2Router(_uRouter); //Uniswap
        owner = msg.sender;
    }

    function executeTrade() external {
    //Code for executing Trades
    }

    function receiveFlashLoan() external override {
        //Code for receiving flashloan
    }

// -- INTERNAL FUNCTIONS -- //
    function _swapOnUniswap() internal require {
        //Code for swapping on uniswap
    }

    function _swapOnSushiswap() internal require {
        //Code for swapping on sushiswap
    }   
}
