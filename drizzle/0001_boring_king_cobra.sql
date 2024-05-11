CREATE TABLE IF NOT EXISTS "restaurantss" (
	"id" text PRIMARY KEY NOT NULL,
	"name" text NOT NULL,
	"descritpion" text,
	"created_at" timestamp DEFAULT now() NOT NULL,
	"updated_at" timestamp DEFAULT now() NOT NULL
);
