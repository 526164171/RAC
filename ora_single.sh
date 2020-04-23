# prepare env
mkdir /opt/oracle
echo "192.168.6.44 oracle1" >> /etc/hosts

yum -y install oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
passwd oracle

chown -R oracle:oinstall /opt/oracle
chmod -R 755 /opt/oracle
rpm -ivh oracle-database-ee-19c-1.0-1.x86_64.rpm

cd /etc/sysconfig
cp oracledb_ORCLCDB-19c.conf oracle_db1-19c.conf
cat oracle_db1-19c.conf