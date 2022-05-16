# External-Calls
How to do safely external calls

Use delegatecall to run function in native contract scope
Use contractB.runFunction() to simple run function in B contract scope


Instead of force pushing that transfer it's way better to this person to pull out funds themselves
- Sending ether back to all the participants could run out of gas.
- Sending ether to unknown addresses could lead to security vulnerabilities.

You should not generally push funds automatically. And also you should avoid to have a lot of logic in one function

External calls can fail accidentally or deliberately. To minimize the damage caused by such failures, it is often better to isolate each external call into its own transaction that can be initiated by the recipient of the call. This is especially relevant for payments, where it is better to let users withdraw funds rather than push funds to them automatically. (This also reduces the chance of problems with the gas limit.) Avoid combining multiple send() calls in a single transaction.

https://medium.com/noblocknoparty/a-smartcontract-best-practice-push-pull-or-give-b2e8428e032a
