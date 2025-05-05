-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "user_schema";

-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "vehicle_schema";

-- CreateTable
CREATE TABLE "user_schema"."customers" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "customers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "vehicle_schema"."vehicles" (
    "id" TEXT NOT NULL,
    "typeId" TEXT NOT NULL,
    "licensePlate" TEXT NOT NULL,

    CONSTRAINT "vehicles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "vehicle_schema"."vehicle_types" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "vehicle_types_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "customers_email_key" ON "user_schema"."customers"("email");

-- CreateIndex
CREATE UNIQUE INDEX "vehicles_licensePlate_key" ON "vehicle_schema"."vehicles"("licensePlate");

-- CreateIndex
CREATE UNIQUE INDEX "vehicle_types_name_key" ON "vehicle_schema"."vehicle_types"("name");

-- AddForeignKey
ALTER TABLE "vehicle_schema"."vehicles" ADD CONSTRAINT "vehicles_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "vehicle_schema"."vehicle_types"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
