// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts-upgradeable/finance/VestingWalletUpgradeable.sol";

/** 
    @title Base implementation of vesting contract that will be cloned into individual vesting wallets pointing at specific beneficiary addresses.
*/
contract ArrowVestingBase is VestingWalletUpgradeable {
    constructor() initializer {}

    function initialize(
        address beneficiaryAddress,
        uint64 startTimestamp,
        uint64 durationSeconds
    ) public initializer {
        __VestingWallet_init(
            beneficiaryAddress,
            startTimestamp,
            durationSeconds
        );
    }
}
