import { plainToClass, plainToInstance } from "class-transformer"
import { IsNotEmpty, IsString, NotEquals, validateSync } from "class-validator"

class Env {
    @IsString()
    @IsNotEmpty()
    @NotEquals('unsecure_jwt_secret')
    jwtSecret: string
}

export const envSettings: Env = plainToInstance(Env, {
    jwtSecret: process.env.JWT_SECRET
})

const errors = validateSync(envSettings);

if (errors.length > 0) {
    throw new Error('Invalid environment settings ' + JSON.stringify(errors, null, 2));
}