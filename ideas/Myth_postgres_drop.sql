ALTER TABLE "Characters" DROP CONSTRAINT IF EXISTS "Characters_fk0";

ALTER TABLE "Characters" DROP CONSTRAINT IF EXISTS "Characters_fk1";

ALTER TABLE "Character_Epithets" DROP CONSTRAINT IF EXISTS "Character_Epithets_fk0";

ALTER TABLE "Character_Epithets" DROP CONSTRAINT IF EXISTS "Character_Epithets_fk1";

ALTER TABLE "Items" DROP CONSTRAINT IF EXISTS "Items_fk0";

ALTER TABLE "Character_Items" DROP CONSTRAINT IF EXISTS "Character_Items_fk0";

ALTER TABLE "Character_Items" DROP CONSTRAINT IF EXISTS "Character_Items_fk1";

ALTER TABLE "Character_Parents" DROP CONSTRAINT IF EXISTS "Character_Parents_fk0";

ALTER TABLE "Character_Parents" DROP CONSTRAINT IF EXISTS "Character_Parents_fk1";

ALTER TABLE "Character_Parents" DROP CONSTRAINT IF EXISTS "Character_Parents_fk2";

ALTER TABLE "Character_Siblings" DROP CONSTRAINT IF EXISTS "Character_Siblings_fk0";

ALTER TABLE "Character_Siblings" DROP CONSTRAINT IF EXISTS "Character_Siblings_fk1";

DROP TABLE IF EXISTS "Characters";

DROP TABLE IF EXISTS "Character_Classifications";

DROP TABLE IF EXISTS "Epithets";

DROP TABLE IF EXISTS "Character_Epithets";

DROP TABLE IF EXISTS "Items";

DROP TABLE IF EXISTS "Character_Items";

DROP TABLE IF EXISTS "Character_Parents";

DROP TABLE IF EXISTS "Character_Siblings";

