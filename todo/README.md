# TODO – git todo finder 
Looks through the repository for TODOs, lists them along side information 
about when, in what commit and by who they were added so one can ask them
for clarifications if needed.

## Usage
You'd invoke the `todo` command in the directory of a git repository.
You may also pipe the result to your `$PAGER` i.e. `more` or `less` if you need
to scroll or search the results.

Example usage:
```sh
$ cd <git-repository>
$ todo

src/coffe/pour.py:20
- Alexander Hultnér 2017-11-15 15:44:38 +0100 @ deadbeef 
# TODO: Ensure throw exception if coffee isn't sufficient temperature

src/coffe/gc.py:19
- Alexander Hultnér 2017-11-02 14:56:37 +0100 @ b4dc0ffe 
# TODO: Grabage collector should purge coffee once it drops below 70°C or 155°F 

tests/back_office/coffe_machine.py:42
- Alexander Hultnér 2017-11-17 11:58:58 +0100 @ dec0ffee 
# TODO: There's no test actually testing temperature of coffee in the machine 

```

## Installation
Put the todo binary somewhere in your path i.e.

Global
```sh
sudo cp todo /usr/local/bin
```

Local
```sh
cp todo $HOME/bin
```

