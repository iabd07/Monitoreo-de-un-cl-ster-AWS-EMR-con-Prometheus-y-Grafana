export TEZ_CONF_DIR=/etc/tez/conf
export TEZ_JARS=usr/lib/tez

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:"${TEZ_CONF_DIR}:${TEZ_JARS}/*:${TEZ_JARS}/lib/*"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/lib/hadoop-lzo/lib/*"
export JAVA_LIBRARY_PATH="$JAVA_LIBRARY_PATH:/usr/lib/hadoop-lzo/lib/native"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/aws-java-sdk/*"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/emrfs/conf:/usr/share/aws/emr/emrfs/lib/*/usr/share/aws/emr/emrfs/auxlib/*"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/ddb/lib/emr-ddb-hadoop.jar"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/goodies/lib/emr-hadoop-goodies.jar"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/kinesis/lib/emr-kinesis-hadoop.jar"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/cloudwatch-sink/lib/*"

export HADOOP_CLASSPATH="$HADOOP_CLASSPATH:/usr/share/aws/emr/security/conf:/usr/share/aws/emr/security/lib/*"

export HADOOP_OPTS="$HADOOP_OPTS -server -XX:+ExitOnOutOfMemoryError"
export HADOOP_NAMENODE_HEAPSIZE=1024
export HADOOP_DATANODE_HEAPSIZE=614
export HADOOP_JOB_HISTORYSERVER_HEAPSIZE=2252

#Esta es la linea que añadimos:
export HADOOP_NAMENODE_OPTS="-javaagent:/home/hadoop/jmx_prometheus_javaagent-0.16.1.jar=12345:/home/hadoop/config.yml $HADOOP_NAMENODE_OPTS"

