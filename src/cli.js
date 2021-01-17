import readlineSync from 'readline-sync';

export function askName() {
  return readlineSync.question('May I have your name? ');
}
