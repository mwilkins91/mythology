CREATE TABLE "Characters" (
	"id" serial NOT NULL,
	"classification" serial NOT NULL,
	"sub_classification" serial NOT NULL,
	CONSTRAINT Characters_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Character_Classifications" (
	"id" serial NOT NULL UNIQUE,
	"name" TEXT NOT NULL UNIQUE,
	"description" TEXT NOT NULL UNIQUE,
	CONSTRAINT Character_Classifications_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Epithets" (
	"id" serial NOT NULL UNIQUE,
	"epithet" TEXT NOT NULL UNIQUE,
	CONSTRAINT Epithets_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Character_Epithets" (
	"id" serial NOT NULL,
	"character_id" int NOT NULL,
	"epithet_id" int NOT NULL,
	CONSTRAINT Character_Epithets_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Items" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"description" TEXT NOT NULL,
	"creator" TEXT,
	CONSTRAINT Items_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Character_Items" (
	"id" serial NOT NULL,
	"character_id" int NOT NULL,
	"item_id" int NOT NULL,
	CONSTRAINT Character_Items_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Character_Parents" (
	"id" serial NOT NULL,
	"father" int,
	"mother" int,
	"child" int,
	CONSTRAINT Character_Parents_pk PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Character_Siblings" (
	"character_one_id" int NOT NULL,
	"character_two_id" int NOT NULL,
	"description" TEXT NOT NULL
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Characters" ADD CONSTRAINT "Characters_fk0" FOREIGN KEY ("classification") REFERENCES "Character_Classifications"("id");
ALTER TABLE "Characters" ADD CONSTRAINT "Characters_fk1" FOREIGN KEY ("sub_classification") REFERENCES "Character_Classifications"("id");



ALTER TABLE "Character_Epithets" ADD CONSTRAINT "Character_Epithets_fk0" FOREIGN KEY ("character_id") REFERENCES "Characters"("id");
ALTER TABLE "Character_Epithets" ADD CONSTRAINT "Character_Epithets_fk1" FOREIGN KEY ("epithet_id") REFERENCES "Epithets"("id");

ALTER TABLE "Items" ADD CONSTRAINT "Items_fk0" FOREIGN KEY ("creator") REFERENCES "Characters"("id");

ALTER TABLE "Character_Items" ADD CONSTRAINT "Character_Items_fk0" FOREIGN KEY ("character_id") REFERENCES "Characters"("id");
ALTER TABLE "Character_Items" ADD CONSTRAINT "Character_Items_fk1" FOREIGN KEY ("item_id") REFERENCES "Items"("id");

ALTER TABLE "Character_Parents" ADD CONSTRAINT "Character_Parents_fk0" FOREIGN KEY ("father") REFERENCES "Characters"("id");
ALTER TABLE "Character_Parents" ADD CONSTRAINT "Character_Parents_fk1" FOREIGN KEY ("mother") REFERENCES "Characters"("id");
ALTER TABLE "Character_Parents" ADD CONSTRAINT "Character_Parents_fk2" FOREIGN KEY ("child") REFERENCES "Characters"("id");

ALTER TABLE "Character_Siblings" ADD CONSTRAINT "Character_Siblings_fk0" FOREIGN KEY ("character_one_id") REFERENCES "Characters"("id");
ALTER TABLE "Character_Siblings" ADD CONSTRAINT "Character_Siblings_fk1" FOREIGN KEY ("character_two_id") REFERENCES "Characters"("id");

