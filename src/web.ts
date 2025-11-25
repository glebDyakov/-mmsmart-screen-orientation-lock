import { WebPlugin } from '@capacitor/core';

import type { OrientationPlugin } from './definitions';

export class OrientationWeb extends WebPlugin implements OrientationPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
