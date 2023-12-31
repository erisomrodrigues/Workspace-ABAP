PROCESS BEFORE OUTPUT.
*&SPWIZARD: PBO FLOW LOGIC FOR TABLECONTROL 'TABLE200'
  MODULE TABLE200_CHANGE_TC_ATTR.
*&SPWIZARD: MODULE TABLE200_CHANGE_COL_ATTR.
  LOOP AT   LT_SFLIGHT
       INTO ST_SFLIGHT
       WITH CONTROL TABLE200
       CURSOR TABLE200-CURRENT_LINE.
*&SPWIZARD:   MODULE TABLE200_CHANGE_FIELD_ATTR
  ENDLOOP.

 MODULE STATUS_0200.
*
PROCESS AFTER INPUT.
*&SPWIZARD: PAI FLOW LOGIC FOR TABLECONTROL 'TABLE200'
  LOOP AT LT_SFLIGHT.
    CHAIN.
      FIELD ST_SFLIGHT-CARRID.
      FIELD ST_SFLIGHT-CONNID.
      FIELD ST_SFLIGHT-FLDATE.
      FIELD ST_SFLIGHT-PRICE.
      FIELD ST_SFLIGHT-CURRENCY.
    endchain.
  ENDLOOP.
*&SPWIZARD: MODULE TABLE200_CHANGE_TC_ATTR.
*&SPWIZARD: MODULE TABLE200_CHANGE_COL_ATTR.

 MODULE USER_COMMAND_0200.
