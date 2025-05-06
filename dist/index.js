"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// shared-prisma/index.ts
const client_1 = require("../prisma/generated/client");
const prisma = new client_1.PrismaClient();
exports.default = prisma;
