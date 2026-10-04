import { defineConfig } from 'vite';
import { resolve } from 'node:path';

export default defineConfig({
  base: './',
  server: { open: '/sudokuh.html' },   // opens the right page automatically
  build: {
    rollupOptions: {
      input: resolve(__dirname, 'sudokuh.html'),
    },
  },
});
