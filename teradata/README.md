
td_data_type_example.sql will create 2 tables and populate them with sample records.

* TD_DATA_TYPE_EXAMPLE_01 is used for unit test purpose. This table has the frequently-used data types. It has 5000 records. The table is serialized as td_data_type_example_01.teradata in binary format, with 2-byte record length + 0x0A end-of-record byte.
* TD_DATA_TYPE_EXAMPLE is used to explain all data types (except UDT). It only has a few records. The table is serialized as td_data_type_example.teradata in binary format, with 2-byte record length + 0x0A end-of-record byte.

https://info.teradata.com/htmlpubs/DB_TTU_16_00/Load_and_Unload_Utilities/B035-2436%E2%80%90086K/2436ch03.05.3.html has the basic explanation about the different file format that TPT can export and import.

Format can have any of the following values:
* 'Binary' = 2-byte integer, n, followed by n bytes of data. This data format requires rows to be 64KB (64260 data bytes) or smaller. In this format:
** The data is prefixed by a record-length marker.
** The record-length marker does not include the length of the marker itself.
** The record-length is not part of the transmitted data.
** 'Binary4' = 4-byte integer, followed by n bytes of data. This data format supports rows up to 1MB (1000000 data bytes) in size. In this format:
** The data is prefixed by a record-length marker.
** The record-length marker does not include the length of the marker itself.
** The record-length is not part of the transmitted data.
* 'Delimited' = in text format with each field separated by a delimiter character. When you specify Delimited format, you can use the optional TextDelimiter attribute to specify the delimiter character. The default is the pipe character ( | ).
Note: When the format attribute of the DataConnector Producer is set to 'delimited', the associated Teradata PT schema object must be comprised of only VARCHAR and/or VARDATE columns. Specifying non-VARCHAR or non-VARDATE columns results in an error.
* 'Formatted' = both prefixed by a record-length marker and followed by an end-of-record marker. This data format requires rows to be 64KB (64260 data bytes) or smaller. In this format:
** The record-length marker does not include the length of the marker itself.
** Neither the record-length nor the end-of-record marker is part of the transmitted data.
* 'Formatted4' = both prefixed by a 4-byte record-length marker and followed by an end-of-record marker. This data format supports rows up to 1MB (1000000 data bytes) in size. In this format:
** The record-length marker does not include the length of the marker itself.
** Neither the record-length nor the end-of-record marker is part of the transmitted data.
* 'Text' = character data separated by an end-of-record (EOR) marker. The EOR marker can be either a single-byte linefeed (X'0A') or a double-byte carriage-return/line-feed pair (X'0D0A'), as defined by the first EOR marker encountered for the first record. This format restricts column data types to CHAR or ANSIDATE only.
* 'Unformatted' = not formatted. Unformatted data has no record or field delimiters, and is entirely described by the specified Teradata PT schema.

This git project is dealing with the data files comformed with *Formatted* specification.
