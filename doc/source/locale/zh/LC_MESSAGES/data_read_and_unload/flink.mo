��                        �     �  �   �  �   �  V   _     �  �   �  ]   �  [        m     �      �  3   �  A   �  8   2  1   k  L   �  O   �  �   :          "  !   @  V   b  P   �  �   
	  �   �	  4   o
     �
  �   �
  s  �       �     �   �  7   E     }  �   �  2     J   G     �     �     �  ,   �  2   �  &   0  4   W  =   �  \   �  �   '  	   �  ,   �  	   �  0   �  A   #  �   e  ?        V     k  �   r   Apache Flink Apache Flink is an open-source, distributed stream-processing framework for stateful computations over unbounded and bounded data streams. Batch source bulk reads all data of the table as a snapshot, and data is exported at high throughput within a single transaction. If it fails, it will read all data again but as a different snapshot of different time. Currently the source supports projection pushdown. Filter pushdown will be added soon. Data Types Mapping Each Flink source subtask (parallelism instance) can read one or more Hologres shards, thus it's recommended to set the Flink source parallelism number to be smaller than or equal to Hologres shard number, to avoid wasting resources. Flink can achieve such functionality via Hologres temporal table and temporal table function. Flink uses the SQL syntax of FOR SYSTEM_TIME AS OF to query a temporal table, for instance: Hologres Batch Source Hologres Temporal Table Hologres Temporal Table Function Hologres Temporal Table and Temporal Table Function Hologres batch source is recomended to use with Flink batch jobs. Hologres connector right now only supports batch source. Hologres temporal table doesn't support cache yet Hologres temporal table is synchronous only, and doesn't support async mode. If you have any feature requests, please feel free to submit an issue on Github It is a very common use case in real-time data processing to join new data with a few existing datum as point-lookup from massive existing data pool, and the requirements is to do it as fast as possible to achieve throughput. Note: Please find the mapping here. The SQL connector can be defined: The syntax to define a temporal table in Flink is the same as defining a table source. Then users can run queries like the following, either in Table API or Flink SQL: This documentation will walk you through how to use Apache Flink to read data in Hologres, as well as joining streaming data with existing data in Hologres via temporal table and temporal table function. To use a temporal table function in Flink, users have to register the function first, and currently the registration can only happen in Flink Table API. To use batch source in Flink DataStream application: Usage When Hologres table is a row-based table, users can quickly lookup specific rows by primary keys with high throughput, in order to join with something else in Flink pipeline via temporal table functions and temporal table joins. Project-Id-Version: Hologres 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-04-21 10:38-0700
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh
Language-Team: zh <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 Apache Flink Apache Flink 是一个开源、分布式的流处理框架, 用来对无限流和有限流（批）数据进行有状态的计算。 批式source批量读取当前Hologres表snapshot的所有数据。读取的数据在一个transaction中。如果失败，会重新读取新时间下的Hologres表snapshot。 支持projection pushdown，可以只读某些column。 数据类型转换 Flink作业的每个并发可以读取一个或多个Hologres shard，建议配置Flink并发数小于等于Hologres 的shard数。 Flink可以通过时态表和时态函数实现。 Flink使用FOR SYSTEM_TIME AS OF语法去查询一个时态表，比如： Hologres 批式 Source Hologres时态表 Hologres时态函数 Hologres时态表和时态表函数 (维表) 批式source推荐在Flink batch作业中使用。 Hologres目前只支持批式source。 Hologres时态表（维表）当前暂不支持cache Hologres时态表（维表）当前暂不支持async模式。 如果有功能性需求，请提交至[Github](https://github.com/hologres/hologres-issues) 客户有非常普遍的业务场景是将Flink处理的数据与Hologres表中已有数据做join，并且要求速度快、吞吐高。 注意： 请到[这里](/data_load/flink.md)查看。 使用SQL 定义时态表的形式跟定义源表一致。 之后，用户可以在Table API或Flink SQL中跑如下query： 这篇文档将带你了解如何使用 Apache Flink 读取 Hologres 数据，和如何使用Hologres作为时态表和时态表函数 - 维表 - join Flink和Hologres的数据 用户需要先在Table API中注册时态函数才能使用。 使用DataStream API 用法 当Hologres表是行存表时，用户可以在Flink中跟据数据的主键（primary key）快速查询并定位到Hologres中的数据并保持高吞吐。 