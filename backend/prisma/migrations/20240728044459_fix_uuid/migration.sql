/*
  Warnings:

  - You are about to drop the column `balance` on the `bank_accounts` table. All the data in the column will be lost.
  - You are about to drop the column `color` on the `categories` table. All the data in the column will be lost.
  - Added the required column `name` to the `bank_accounts` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `type` on the `bank_accounts` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `type` on the `categories` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `type` on the `transactions` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "bank_account_type" AS ENUM ('CHECKING', 'INVESTMENT', 'CASH');

-- CreateEnum
CREATE TYPE "transaction_type" AS ENUM ('INCOME', 'EXPENSE');

-- AlterTable
ALTER TABLE "bank_accounts" DROP COLUMN "balance",
ADD COLUMN     "name" TEXT NOT NULL,
DROP COLUMN "type",
ADD COLUMN     "type" "bank_account_type" NOT NULL;

-- AlterTable
ALTER TABLE "categories" DROP COLUMN "color",
DROP COLUMN "type",
ADD COLUMN     "type" "transaction_type" NOT NULL;

-- AlterTable
ALTER TABLE "transactions" DROP COLUMN "type",
ADD COLUMN     "type" "transaction_type" NOT NULL;

-- DropEnum
DROP TYPE "bank_account_enum_type";

-- DropEnum
DROP TYPE "transaction_enum_type";
