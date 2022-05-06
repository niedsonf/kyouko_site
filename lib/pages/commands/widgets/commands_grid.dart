import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/commands.dart';
import 'package:kyouko_site/pages/commands/widgets/command_tile.dart';

class CommandsGrid extends StatelessWidget {
  final List<CommandInfo> commandsInfoList;
  CommandsGrid({Key? key, required this.commandsInfoList}) : super(key: key);

  List<CommandTile> getCommandsTiles() => commandsInfoList
      .map((item) => CommandTile(
          title: item.title,
          description: item.description,
          example: item.example,
          onTap: () {}))
      .toList();

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        ),
      delegate: SliverChildListDelegate([...getCommandsTiles()])
    );
  }
}
