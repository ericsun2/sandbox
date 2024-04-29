go 1.22

require (
	github.com/DataDog/datadog-go v4.8.3+incompatible
	github.com/golang/protobuf v1.5.4
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0
	github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c
	github.com/snowflakedb/gosnowflake v1.9.0
	google.golang.org/grpc v1.63.2
)

replace (
	github.com/apache/arrow/go => github.com/apache/arrow/go/v16 v16.0.0
	github.com/klauspost/compress => github.com/klauspost/compress v1.17.8
	github.com/klauspost/cpuid/v2 => github.com/klauspost/cpuid/v2 v2.2.7
)
