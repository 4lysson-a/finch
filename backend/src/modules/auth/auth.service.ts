import { Injectable, UnauthorizedException } from '@nestjs/common';
import { AuthDto } from './dto/auth.dto';
import { UsersRepository } from 'src/shared/database/repositories/users.repositories';
import { compare } from 'bcryptjs';

@Injectable()
export class AuthService {
    constructor(private readonly usersRepo: UsersRepository) { }

    async authenticate(authDto: AuthDto) {
        const { email, password } = authDto;

        const user = await this.usersRepo.findUnique({
            where: { email },
        });

        const isPasswordValid = await compare(password, user.password);

        return isPasswordValid;
    }
}
