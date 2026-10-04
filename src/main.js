import './styles/fonts.css';
import './styles/variables.css';
import './styles/base.css';
import './styles/components.css';

import { renderScreen, startRouter } from './services/router.js';
import { HomeScreen } from './screens/home_screen.js';

renderScreen('home', HomeScreen);
startRouter();