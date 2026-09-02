CLASS zhello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zhello_world IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: ls_data TYPE ztab_mydata.

    " Fill the fields
    ls_data-id   = '0000000001'.
    ls_data-name = 'John Doe'.

    " Insert into the table
    INSERT ztab_mydata FROM @ls_data.

    IF sy-subrc = 0.
      COMMIT WORK.
      out->write( 'Data inserted successfully!' ).
    ELSE.
      out->write( 'Insert failed (record might already exist).' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.

