# hubot-wow-token

Get the wow token prices for each region

See [`src/wow-token.coffee`](src/wow-token.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-wow-token --save`

Then add **hubot-wow-token** to your `external-scripts.json`:

```json
["hubot-wow-token"]
```

## Sample Interaction

Regions: EU NA CN TW KR

```
user1>> wowtoken EU
hubot>> wow token price in EU: 100,000g
```

[![dependencies Status](https://david-dm.org/hashashin/hubot-wow-token/status.svg)](https://david-dm.org/hashashin/hubot-wow-token) [![devDependencies Status](https://david-dm.org/hashashin/hubot-wow-token/dev-status.svg)](https://david-dm.org/hashashin/hubot-wow-token?type=dev)
