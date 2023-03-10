# Redis安装测试

## 一、redis简介
Redis（Remote Dictionary Server )，即远程字典服务，是一个开源的使用ANSI C语言编写、支持网络、可基于内存亦可持久化的日志型、Key-Value数据库，并提供多种语言的API。  

redis是一个key-value存储系统。和Memcached类似，它支持存储的value类型相对更多，包括string(字符串)、list(链表)、set(集合)、zset(sorted set --有序集合)和hash（哈希类型）。这些数据类型都支持push/pop、add/remove及取交集并集和差集及更丰富的操作，而且这些操作都是原子性的。在此基础上，redis支持各种不同方式的排序。与memcached一样，为了保证效率，数据都是缓存在内存中。区别的是redis会周期性的把更新的数据写入磁盘或者把修改操作写入追加的记录文件，并且在此基础上实现了master-slave(主从)同步。  

Redis 是一个高性能的key-value数据库。 redis的出现，很大程度补偿了memcached这类key/value存储的不足，在部 分场合可以对关系数据库起到很好的补充作用。它提供了Java，C/C++，C#，PHP，JavaScript，Perl，Object-C，Python，Ruby，Erlang等客户端，使用很方便。  

Redis支持主从同步。数据可以从主服务器向任意数量的从服务器上同步，从服务器可以是关联其他从服务器的主服务器。这使得Redis可执行单层树复制。存盘可以有意无意的对数据进行写操作。由于完全实现了发布/订阅机制，使得从数据库在任何地方同步树时，可订阅一个频道并接收主服务器完整的消息发布记录。同步对读取操作的可扩展性和数据冗余很有帮助。


chatgpt say:  
Redis比memcache更好的地方有：  
+ 1.Redis支持更多的数据类型，包括字符串、列表、集合、有序集合等；  
+ 2.Redis支持持久化，可以将数据保存到磁盘，而memcache不支持；  
+ 3.Redis支持数据备份，可以将数据备份到其他服务器，而memcache不支持；  
+ 4.Redis支持事务，可以将多个操作作为一个原子操作执行，而memcache不支持；  
+ 5.Redis支持分布式，可以将数据分布到多台服务器上，而memcache不支持。


## 二、redis安装

[redis官网](https://redis.io/download/#redis-downloads) (https://redis.io/download/#redis-downloads)


> 1、官网下载Redis  
选择[Redis.tar.gz版本](https://download.redis.io/redis-stable.tar.gz?_gl=1*jug960*_ga*ODQ5NDkzNjg5LjE2NzcwODA2Nzg.*_ga_8BKGRQKRPV*MTY3NzA4MDY3OC4xLjEuMTY3NzA4MDY5OC40MC4wLjA.)

>2、解压redis.tar.gz  
命令: `tar zxvf redis-6.0.9.tar.gz`

>3、拷贝redis到指定目录
命令：`mv redis-6.0.9 /usr/local/`

>4、编译安装redis  
命令如下:  
```
sudo make
sudo make install
```
>5、运行redis  
命令：`redis-server`

>6、检查redis是否运行
命令:  
`ps aux|grep redis`

>7、redis-cli连接redis服务  
`redis-cli -h 127.0.0.1 -p 6379`

>8、停止redis-cli
`shutdown redis-cli`


## 三、redis简单使用  
---
### 1、字符串命令
下表列出了常用的 redis 字符串命令：

```
序号    命令及描述
1    SET key value 设置指定 key 的值
2    GET key 获取指定 key 的值。
3    GETRANGE key start end 返回 key 中字符串值的子字符
4    GETSET key value 将给定 key 的值设为 value ，并返回 key 的旧值(old value)。
5    GETBIT key offset 对 key 所储存的字符串值，获取指定偏移量上的位(bit)。
6    [MGET key1 key2…] 获取所有(一个或多个)给定 key 的值。
7    SETBIT key offset value 对 key 所储存的字符串值，设置或清除指定偏移量上的位(bit)。
8    SETEX key seconds value 将值 value 关联到 key ，并将 key 的过期时间设为 seconds (以秒为单位)。
9    SETNX key value 只有在 key 不存在时设置 key 的值。
10    SETRANGE key offset value 用 value 参数覆写给定 key 所储存的字符串值，从偏移量 offset 开始。
11    STRLEN key 返回 key 所储存的字符串值的长度。
12    [MSET key value key value …] 同时设置一个或多个 key-value 对。
13    [MSETNX key value key value …] 同时设置一个或多个 key-value 对，当且仅当所有给定 key 都不存在。
14    PSETEX key milliseconds value 这个命令和 SETEX 命令相似，但它以毫秒为单位设置 key 的生存时间，而不是像 SETEX 命令那样，以秒为单位。
15    INCR key 将 key 中储存的数字值增一。
16    INCRBY key increment 将 key 所储存的值加上给定的增量值（increment） 。
17    INCRBYFLOAT key increment 将 key 所储存的值加上给定的浮点增量值（increment） 。
18    DECR key 将 key 中储存的数字值减一。
19    DECRBY key decrement key 所储存的值减去给定的减量值（decrement） 。
20    APPEND key value 如果 key 已经存在并且是一个字符串， APPEND 命令将指定的 value 追加到该 key 原来值（value）的末尾。
```

---
### 2、哈希命令
下表列出了 redis hash 基本的相关命令：
```
序号    命令及描述
1    [HDEL key field1 field2] 删除一个或多个哈希表字段
2    HEXISTS key field 查看哈希表 key 中，指定的字段是否存在。
3    HGET key field 获取存储在哈希表中指定字段的值。
4    HGETALL key 获取在哈希表中指定 key 的所有字段和值
5    HINCRBY key field increment 为哈希表 key 中的指定字段的整数值加上增量 increment 。
6    HINCRBYFLOAT key field increment 为哈希表 key 中的指定字段的浮点数值加上增量 increment 。
7    HKEYS key 获取所有哈希表中的字段
8    HLEN key 获取哈希表中字段的数量
9    [HMGET key field1 field2] 获取所有给定字段的值
10    [HMSET key field1 value1 field2 value2 ] 同时将多个 field-value (域-值)对设置到哈希表 key 中。
11    HSET key field value 将哈希表 key 中的字段 field 的值设为 value 。
12    HSETNX key field value 只有在字段 field 不存在时，设置哈希表字段的值。
13    HVALS key 获取哈希表中所有值。
14    [HSCAN key cursor MATCH pattern] [COUNT count] 迭代哈希表中的键值对。
```

---
### 3、列表命令
下表列出了列表相关的基本命令：
```
序号    命令及描述
1    [BLPOP key1 key2 ] timeout 移出并获取列表的第一个元素， 如果列表没有元素会阻塞列表直到等待超时或发现可弹出元素为止。
2    [BRPOP key1 key2 ] timeout 移出并获取列表的最后一个元素， 如果列表没有元素会阻塞列表直到等待超时或发现可弹出元素为止。
3    BRPOPLPUSH source destination timeout 从列表中弹出一个值，将弹出的元素插入到另外一个列表中并返回它； 如果列表没有元素会阻塞列表直到等待超时或发现可弹出元素为止。
4    LINDEX key index 通过索引获取列表中的元素
5    LINSERT key BEFORE|AFTER pivot value 在列表的元素前或者后插入元素
6    LLEN key 获取列表长度
7    LPOP key 移出并获取列表的第一个元素
8    [LPUSH key value1 value2] 将一个或多个值插入到列表头部
9    LPUSHX key value 将一个值插入到已存在的列表头部
10    LRANGE key start stop 获取列表指定范围内的元素
11    LREM key count value 移除列表元素
12    LSET key index value 通过索引设置列表元素的值
13    LTRIM key start stop 对一个列表进行修剪(trim)，就是说，让列表只保留指定区间内的元素，不在指定区间之内的元素都将被删除。
14    RPOP key 移除列表的最后一个元素，返回值为移除的元素。
15    RPOPLPUSH source destination 移除列表的最后一个元素，并将该元素添加到另一个列表并返回
16    [RPUSH key value1 value2] 在列表中添加一个或多个值
17    RPUSHX key value 为已存在的列表添加值
```

---
### 4、集合命令
下表列出了 Redis 集合基本命令：

```
序号    命令及描述
1    [SADD key member1 member2] 向集合添加一个或多个成员
2    SCARD key 获取集合的成员数
3    [SDIFF key1 key2] 返回第一个集合与其他集合之间的差异。
4    [SDIFFSTORE destination key1 key2] 返回给定所有集合的差集并存储在 destination 中
5    [SINTER key1 key2] 返回给定所有集合的交集
6    [SINTERSTORE destination key1 key2] 返回给定所有集合的交集并存储在 destination 中
7    SISMEMBER key member 判断 member 元素是否是集合 key 的成员
8    SMEMBERS key 返回集合中的所有成员
9    SMOVE source destination member 将 member 元素从 source 集合移动到 destination 集合
10    SPOP key 移除并返回集合中的一个随机元素
11    [SRANDMEMBER key count] 返回集合中一个或多个随机数
12    [SREM key member1 member2] 移除集合中一个或多个成员
13    [SUNION key1 key2] 返回所有给定集合的并集
14    [SUNIONSTORE destination key1 key2] 所有给定集合的并集存储在 destination 集合中
15    [SSCAN key cursor MATCH pattern] [COUNT count] 迭代集合中的元素
```

---
### 5、有序集合命令

下表列出了 redis 有序集合的基本命令:
```
序号    命令及描述
1    [ZADD key score1 member1 score2 member2] 向有序集合添加一个或多个成员，或者更新已存在成员的分数
2    ZCARD key 获取有序集合的成员数
3    ZCOUNT key min max 计算在有序集合中指定区间分数的成员数
4    ZINCRBY key increment member 有序集合中对指定成员的分数加上增量 increment
5    [ZINTERSTORE destination numkeys key key …] 计算给定的一个或多个有序集的交集并将结果集存储在新的有序集合 destination 中
6    ZLEXCOUNT key min max 在有序集合中计算指定字典区间内成员数量
7    [ZRANGE key start stop WITHSCORES] 通过索引区间返回有序集合指定区间内的成员
8    [ZRANGEBYLEX key min max LIMIT offset count] 通过字典区间返回有序集合的成员
9    [ZRANGEBYSCORE key min max WITHSCORES] [LIMIT] 通过分数返回有序集合指定区间内的成员
10    ZRANK key member 返回有序集合中指定成员的索引
11    [ZREM key member member …] 移除有序集合中的一个或多个成员
12    ZREMRANGEBYLEX key min max 移除有序集合中给定的字典区间的所有成员
13    ZREMRANGEBYRANK key start stop 移除有序集合中给定的排名区间的所有成员
14    ZREMRANGEBYSCORE key min max 移除有序集合中给定的分数区间的所有成员
15    [ZREVRANGE key start stop WITHSCORES] 返回有序集中指定区间内的成员，通过索引，分数从高到低
16    [ZREVRANGEBYSCORE key max min WITHSCORES] 返回有序集中指定分数区间内的成员，分数从高到低排序
17    ZREVRANK key member 返回有序集合中指定成员的排名，有序集成员按分数值递减(从大到小)排序
18    ZSCORE key member 返回有序集中，成员的分数值
19    [ZUNIONSTORE destination numkeys key key …] 计算给定的一个或多个有序集的并集，并存储在新的 key 中
20    [ZSCAN key cursor MATCH pattern] [COUNT count] 迭代有序集合中的元素（包括元素成员和元素分值）
```

## redis参考
[redis百度百科](https://baike.baidu.com/item/Redis/6549233?fr=aladdin)

[mac安装redis+使用超简单教程](https://blog.csdn.net/weixin_50072355/article/details/124019374)

[redis如何持久化](https://www.cnblogs.com/linhuiy/p/16040516.html)

[Redis和Memcache区别，优缺点对比](https://www.cnblogs.com/JavaBlackHole/p/7726195.html)