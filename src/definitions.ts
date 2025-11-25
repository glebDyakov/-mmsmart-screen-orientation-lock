export interface OrientationPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
