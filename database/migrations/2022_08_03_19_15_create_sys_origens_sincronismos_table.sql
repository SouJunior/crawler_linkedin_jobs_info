CREATE TABLE sys_origens_sincronismos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  nome_sincronismo varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  fonte_sincronismo varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  alvo_sincronismo varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  tipo_fonte_sincronismo enum('tabela','arquivo', 'crawler') COLLATE utf8mb4_unicode_ci NOT NULL,
  tipo_alvo_sincronismo enum('tabela','arquivo', 'crawler') COLLATE utf8mb4_unicode_ci NOT NULL,
  operacao_sincronismo enum('criacao','atualizacao','exclusao') COLLATE utf8mb4_unicode_ci NOT NULL,
  status_sincronismo enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
)