CREATE TABLE "clientes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "numero_inscricao" varchar(255), "nome" varchar(255), "data_nascimento" date, "sexo" varchar(255), "cpf_cnpj" varchar(255), "endereco" varchar(255), "telefone" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "pacotes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar(255), "descricao" varchar(255), "valor" decimal, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "vendas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "cliente_id" integer, "pacote_id" integer, "vendedor_id" integer, "data" date, "observacao" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "vendedors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "registro" varchar(255), "nome" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20121124121936');

INSERT INTO schema_migrations (version) VALUES ('20121124122118');

INSERT INTO schema_migrations (version) VALUES ('20121124122231');

INSERT INTO schema_migrations (version) VALUES ('20121124122642');