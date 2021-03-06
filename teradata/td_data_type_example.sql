-- comprehensive sample dataset for spec illustration
DROP TABLE TD_DATA_TYPE_EXAMPLE;

CREATE SET TABLE TD_DATA_TYPE_EXAMPLE (
  TYPE__CHAR CHAR(3) NOT NULL CHAR SET LATIN DEFAULT 'N/A',
  NAME__VARCHAR VARCHAR(100) CHAR SET UNICODE NOT NULL,
  KEY__BIGINT BIGINT NOT NULL,
  ID__INT INT DEFAULT -1,
  YEAR__SMALLINT SMALLINT DEFAULT 2000,
  IS_DELETED__BYTEINT BYTEINT NOT NULL DEFAULT 0,
  HEIGHT__FLOAT FLOAT,
  WEIGHT__DOUBLE DOUBLE PRECISION DEFAULT 345.6789012,
  AMOUNT__NUMBER NUMBER(9,2) DEFAULT 0.0,
  PI_DECIMAL DECIMAL(31,30) DEFAULT 3.141592653589793238462643383279,
  FILLER__CHAR CHAR(2) NOT NULL CHAR SET UNICODE DEFAULT '@@',
  BIRTHDAY__DATE DATE,
  DAY_START_TIME__TIME TIME(0),
  DAY_END_TIME__TIME TIME(3) WITH TIME ZONE DEFAULT TIME'19:20:21.789+05:00',
  DURATION__INTERVALDAY2SEC INTERVAL DAY(4) TO SECOND(3) DEFAULT INTERVAL '3 15:06:29.098' DAY TO SECOND,
  EVENT_TIME__TIMESTAMP TIMESTAMP(6),
  EXPIRED_AT__TIMESTAMP TIMESTAMP(0),
  LOCAL_TIME__TTMESTAMPWITHZONE TIMESTAMP(6) WITH TIME ZONE,
  FILLER2__CHAR CHAR(2) NOT NULL CHAR SET LATIN DEFAULT '||',
  IP__VARBYTE VARBYTE(64),
  FILE__BLOB BLOB(2048),
  CONFIG__JSON JSON(1024) STORAGE FORMAT BSON,
  MEMO__CLOB CLOB(8K),
  FILLER3__SMALLINT SMALLINT NOT NULL DEFAULT '3D3D'X
) UNIQUE PRIMARY INDEX (KEY__BIGINT);

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, AMOUNT__NUMBER, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, IP__VARBYTE, CONFIG__JSON, MEMO__CLOB)
  VALUES('N/A', '⌘LINE01'||CHR(10)||'⌦LINE02', -1, 'FFFF'X, 2009, 1, 88.0123456, -88.01, DATE'2098-12-30', NULL, NULL, TIMESTAMP'2017-09-09 23:59:59', TIMESTAMP'2017-08-19 23:59:00.678901+05:30', 'C0A80101'XB, NULL, NULL);

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, AMOUNT__NUMBER, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, IP__VARBYTE, CONFIG__JSON, MEMO__CLOB)
  VALUES('SFO', 'https://info.teradata.com/htmlpubs/DB_TTU_16_00', 0, 65536, 2010, 0, 39500000.00, 39500000.00, DATE'2098-12-31', TIME'07:30:00', TIMESTAMP'2010-09-20 19:20:21.012345', TIMESTAMP'2017-09-09 23:59:01', TIMESTAMP'2017-09-09 23:59:01.678901+08:00', '001234567890abcdef0123'XB, '{"key1": 1234, "key2": "Dumplings rather than flowers"}', '花より団子');

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, AMOUNT__NUMBER, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, IP__VARBYTE, CONFIG__JSON, MEMO__CLOB)
  VALUES('YYZ', 'Toronto Pearson', 1, -1, 2011, 0, -256.00, 256.00, DATE'2099-01-01', TIME'00:00:00', TIMESTAMP'2010-09-20 19:20:21.012345', TIMESTAMP'2017-09-09 23:59:01', TIMESTAMP'2017-09-09 23:59:01.678901+08:00', '1234567890abcdef012345'XB, '{"key1": 0, "key2": "Not seeing is a flower"}', '見ぬが花');

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, AMOUNT__NUMBER, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, IP__VARBYTE, CONFIG__JSON, MEMO__CLOB)
  VALUES('CHI', 'Chicago O''Hare', 2, 9999, 2099, 1, -0.00123456, 999000000.00, DATE'2999-01-01', TIME'23:59:59', NULL, TIMESTAMP'2017-09-09 23:59:01', TIMESTAMP'2017-09-09 23:59:01.678901+08:00', NULL, '{"key1": 2345, "key2": "I don''t understand"}', 'Não compreendo');

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, AMOUNT__NUMBER, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, IP__VARBYTE, CONFIG__JSON, MEMO__CLOB)
  VALUES('SJC', '[San José] ♔♕♖♗♘', 3, '88888888'X, 2200, 1, 1.00, -9999.04, DATE'2999-01-03', NULL, NULL, TIMESTAMP'2017-09-09 23:59:02', TIMESTAMP'2017-08-19 00:00:00.678901-06:30', NULL, '{"key1": -9, "key2": "①:②③ ㆙㆚㆛"}', NULL);

INSERT INTO TD_DATA_TYPE_EXAMPLE
  (TYPE__CHAR, NAME__VARCHAR, KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT, HEIGHT__FLOAT, WEIGHT__DOUBLE, AMOUNT__NUMBER, FILLER__CHAR, BIRTHDAY__DATE, DAY_START_TIME__TIME, EVENT_TIME__TIMESTAMP, EXPIRED_AT__TIMESTAMP, LOCAL_TIME__TTMESTAMPWITHZONE, FILLER2__CHAR, IP__VARBYTE, FILE__BLOB, CONFIG__JSON, MEMO__CLOB)
  VALUES('PEK', '(Beijing) 首都机场', 4, 256, 2199, 0, 3.141592653589793238462643383279, 314159.2653589793238462643383279, -3.14, '⇧✈', DATE'2999-01-02', TIME'12:01:02', TIMESTAMP'2999-12-31 23:59:59.999', TIMESTAMP'2017-09-09 23:59:01', TIMESTAMP'2017-08-19 23:59:00.678901-07:00', '++', '000010000008FF'XB, 'FFEEDDCCBBAA99887766554433221100ABCDEF'XB, '{"key1": -234, "key2": "抛砖引玉"}', 'just tossing an idea out there');

UPDATE TD_DATA_TYPE_EXAMPLE SET FILLER__CHAR='⇧@' WHERE KEY__BIGINT=3;
UPDATE TD_DATA_TYPE_EXAMPLE SET PI_DECIMAL=0.003141592653589793238462643383 WHERE KEY__BIGINT=4;

select * from TD_DATA_TYPE_EXAMPLE order by KEY__BIGINT;

-- Simpler sample dataset for unit test (with less data types presented)
-- Data Type is prefixed with double underscore, so field name is self-explaianed
DROP TABLE TD_DATA_TYPE_EXAMPLE_01;

CREATE SET TABLE TD_DATA_TYPE_EXAMPLE_01 (
  TYPE__CHAR CHAR(3) NOT NULL CHAR SET LATIN DEFAULT 'N/A',
  NAME__VARCHAR VARCHAR(100) CHAR SET UNICODE NOT NULL,
  KEY__BIGINT BIGINT NOT NULL,
  ID__INT INT DEFAULT -1,
  YEAR__SMALLINT SMALLINT DEFAULT 2000,
  IS_DELETED__BYTEINT BYTEINT NOT NULL DEFAULT 0,
  HEIGHT__FLOAT FLOAT,
  AMOUNT__NUMBER NUMBER(9,2) DEFAULT 0.0,
  PI_DECIMAL DECIMAL(31,30) DEFAULT 3.141592653589793238462643383279,
  BIRTHDAY__DATE DATE,
  DAY_END_TIME__TIME TIME(6) DEFAULT TIME'19:20:21.456789',
  EVENT_TIME__TIMESTAMP TIMESTAMP(6),
  IP__VARBYTE VARBYTE(64)
) UNIQUE PRIMARY INDEX (KEY__BIGINT);

INSERT INTO TD_DATA_TYPE_EXAMPLE_01 (
  TYPE__CHAR, NAME__VARCHAR,
  KEY__BIGINT, ID__INT, YEAR__SMALLINT, IS_DELETED__BYTEINT,
  HEIGHT__FLOAT, AMOUNT__NUMBER,
  BIRTHDAY__DATE, EVENT_TIME__TIMESTAMP,
  IP__VARBYTE
)
SELECT
  cast( calendar_date as format 'MMM')(CHAR(3)),
  'a day = ' || calendar_date || week_of_year,
  day_of_calendar,
  day_of_year * case when day_of_week = 7 then -1 when day_of_week = 1 then null else 1 end,
  year_of_calendar,
  case when day_of_week mod 03 = 0 then 0 else 1 end, 
  case when day_of_year mod 12 = 0 then null else day_of_calendar / day_of_year end,
  case when day_of_year mod 30 = 0 then null else day_of_calendar / day_of_month end,
  calendar_date,
  case when day_of_month mod 8 = 0 then null else cast(cast(calendar_date as format 'YYYY-MM-DD') || ' 19:20:21.' || TRIM(day_of_calendar) as timestamp(6)) end,
  case when day_of_month mod 4 = 0 then null else to_bytes('test:' || day_of_calendar || day_of_year, 'ascii') end
FROM SYS_CALENDAR.CALENDAR
WHERE calendar_date >= DATE '2012-11-11'
  AND calendar_date <  DATE '2012-11-11' + 5000
;

SELECT * FROM TD_DATA_TYPE_EXAMPLE_01 ORDER BY KEY__BIGINT;

-- select TypeName, TypeKind, OrderingForm, ArrayScope from DBC.UDTInfo where TypeName like '%ARRAY%';


select cast(calendar_date as format 'YYYY-MM-DD') || ' 19:20:21.' || TRIM(day_of_calendar) from SYS_CALENDAR.CALENDAR;


CREATE MULTISET TABLE teradata_binary_table (
      test_tinyint BYTEINT,
      test_smallint SMALLINT,
      test_int INTEGER NOT NULL,
      test_bigint BIGINT,
      test_double FLOAT,
      test_decimal DECIMAL(15,2),
      test_date DATE FORMAT 'YYYY-MM-DD',
      test_timestamp TIMESTAMP(6),
      test_char CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      test_varchar VARCHAR(40) CHARACTER SET UNICODE NOT CASESPECIFIC,
      test_binary VARBYTE(500)
) UNIQUE PRIMARY INDEX ( test_int );

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-127, 32000, -9, 1234567890123456789, 2.01E10, 3.14, DATE'2011-01-02', TIMESTAMP'2022-02-28 12:34:56', '数', 'ありがとうございます', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-1, -32000, 0, 123456789012345678, 2.0108E10, 314.15, DATE'0001-12-31', NULL, 'A', 'thank you', 'a10b37cdff63ed0000'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(127, 32767, 1, 999000, 2.034E12, 0.04, DATE'2099-01-02', NULL, 'I', '', '02a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(2, -32767, 9, 987654321098765432, 2.019876E12, NULL, DATE'2011-01-02', NULL, 'あ', 'test', NULL);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(3, 32, 99, -1234567890123456789, 2.01E10, 3.14, DATE'2999-12-31', TIMESTAMP'0001-12-28 12:34:56', '?', '*', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-4, 320, 999, 0, 2.01E10, 3.14, DATE'2011-01-02', TIMESTAMP'2010-02-28 12:34:56', NULL, '||ありがとうございます||', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(5, 3200, -9999, NULL, 3.14159, 3.14, NULL, TIMESTAMP'2011-02-28 12:34:56', '', 'ABC', NULL);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-6, 0, -99999, -1, NULL, 0, DATE'2011-01-02', TIMESTAMP'2009-02-28 12:34:56', '数', 'AABBCC', ''xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(7, NULL, 999999, 65536, 2.01E-8, NULL, NULL, TIMESTAMP'2099-02-28 12:34:56', '数', NULL, 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(NULL, 1, 1234, 256, 1.01E18, 12.00, DATE'2000-01-02', TIMESTAMP'2999-12-31 12:34:56', '数', NULL, 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-127, 32000, 100, 1234567890123456789, 2.01E10, 3.14, DATE'2011-01-02', TIMESTAMP'2022-02-28 12:34:56', '数', 'ありがとうございます', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-1, -32000, 101, 123456789012345678, 2.0108E10, 314.15, DATE'2009-09-09', NULL, 'A', 'thank you', 'a10b37cdff63ed0000'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(127, 32767, 102, 999000, 2.034E12, 0.04, DATE'2011-01-02', NULL, 'I', '', '02a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(2, -32767, 103, 987654321098765432, 2.019876E12, NULL, DATE'2011-01-02', NULL, 'あ', 'test', NULL);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(3, 32, 104, -1234567890123456789, 2.01E10, 3.14, DATE'2011-01-02', TIMESTAMP'0001-12-28 12:34:56', '?', '*', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-4, 320, 105, 0, 2.01E10, 3.14, DATE'2011-01-02', TIMESTAMP'2010-02-28 12:34:56', NULL, '||ありがとうございます||', 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(5, 3200, 106, NULL, 3.14159, 3.14, DATE'2011-01-02', TIMESTAMP'2011-02-28 12:34:56', '', 'ABC', NULL);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(-6, 0, 107, -1, NULL, 0, DATE'2011-01-02', TIMESTAMP'2009-02-28 12:34:56', '数', 'AABBCC', ''xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(7, NULL, 108, 65536, 2.01E-8, NULL, NULL, TIMESTAMP'2099-02-28 12:34:56', '数', NULL, 'a10b37cdff63ed'xb);

INSERT INTO teradata_binary_table(test_tinyint, test_smallint, test_int, test_bigint, test_double, test_decimal, test_date, test_timestamp, test_char, test_varchar, test_binary)
  VALUES(NULL, 1, 109, 256, 1.01E18, 12.00, DATE'2011-01-02', TIMESTAMP'2999-12-31 12:34:56', '数', NULL, 'a10b37cdff63ed'xb);


select * from teradata_binary_table;
