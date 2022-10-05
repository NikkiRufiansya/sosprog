import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { LocalStrategyController } from './local.strategy/local.strategy.controller';

@Module({
  providers: [AuthService],
  controllers: [AuthController, LocalStrategyController]
})
export class AuthModule {}
