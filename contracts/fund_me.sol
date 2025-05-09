// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract fund_me {
    function fund () public payable {
        require(msg.value>1e18, "did not send enough eth");
    }
    function getPrice () view public returns (uint256) {
        // address 
        

    }

    function convertUnit() public {

    }
    function getVersion() view public returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

}
