//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@balancer-labs/v2-interfaces/contracts/vault/IValut.sol";
import "@balancer-labs/v2-interfaces/contracts/vault/IFlashLoanRecipient.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract Arbitrage is IFlashLoanRecipient{
    IVault private constant vault =
    IVault("0xBA12222222228d8Ba445958a75a0704d566BF2C8");

    IUniswapV2Router02 public immutable sRouter;
    IUniswapV2Router02 public immutable uRouter;
    address public owner;

    constructor(address _sRouter, address _uRouter) {
        sRouter = IUniswapV2Router(_sRouter); //Sushiswap
        uRouter = IUniswapV2Router(_uRouter); //Uniswap
        owner = msg.sender;
    }

    function executeTrade(
        bool _startOnUniswap
        address _token0
        address _token1
        uint256 _flashAmount
    ) external {
        bytes memory data = abi.encode(_startOnUniswap, _token0, _token1);
        //Code for executing Trades

        // Token to flash loan, by default we are flash loaning 1 token

        // Flash loan amount.
    }

    function receiveFlashLoan(
        IERC20[] memory tokens,
        uint256[] memory amounts,
        uint256[] memory feeAmounts,
        bytes memory userData
    ) external override {
        require(msg.sender == address(vault));
        uint256 flashAmount = amounts[0];
        (bool startOnUniswap, address, token0, address token1) = abi.decode(
            userData, 
                (bool, address, address)
        );
        // Use the money here!
        address[] memory path = new address[](2);

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
