METASTORE_VERSION=0.1.26
MODEL_VERSION=16.0.3

curl -O http://artifactory.corp.linkedin.com:8081/artifactory/release/com/linkedin/metadata-store/metadata-store-api/${METASTORE_VERSION}/metadata-store-api-avro-schema-${METASTORE_VERSION}.jar
curl -O http://artifactory.corp.linkedin.com:8081/artifactory/release/com/linkedin/metadata-store/metadata-store-api/${METASTORE_VERSION}/metadata-store-api-data-template-${METASTORE_VERSION}.jar
curl -O http://artifactory.corp.linkedin.com:8081/artifactory/release/com/linkedin/metadata-store/metadata-store-api/${METASTORE_VERSION}/metadata-store-api-rest-client-${METASTORE_VERSION}.jar

curl -O http://artifactory.corp.linkedin.com:8081/artifactory/release/com/linkedin/models/models/${MODEL_VERSION}/models-${MODEL_VERSION}.jar
