// shared-prisma/index.ts
import { PrismaClient } from "../prisma/generated/client";

const prisma = new PrismaClient();
export default prisma;
