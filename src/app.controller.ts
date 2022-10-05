import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('/hallo')
  getHellojuga(): string {
    return this.appService.getHellojuga();
  }
  @Get('/hi')
  getHi(): string {
    return 'Hi!';
  }
}
