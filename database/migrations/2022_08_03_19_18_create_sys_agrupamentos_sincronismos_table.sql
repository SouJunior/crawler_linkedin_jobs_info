CREATE TABLE sys_agrupamentos_sincronismos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  id_origem_sincronismo bigint(20) unsigned NOT NULL,
  id_chave_inicializacao_sincronismo bigint(20) unsigned NOT NULL,
  id_chave_finalizacao_sincronismo bigint(20) unsigned NOT NULL,
  PRIMARY KEY (id),
  KEY sys_agrupamentos_sincronismos_id_origem_sincronismo_foreign (id_origem_sincronismo),
  CONSTRAINT sys_agrupamentos_sincronismos_id_origem_sincronismo_foreign FOREIGN KEY (id_origem_sincronismo) REFERENCES sys_origens_sincronismos (id)
)