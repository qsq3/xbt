g++ $@ -DEPOLL -DNDEBUG -I ../misc -I . -O3 -o xbt_tracker -std=c++0x \
	../misc/sql/database.cpp \
	../misc/sql/sql_query.cpp \
	../misc/bt_misc.cpp \
	../misc/bvalue.cpp \
	../misc/sha1.cpp \
	../misc/socket.cpp \
	../misc/virtual_binary.cpp \
	../misc/xcc_z.cpp \
	config.cpp \
	connection.cpp \
	epoll.cpp \
	server.cpp \
	tcp_listen_socket.cpp \
	tracker_input.cpp \
	transaction.cpp \
	udp_listen_socket.cpp \
	"XBT Tracker.cpp" \
	`mysql_config --libs` -lz && strip xbt_tracker
