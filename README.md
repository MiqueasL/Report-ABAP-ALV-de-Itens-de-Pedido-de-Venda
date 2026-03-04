# Report-ABAP-ALV-de-Itens-de-Pedido-de-Venda

Este programa em ABAP Clássico realiza a leitura de itens de pedidos de venda a partir da tabela padrão do SAP VBAP e exibe os dados em um relatório ALV utilizando a função REUSE_ALV_GRID_DISPLAY.

Objetivo

Permitir a consulta dinâmica de itens de documentos de vendas com exibição estruturada em ALV Grid, aplicando conceitos clássicos de desenvolvimento ABAP.

Funcionalidades

Filtro por número do documento de vendas (VBELN) através de SELECT-OPTIONS

Leitura de dados diretamente da tabela VBAP

Armazenamento dos dados em tabela interna

Construção manual do Field Catalog

Exibição dos dados em ALV Grid

Possibilidade de salvar variantes de layout (i_save = 'A')

Campos Exibidos no ALV

Documento de Vendas (VBELN)

Item (POSNR)

Material (MATNR)

Descrição (ARKTX)

Quantidade (KWMENG)

Unidade de Venda (VRKME)

Motivo de Recusa (ABGRU)

Conceitos Técnicos Aplicados

TABLES

TYPES para criação de estrutura customizada

SELECT-OPTIONS

SELECT ... INTO TABLE

Uso de TYPE-POOLS SLIS

Construção manual de Field Catalog

Chamada da função REUSE_ALV_GRID_DISPLAY

Controle de erro com sy-subrc

Objetivo Técnico

Este projeto tem como finalidade praticar:

Leitura de dados em tabelas padrão SAP

Construção manual de ALV clássico

Estruturação de relatórios com REUSE_ALV_GRID_DISPLAY

Organização de dados em tabelas internas

Conceitos fundamentais de exibição de dados no ABAP clássico

Se quiser, posso também montar uma versão comparando esse ALV clássico com ALV OO para mostrar evolução técnica no seu portfólio.
<img width="764" height="206" alt="Captura de tela 2026-03-03 234709" src="https://github.com/user-attachments/assets/82bc748c-cc2f-462a-825f-ad435e228869" />
<img width="704" height="366" alt="Captura de tela 2026-03-03 235419" src="https://github.com/user-attachments/assets/e478b05c-b71a-46da-bdfd-70e8c4ff6d66" />

