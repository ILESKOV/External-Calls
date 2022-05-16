# External-Calls
How to do safely external calls

Use delegatecall to run function in native contract scope
Use contractB.runFunction() to simple run function in B contract scope


Instead of force pushing that transfer it's way better to this person to pull out funds themselves
- Sending ether back to all the participants could run out of gas.
- Sending ether to unknown addresses could lead to security vulnerabilities.
You should not generally push funds automatically. And also you should avoid to have a lot of logic in one function

https://medium.com/noblocknoparty/a-smartcontract-best-practice-push-pull-or-give-b2e8428e032a
