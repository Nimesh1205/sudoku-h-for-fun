import { navigate } from "../services/router";

export function HomeScreen() {
  const elm = document.createElement('main');
  elm.className = 'home-screen';
  elm.innerHTML = `
    <h1 class="heading1" id="main_heading">Build Your Focus.</h1>
    <h1 class="heading1" id="sub_heading">Build Yourself.</h1>
    <p>Challenge your brain, one grid at a time.</p>
    <button class="Btn" id="play">New Game</button>`;
  elm.querySelector('#play').addEventListener('click', () => navigate('game'));
  return elm;
}