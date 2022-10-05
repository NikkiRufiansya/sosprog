import * as dotenv from 'dotenv';
import { Injectable } from '@nestjs/common';
import { Sequelize } from 'sequelize-typescript';
import { User } from 'src/users/entities/user.entity';
dotenv.config;

@Injectable()
export class DatabaseProviders {}

export const databaseProviders = [
    {
      provide: 'SEQUELIZE',
      useFactory: async () => {
        const sequelize = new Sequelize({
          dialect: 'mysql',
          host: process.env.DB_HOST,
          port: Number(process.env.DB_PORT),
          username: process.env.DB_USER,
          password: process.env.DB_PASS,
          database: process.env.DB_NAME,
        });
        sequelize.addModels([User]);
        await sequelize.sync();
        return sequelize;
      },
    },
  ];
