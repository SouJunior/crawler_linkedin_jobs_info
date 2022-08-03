CREATE TABLE sys_fontes_sincronismos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  id_chave_sincronismo bigint(20) unsigned NOT NULL,
  id_fonte_sincronismo bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (id),
  KEY sys_fontes_sincronismos_id_chave_sincronismo_index (id_chave_sincronismo),
  KEY sys_fontes_sincronismos_id_fonte_sincronismo_index (id_fonte_sincronismo),
  CONSTRAINT sys_fontes_sincronismos_id_chave_sincronismo_foreign FOREIGN KEY (id_chave_sincronismo) REFERENCES sys_chaves_sincronismos (id)
)