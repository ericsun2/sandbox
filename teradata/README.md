
td_data_type_example.sql will create 2 tables and populate them with sample records.

* TD_DATA_TYPE_EXAMPLE_01 is used for unit test purpose. This table has the frequently-used data types. It has 5000 records. The table is serialized as td_data_type_example_01.teradata in binary format, with 2-byte record length + 0x0A end-of-record byte.
* TD_DATA_TYPE_EXAMPLE is used to explain all data types (except UDT). It only has a few records. The table is serialized as td_data_type_example.teradata in binary format, with 2-byte record length + 0x0A end-of-record byte.

https://info.teradata.com/htmlpubs/DB_TTU_16_00/Load_and_Unload_Utilities/B035-2436%E2%80%90086K/2436ch03.05.3.html has the basic explanation about the different file format that TPT can export and import.

Format can have any of the following values:
* 'Binary' = 2-byte integer, n, followed by n bytes of data. This data format requires rows to be 64KB (64260 data bytes) or smaller. In this format:
  * The data is prefixed by a record-length marker.
  * The record-length marker does not include the length of the marker itself.
  * The record-length is not part of the transmitted data.
* 'Binary4' = 4-byte integer, followed by n bytes of data. This data format supports rows up to 1MB (1000000 data bytes) in size. In this format:
  * The data is prefixed by a record-length marker.
  * The record-length marker does not include the length of the marker itself.
  * The record-length is not part of the transmitted data.
* 'Delimited' = in text format with each field separated by a delimiter character. When you specify Delimited format, you can use the optional TextDelimiter attribute to specify the delimiter character. The default is the pipe character ( | ).  
Note: When the format attribute of the DataConnector Producer is set to 'delimited', the associated Teradata PT schema object must be comprised of only VARCHAR and/or VARDATE columns. Specifying non-VARCHAR or non-VARDATE columns results in an error.
* 'Formatted' = both prefixed by a record-length marker and followed by an end-of-record marker. This data format requires rows to be 64KB (64260 data bytes) or smaller. In this format:
  * The record-length marker does not include the length of the marker itself.
  * Neither the record-length nor the end-of-record marker is part of the transmitted data.
* 'Formatted4' = both prefixed by a 4-byte record-length marker and followed by an end-of-record marker. This data format supports rows up to 1MB (1000000 data bytes) in size. In this format:
  * The record-length marker does not include the length of the marker itself.
  * Neither the record-length nor the end-of-record marker is part of the transmitted data.
* 'Text' = character data separated by an end-of-record (EOR) marker. The EOR marker can be either a single-byte linefeed (X'0A') or a double-byte carriage-return/line-feed pair (X'0D0A'), as defined by the first EOR marker encountered for the first record. This format restricts column data types to CHAR or ANSIDATE only.
* 'Unformatted' = not formatted. Unformatted data has no record or field delimiters, and is entirely described by the specified Teradata PT schema.

This git project is dealing with the data files comformed with *Formatted* specification.

```bash
$ hexdump -C -n 320 td_data_type_example.teradata
00000000  f9 00 00 09 0e 4e 2f 41  20 20 20 13 00 e2 8c 98  |.....N/A   .....|  0x00f9=249  00090e is the bitmap for NULLs
00000010  4c 49 4e 45 30 31 0a e2  8c a6 4c 49 4e 45 30 32  |LINE01....LINE02|  next record starts at 2+249+1=252=0x00fc
00000020  ff ff ff ff ff ff ff ff  ff ff 00 00 d9 07 01 f8  |................|
00000030  0f 33 45 ca 00 56 40 71  33 81 c7 dc 9a 75 40 04  |.3E..V@q3....u@.|
00000040  02 00 9f dd ef 2b 3d ab  0d 14 e6 53 1c 89 08 a7  |.....+=....S....|
00000050  27 00 00 00 40 40 20 20  20 20 2e 3b 1e 00 20 20  |'...@@    .;..  |
00000060  20 20 20 20 20 20 31 39  3a 32 30 3a 32 31 2e 37  |      19:20:21.7|
00000070  38 39 2b 30 35 3a 30 30  20 20 20 20 33 20 31 35  |89+05:00    3 15|
00000080  3a 30 36 3a 32 39 2e 30  39 38 20 20 20 20 20 20  |:06:29.098      |
00000090  20 20 20 20 20 20 20 20  20 20 20 20 20 20 20 20  |                |
000000a0  20 20 20 20 32 30 31 37  2d 30 39 2d 30 39 20 32  |    2017-09-09 2|
000000b0  33 3a 35 39 3a 35 39 32  30 31 37 2d 30 38 2d 31  |3:59:592017-08-1|
000000c0  39 20 32 33 3a 35 39 3a  30 30 2e 36 37 38 39 30  |9 23:59:00.67890|
000000d0  31 2b 30 35 3a 33 30 7c  7c 20 20 04 00 c0 a8 01  |1+05:30||  .....|
000000e0  01 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
000000f0  00 00 00 00 00 00 00 00  00 3d 3d 0a 60 01 00 00  |.........==.`...|  0a is the end; offset 0x00fc is here; 0x0160=352 
00000100  08 53 46 4f 20 20 20 2f  00 68 74 74 70 73 3a 2f  |.SFO   /.https:/|
00000110  2f 69 6e 66 6f 2e 74 65  72 61 64 61 74 61 2e 63  |/info.teradata.c|
00000120  6f 6d 2f 68 74 6d 6c 70  75 62 73 2f 44 42 5f 54  |om/htmlpubs/DB_T|
00000130  54 55 5f 31 36 5f 30 30  00 00 00 00 00 00 00 00  |TU_16_00........|
```


