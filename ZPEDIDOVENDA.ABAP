REPORT ZPEDIDOVENDA.

TABLES: vbap.

TYPES: BEGIN OF ty_item,
         vbeln  TYPE vbap-vbeln,
         posnr  TYPE vbap-posnr,
         matnr  TYPE vbap-matnr,
         arktx  TYPE vbap-arktx,
         kwmeng TYPE vbap-kwmeng,
         vrkme  TYPE vbap-vrkme,
         abgru  TYPE vbap-abgru,
         sel    TYPE char1,
       END OF ty_item.

SELECTION-SCREEN BEGIN OF BLOCK b1.

  SELECT-OPTIONS: s_doc FOR vbap-vbeln.

SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  SELECT vbeln, posnr, matnr, arktx, kwmeng, vrkme, abgru
    FROM vbap
    INTO TABLE @DATA(gt_itens)
    WHERE vbeln IN @s_doc.

  TYPE-POOLS: slis.

  DATA: gt_fieldcat TYPE slis_t_fieldcat_alv,
        ls_fieldcat TYPE slis_fieldcat_alv.

  ls_fieldcat-reptext_ddic = 'Documento de Vendas'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'VBELN'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Itens'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'POSNR'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Material'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'MATNR'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Descrição'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'ARKTX'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Quantidade'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'KWMENG'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Unidade de Venda'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'VRKME'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  ls_fieldcat-reptext_ddic = 'Motivo de Recusa'.
  ls_fieldcat-tabname = 'GT_ITENS'.
  ls_fieldcat-fieldname = 'ABGRU'.

  APPEND ls_fieldcat TO gt_fieldcat.
  CLEAR ls_fieldcat.

  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      it_fieldcat   = gt_fieldcat
      i_default     = 'X'
      i_save        = 'A'
    TABLES
      t_outtab      = gt_itens
    EXCEPTIONS
      program_error = 1
      OTHERS        = 2.
  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.
