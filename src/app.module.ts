import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { KomenModule } from './komen/komen.module';

@Module({
  imports: [UsersModule, KomenModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
