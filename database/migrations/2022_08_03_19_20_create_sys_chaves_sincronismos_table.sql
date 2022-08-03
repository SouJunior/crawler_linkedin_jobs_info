CREATE TABLE sys_chaves_sincronismos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  id_origem_sincronismo bigint(20) unsigned NOT NULL,
  status_sincronismo enum('sucesso','falha') COLLATE utf8mb4_unicode_ci NOT NULL,
  data_sincronismo datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY sys_chaves_sincronismos_id_origem_sincronismo_index (id_origem_sincronismo),
  CONSTRAINT sys_chaves_sincronismos_id_origem_sincronismo_foreign FOREIGN KEY (id_origem_sincronismo) REFERENCES sys_origens_sincronismos (id)
)