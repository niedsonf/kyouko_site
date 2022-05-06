import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/commands.dart';
import 'package:kyouko_site/pages/commands/widgets/command_type_bar.dart';
import 'package:kyouko_site/pages/commands/widgets/commands_grid.dart';

class CommandsPage extends StatefulWidget {
  const CommandsPage({Key? key}) : super(key: key);

  @override
  State<CommandsPage> createState() => _CommandsPageState();
}

class _CommandsPageState extends State<CommandsPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        TypeBar(commandType: 'Administration Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: admCommands),
            padding: EdgeInsets.all(15)),
        TypeBar(commandType: 'Profile Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: profileCommands),
            padding: EdgeInsets.all(15)),
        TypeBar(commandType: 'Economy Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: economyCommands),
            padding: EdgeInsets.all(15)),
        TypeBar(commandType: 'Reward Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: rewardCommands),
            padding: EdgeInsets.all(15)),
        TypeBar(commandType: 'Gambling Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: gamblingCommands),
            padding: EdgeInsets.all(15)),
        TypeBar(commandType: 'Media Commands'),
        SliverPadding(
            sliver: CommandsGrid(commandsInfoList: mediaCommands),
            padding: EdgeInsets.all(15)),
      ],
    );
  }
}
