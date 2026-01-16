// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MiPrimerToken.sol";

contract MiPrimerTokenTest is Test {
    MiPrimerToken token;
    address user1 = address(1);
    address user2 = address(2);

    function setUp() public {
        token = new MiPrimerToken();
    }

    function test_SuministroInicial() public {
        uint256 total = token.totalSupply();
        assertEq(total, 1_000_000 * 10**token.decimals());
        assertEq(token.balanceOf(address(this)), total);
    }

    function test_Transfer() public {
        token.transfer(user1, 100 * 10**token.decimals());
        assertEq(token.balanceOf(user1), 100 * 10**token.decimals());
    }

    //function test_TransferInvalida() public {
    //    vm.expectRevert();
    //    token.transfer(user1, (1_000_000 * 10**token.decimals()) + 1);
    //}

function test_ApproveYTransferFrom() public {
    uint256 amount = 100 * 10**token.decimals();

    // El contrato de test (address(this)) tiene todo el suministro inicial.
    uint256 balanceInicial = token.balanceOf(address(this));
    assertEq(balanceInicial, 1_000_000 * 10**token.decimals());

    // Aprobar a user1 para gastar 'amount' desde address(this)
    token.approve(user1, amount);
    assertEq(token.allowance(address(this), user1), amount);

    // user1 llama transferFrom
    vm.prank(user1);
    token.transferFrom(address(this), user2, amount);

    // Comprobar balances y allowance
    assertEq(token.balanceOf(user2), amount);
    assertEq(token.balanceOf(address(this)), balanceInicial - amount);
    assertEq(token.allowance(address(this), user1), 0);
}

}

