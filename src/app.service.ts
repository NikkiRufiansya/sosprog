import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  getHellojuga(): string {
    return 'Biar ada kontribusi ku';
  }
}
