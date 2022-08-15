CREATE TABLE sys_alvos_sincronismos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  id_chave_sincronismo bigint(20) unsigned NOT NULL,
  id_alvo_sincronismo bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (id),
  KEY sys_alvos_sincronismos_id_chave_sincronismo_index (id_chave_sincronismo),
  KEY sys_alvos_sincronismos_id_alvo_sincronismo_index (id_alvo_sincronismo),
  CONSTRAINT sys_alvos_sincronismos_id_chave_sincronismo_foreign FOREIGN KEY (id_chave_sincronismo) REFERENCES sys_chaves_sincronismos (id)
)