# Set Chukwa-specific environment variables here.

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# The only required environment variable is JAVA_HOME.  All others are
# optional.  When running a distributed configuration it is best to
# set JAVA_HOME in this file, so that it is correctly defined on
# remote nodes.

# The java implementation to use.  Required.
export JAVA_HOME=/usr/lib/j2sdk1.5-sun

# Optional (.ie. will try sensible defaults)
# The location of the Hadoop the collector should use. Chukwa uses this to 
# find the hadoop classes or jars as well as the hadoop executables
# for running the mapreduce demux job. Chukwa will look first in
# HADOOP_HOME/build for a hadoop-*-core.jar file, 
# then in HADOOP_HOME/build/classes for hadoop classes.
# If you want to use a hadoop jar straight up, without
# a HADOOP_HOME/bin directory, you should set HADOOP_JAR (below), but
# then chukwa mapreduce jobs wont work. If HADOOP_HOME is not set, default
# assumes that this chukwa is living in hadoop's src/contrib directory, but
# if jars or classes can not be found using that default assumption, 
# Chukwa will default to the hadoop jars that come with it
# in the hadoopjars directory. 
export HADOOP_HOME="/home/user/Development/hadoop-trunk"
export HADOOP_CONF_DIR="/home/user/Development/hadoop-conf"

# Optional (i.e. will try sensible defaults)
# The location of a hadoop jars. Setting this will override the search for 
# hadoop jars described above (using HADOOP_HOME). If HADOOP_JAR is not set, 
# the default is to check HADOOP_HOME/build (above) for 
# jars or classes, if those are not found, uses hadoop jars which
# come with chukwa in $CHUKWA_HOME/hadoopjars. YOU SHOULD ONLY NEED TO 
# USE THIS IF YOU ARE RUNNING AN AGENT WITH ANOTHER HADOOP VERSION RUNNING
# ON THE SAME MACHINE.  Be careful if you use HDFS for chukwa storage, but 
# haven't built the hadoop classes or jar because chukwa will use the 
# default hadoop jars that come with chukwa, you can easily suffer
# errors due to protocol mismatch between hadoop versions.
#export HADOOP_JAR=${HADOOP_HOME}/build/hadoop-*-core.jar

# The location of chukwa data repository (in either HDFS or your local
# file system, whichever you are using)
export chukwaRecordsRepository="/chukwa/repos/"

# The directory where pid files are stored. CHUKWA_HOME/var/run by default.
export CHUKWA_PID_DIR=/tmp/chukwa/pidDir

# The location of chukwa logs, defaults to CHUKWA_HOME/logs
export CHUKWA_LOG_DIR=/tmp/chukwa/log

# The location to store chukwa data, defaults to CHUKWA_HOME/data
#export CHUKWA_DATA_DIR="${CHUKWA_HOME}/data"

# The location of torque pbsnodes command
#export nodeActivityCmde="

# The server which contain pbsnodes, qstat and tracejob.
#export TORQUE_SERVER=localhost

# The location contain torque binaries.
#export TORQUE_HOME=/usr/local/torque

# Instance name for chukwa deployment
export CHUKWA_IDENT_STRING=chukwa

export JAVA_PLATFORM=Linux-i386-32
export JAVA_LIBRARY_PATH=${HADOOP_HOME}/lib/native/${JAVA_PLATFORM}

# Datatbase driver name for storing Chukwa Data.
export JDBC_DRIVER=

# Database URL prefix for Database Loader.
export JDBC_URL_PREFIX=

# HICC Jetty Server heap memory settings 
# Specify min and max size of heap to JVM, e.g. 300M
export CHUKWA_HICC_MIN_MEM=
export CHUKWA_HICC_MAX_MEM=

