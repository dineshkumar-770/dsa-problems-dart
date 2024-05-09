import 'dart:math';

class RockPaperSissor {
  playRPC(String player) {
    List<String> computerResponse = ["R", "P", "S"];
    String com = computerResponse[Random().nextInt(3)];

    final result = _getResult(player, com);
    print(result);
  }

  String _getResult(String player, String computer) {
    if (player == "R" && computer == "P") {
      return "Computer Wins";
    } else if (player == "R" && computer == "S") {
      return "Player Wins";
    } else if (player == "S" && computer == "P") {
      return "Player Wins";
    } else {
      return "Draw!!";
    }
  }
}
