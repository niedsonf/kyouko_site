class CommandInfo {
  final String title;
  final String description;
  final String example;

  CommandInfo(this.title, this.description, this.example);
}

List<CommandInfo> admCommands = [
  CommandInfo('Clear', 'Clean n messages', '.clear <number of messages>'),
  CommandInfo('Mute', 'Mute someone for n seconds', '.mute @target <seconds>'),
];

List<CommandInfo> economyCommands = [
  CommandInfo(
      'Give', 'Give x amount of money to mentioned user', '.give @mention'),
];

List<CommandInfo> gamblingCommands = [
  CommandInfo('Dice', 'Bet money on dice roll, <1~3> Lose money <4~6> Earn money, 25%/50%/75%', 'dice 5000')
];

List<CommandInfo> profileCommands = [
  CommandInfo('Join', 'Sign up on our database and earn acess to exclusive commands', '.join'),
  CommandInfo('Perfil', 'Return user perfil our metioned user perfil', '.p <mentioned user?>'),
];

List<CommandInfo> mediaCommands = [
  CommandInfo('Waifu', 'Return a random picture/gif of Waifus', '.waifu'),
  CommandInfo('Dog', 'Return a random picture/gif of dogs', '.dog'),
  CommandInfo('Cat', 'Return a random picture/gif of cats', '.cat'),
];

List<CommandInfo> rewardCommands = [
  CommandInfo('Daily Reward', 'Get daily money', '.daily'),
  CommandInfo('Weekly Reward', 'Get weekly money', '.weekly'),
];
