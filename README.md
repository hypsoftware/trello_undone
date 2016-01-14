# trello_undone

## Description

This script lets you print to a file all the Trello tasks you haven't done yet.

### Pre-requisites
 Your trello boards should be organized in a way that all the done tasks are moved to a card list with the name "Done". In the future the script will allow for other methods of done cards.

## Instalation
 Install the [ruby_trello gem](https://github.com/jeremytregunna/ruby-trello).
 ```
  gem install ruby-trello
 ```

 Download the trello_undone.rb script into a folder of your choosing.


## Usage

Navigate to the directory of the script and run

```
 ruby trello_undone.rb
```
You will be prompted to insert all the informations needed to run this Script.

If you do not want to insert this data everytime you run the script you can change it in the .rb code.

Grab the values for the api key and the api token as instructed the first time you run the script and change the **nil** values on lines 4 and 5 respectively.

```ruby
api_key = nil
api_token = nil
```

You can also save your username for different script runs. Just add it on line 9.

```ruby
user = 'username'
```

To save the boards names you want to monitor just fill the **board_names** array on line 7.
Example:
```ruby
board_names = ["board1", "board2", "board3"]
```

[WIP] Saving the output to a file placed in the same folder as the script.

> **NOTE:** The script may take a while to run as its time complexity is high. The performance issue is on the TODO list.

## TODO
* Performance Upgrades.
* Better way of inserting
* Filtering by Organizations.
* Blacklisting Boards.
* Support for different methods of "Done" tasks.
