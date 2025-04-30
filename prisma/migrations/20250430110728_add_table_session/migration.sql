-- CreateTable
CREATE TABLE "Session" (
    "id" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "active_expires" BIGINT NOT NULL,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
