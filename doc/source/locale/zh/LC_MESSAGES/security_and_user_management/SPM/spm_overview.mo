��    
      l      �       �   
   �   �  �   c  �  �     $   �        >   &  D   e  X   �           E  $  �  j
  R       n     �  C   �  F   �  a   +                     
   	                     Background Hologres is compatible with Postgres and uses the same permission system of Postgres . The typical Postgres permission system is very strict. For example, in business scenarios, when business personnel try to authorize a user, he/she need to execute a lot of permission statements. And Different roles have different permissions, which is tedious. And a missing permission statement could cause authorization failure. Hologres provides a coarse-grained simple permission model (SPM) based on PostgreSQL permissions. The simple permission model takes DB as the dimension, and provides the four roles of admin (administrator), developer (developer), writer (reader and writer) and viewer (analyst). Users can manager a DB by a small number of permission management statement. It's hard to ask every user be an expert of the permission system of Postgres. Besides, the misuse of permission management, will not only bring security risk to the business, but also increase the user's management cost. Simple Permission Model Introduction Simple Permission Model Overview Simple permission model has six permission groups for each DB: This section will introduce the simple permission model of Hologres. To authorize new users, please refer to the usage of the simple permission model section Project-Id-Version: Hologres
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2020-05-15 16:30+0800
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
Last-Translator: 
Language-Team: 
X-Generator: Poedit 2.3.1
Language: zh
 背景 交互式分析兼容Postgres，使用与Postgres完全一致的权限系统（简称专家模型，详情可以参见专家模型）。典型的Postgres权限系统划分非常严格，在实际业务场景中使用时，业务人员想要给某个用户授权，需要执行大量的授权语句，不同的角色有不同的权限，在操作上非常繁琐，有时也会出现某条授权语句遗漏导致某个权限缺失的情况。同时，每新增一个用户就需要执行相同的批量授权语句，浪费大量时间。除此之外，尽管我们提供了Postgres的标准授权语句作为参考，但不同的业务方有不同的使用习惯，面对不同的权限，常常难以准确执行正确的授权语句，在权限管理方面容易混乱，这在一定程度上也会给业务带来一定的安全风险. 为解决以上业务痛点，交互式分析（Hologres）在PostgreSQL权限的基础上，提供一种粗粒度的简单权限模型（Simple Permission Model，SPM）。简单权限模型以DB作为维度，划分admin（管理员），developer（开发者），writer（读写者）以及viewer（分析师）四种角色，用户通过少量的权限管理函数，即可对DB中的对象进行方便且安全的权限管理. 整体而言，要求每个使用者都能熟练地基于PostgreSQL权限体系构建一套方便而安全的权限管理机制无疑是困难的。其次，权限管理方面一旦有所错漏或者混乱，不仅会给业务带来一定的安全风险，而且会加大用户的管理成本，时间成本和使用成本，事倍功半. 简单权限模型介绍 简单权限模型概览 在简单权限模型中，对每个DB而言，有6种权限等级: 本小节将会为您介绍基于交互式分析的简单权限模型. 关于如何使用简单权限模型为新用户授权，可以参见简单权限模型的使用. 