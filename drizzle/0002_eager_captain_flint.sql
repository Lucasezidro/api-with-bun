ALTER TABLE "restaurantss" ADD COLUMN "manager_id" text;--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "restaurantss" ADD CONSTRAINT "restaurantss_manager_id_users_id_fk" FOREIGN KEY ("manager_id") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;
