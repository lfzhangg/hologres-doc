��          �      �       H     I  -   X     �     �  
   �  d   �       p     <   �  n   �  =   1  A   o  Q   �           &        F     S     `  D   m     �  +   �  3   �  #         C  :   d  U   �                    	             
                                ALTER DATABASE ALTER DATABASE -- change an existing database Example Introduction Parameters SET FROM CURRENT：Save the session's current value of the parameter as the database-specific value. Synopsis _DEFAULT：_The default value of the specified configuration parameter which is the system-wide default setting. _RESET ALL：_Reset all configuration parameters to DEFAULT. _RESET：_It is equivalent to set configuration parameter to DEFAULT which is the system-wide default setting. _value：_The value of the specified configuration parameter. configuration_parameter: The configuration parameter of hologres. set time zone to GMT+8 (Beijing standard time) which is 8 hours earlier than GMT. Project-Id-Version: Hologres
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2020-05-15 16:48+0800
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
Last-Translator: 
Language-Team: 
X-Generator: Poedit 2.3.1
 ALTER DATABASE alter database：修改数据库配置 使用示例 命令介绍 参数说明 SET FROM CURRENT：设置配置参数为当前session的配置值。 命令格式 DEFAULT：指定配置参数为缺省值。 RESET ALL：重置数据库的所有配置参数。 RESET：重置单个配置参数。 value：指定配置参数值。 configuration_parameter：交互式分析  的配置参数 设置时区为比格林威治标准时间早8个小时的时区（北京时区）。 