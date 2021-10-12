# RuneTrack

RuneTrack is an iOS app that calls HiScore data from RuneScape and tracks experience gains over time.

## Installation

No Installation is currently available, to run download the project and run it through the Xcode simulator


## Usage

TBD

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Docs

### index_lite
returns a player's rank, level and experience or score in an activity. The URL for index_lite is `https://secure.runescape.com/m=hiscore/index_lite.ws?player=X` where `X` is the player's name.

**returns** [rank:int, level:int, experience:int]

#### The skills in order are:

```Overall, Attack, Defence, Strength, Constitution, Ranged, Prayer, Magic, Cooking, Woodcutting, Fletching, Fishing, Firemaking, Crafting, Smithing, Mining, Herblore, Agility, Thieving, Slayer, Farming, Runecrafting, Hunter, Construction, Summoning, Dungeoneering, Divination, Invention, Archaeology.```

#### Followed by activities:

```Bounty Hunter, B.H. Rogues, Dominion Tower, The Crucible, Castle Wars games, B.A. Attackers, B.A. Defenders, B.A. Collectors, B.A. Healers, Duel Tournament, Mobilising Armies, Conquest, Fist of Guthix, GG: Athletics, GG: Resource Race, WE2: Armadyl Lifetime Contribution, WE2: Bandos Lifetime Contribution, WE2: Armadyl PvP kills, WE2: Bandos PvP kills, Heist Guard Level, Heist Robber Level, CFP: 5 game average, AF15: Cow Tipping, AF15: Rats killed after the miniquest, RuneScore, Clue Scrolls Easy, Clue Scrolls Medium, Clue Scrolls Hard, Clue Scrolls Elite, Clue Scrolls Master```

### members_lite.ws

returns a CSV file with a list of clan members, their rank in the clan, their total experience and total kills. 

The URL for members_lite.ws is `http://services.runescape.com/m=clan-hiscores/members_lite.ws?clanName=X` where `X` is the name of the clan. 

The list is sorted by clan ranking starting with Owner and ending with Recruit.





## License
