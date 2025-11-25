import { registerPlugin } from '@capacitor/core';

import type { OrientationPlugin } from './definitions';

const Orientation = registerPlugin<OrientationPlugin>('Orientation', {
  web: () => import('./web').then((m) => new m.OrientationWeb()),
});

export * from './definitions';
export { Orientation };
