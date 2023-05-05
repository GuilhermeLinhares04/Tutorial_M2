BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "formacao" (
	"cod_formacao"	INTEGER NOT NULL,
	"nome_curso"	TEXT,
	"ano_inicio"	INTEGER NOT NULL,
	"ano_fim"	INTEGER NOT NULL,
	"instituicao"	TEXT,
	"diploma"	TEXT,
	PRIMARY KEY("cod_formacao" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "endereco" (
	"cod_endereco"	INTEGER NOT NULL,
	"rua"	TEXT,
	"avenida"	TEXT,
	"cidade"	TEXT,
	"numero"	INTEGER,
	"referencia"	TEXT,
	PRIMARY KEY("cod_endereco" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "curriculo" (
	"cod_pessoa"	INTEGER NOT NULL,
	"nome_completo"	TEXT NOT NULL,
	"cargo"	TEXT,
	"email"	TEXT,
	"telefone"	INTEGER,
	"cod_experiencia"	INTEGER,
	"cod_formacao"	INTEGER,
	"cod_endereco"	INTEGER,
	"cod_realizacoes"	INTEGER,
	"habilidade_1"	TEXT,
	"habilidade_2"	TEXT,
	"personalidade"	TEXT,
	FOREIGN KEY("cod_endereco") REFERENCES "endereco"("cod_endereco"),
	FOREIGN KEY("cod_experiencia") REFERENCES "experiencia"("cod_experiencia"),
	FOREIGN KEY("cod_realizacoes") REFERENCES "realizacoes"("cod_realizacoes"),
	FOREIGN KEY("cod_formacao") REFERENCES "formacao"("cod_formacao"),
	PRIMARY KEY("cod_pessoa")
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"cod_realizacoes"	INTEGER NOT NULL,
	"ano"	INTEGER NOT NULL,
	"realizacao"	INTEGER,
	PRIMARY KEY("cod_realizacoes" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"cod_experiencia"	INTEGER NOT NULL,
	"nome_exp"	TEXT NOT NULL,
	"ano_inicio"	INTEGER NOT NULL,
	"ano_fim"	INTEGER NOT NULL,
	"cargo_exp"	TEXT,
	PRIMARY KEY("cod_experiencia" AUTOINCREMENT)
);
INSERT INTO "curriculo" ("cod_pessoa","nome_completo","cargo","email","telefone","cod_experiencia","cod_formacao","cod_endereco","cod_realizacoes","habilidade_1","habilidade_2","personalidade") VALUES (1,'Guilherme Ferreira Linhares','Aspirante a estagio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
COMMIT;
