import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 's') {
        playerMove = Move.scissors;
      } else {
        playerMove = Move.paper;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You Player : $playerMove');
      print('AiMove : $aiMove');
      if (playerMove == aiMove) {
        print('its a  Draw');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.scissors && aiMove == Move.paper ||
          playerMove == Move.paper && aiMove == Move.rock) {
        print('You win');
      } else {
        print('You lose');
      }
      print('You Selected $input');
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Selection');
    }
  }
}
