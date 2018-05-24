Transformer
================

This application is the exchange gateway for NENT project.  It allows Qtum backed QRC20 compatible token ENT holder to redeem ERC20 token NENT on Ethereum blockchain.

User will need to use Qtum wallet to generate a signed message with message to be user's Ethereum address.  Transformer servie will collect the signed messages and make it available for transformer workers.  Each worker will verify the signed message and mint/send ERC20 NENT token to designated Ethereum address of the user.

Worker
------

Worker will share the same codebase.

TODO: deployment guide


Step 1: Load Snapshot data into transformer site and each worker