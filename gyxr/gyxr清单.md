#	清单
====== 服务清单 ======

===== MySql Server 实例 =====
|**主机 IP**|** 类型 **|**端口**|**Username**|**Password**|**环境**|
|10.8.1.91| Docker |3306|dev|123456|Dev|
|10.8.1.91| Docker |33063|ga|123456|GA|

===== SQL Server 实例 =====
|**主机 IP**|** 类型 **|**端口**|**Username**|**Password**|**环境**|
|10.8.1.66| 虚拟机@h91 |sqlsrv66|域用户|
|10.8.1.68| 虚拟机@h91 |sqlsrv68|域用户|

===== Clickhouse 实例 =====
|**主机 IP**|** 类型 **|**端口**|**环境**|
|10.8.1.91| Docker  |9000|clickhouse_DEV_1 开发|
|10.8.1.91| Docker  |9009|clickhouse_GA_1 生产|
===== Web Server =====
| **主机 IP** |** 类型 **| ** 提供的服务 ** |
|10.8.1.50| 虚拟机@h30 | Dev 开发环境 |
|10.8.1.91| Docker | 对外演示环境GA webga_NG_1、webga_PHP_1 |
|10.8.1.91| Docker | 内部测试环境QA webqa_NG_1、webqa_PHP_1 |

===== 其他服务器 =====
| **主机 IP** |** 类型 **| ** 提供的服务 ** |
| <del>10.8.1.30</del> | <del>物理机</del> | <del>主域控</del> |
| 10.8.1.60 | 物理机 | 主域控、内网文件共享 \\it |



====== 数据库清单 ======
===== MySQL 开发环境 =====
^数据库                          ^创建日期    ^ 所属人 ^用途 ^
| bcw_sycm                      |            | 林静艳 | 百草味生意参谋数据 |
| db_data_admin                 |            | 何家亮 | 数据加速平台 |
| db_public                     |            | 何家亮 | 公共数据 |
| eff_baho                      |            | 黄灿 | 五项效率开发库 |
| huangcan_lxxl_yueying_sec     | 2019.12.12 | 黄灿 | 六项效率月影开发库 |
| huangcan123                   |            | 黄灿 | 用于开发实验 |
| lxxl_yueying                  |            | 黄灿 | 月影顶层项目 开发实验 |
| spl_admin                     |            | 何家亮 | 商品流管理后台 |
| spl_baho                      |            | 何家亮 | 商品流贝豪 开发实验 |
| spl_demo                      |            | 何家亮 | 商品流示例企业 开发实验 |
| spl_haiming                   |            | 何家亮 | 商品流海明 开发实验 |
| spl_haiming2                  |            | 何家亮 | 商品流海明 开发实验 |
| spl_lining                    |            | 何家亮 | 商品流李宁 开发实验 |
| spl_output                    |            | 林静艳 | 商品流算法输出结果 开发实验 |
| spl_public                    |            | 何家亮 | 公共天气数据 开发实验 |
| xfz_shop_db                   |            | 黄灿 | 消费者 |
| xfz_xcx_db                    |            | 黄灿 | 消费者小程序 |
| hive                          |            | 何家亮 | Hive 技术调研|
| huangcan_*                    |            | 黄灿   | 黄灿负责的项目开发库|
| pbi_home                      |            | 饶剑雄 | pbi管理后台|




===== MySQL 生产环境 =====
|** 数据库 **| ** 创建日期 ** |** 所属人 **| ** 用途 **|
| db_data_admin | | 何家亮 | 数据CH加速后台 |
| gy_public_data | | 何家亮 | 公共数据竞品 |
| mantis | | 何家亮 | 国誉 Bug 系统 |
| wxxl_demo_db_190308 | | 何家亮 | 顶层演示系统 |
| wxxl_yueying | | 黄灿 | 顶层月影项目 |
| spl_admin | | 何家亮 | 商品流管理后台 |
| spl_baho | | 何家亮 | 商品流贝豪 |
| spl_badina | | 何家亮 | 商品流示例企业 |
| spl_baicaowei | | 何家亮 | 商品流海明 |
| spl_guoyu | | 何家亮 | 商品流海明 |
| spl_huigou | | 何家亮 | 商品流李宁 |
| spl_haiming | | 何家亮 | 商品流李宁 |

===== SqlServer 开发环境 =====
国誉内部部署的 SqlServer 都认为是开发环境

^实例       ^数据库           ^负责人 ^用途^
|sqlsrv66   |*               |黄灿   |顶层项目数据库|
|sqlsrv65   |sql_baho        |何家亮 |贝豪商品流项目|
|:::        |sql_huigou      |何家亮 |惠购商品项目|
|sqlsrv68   |for_rbac        |何家亮 |PBI权限测试|
|:::        |spl_baicaowei   |何家亮 |百草味商品流项目|
|:::        |spl_haiming     |何家亮 |海明商品流项目|
|:::        |spl_huigou      |何家亮 |惠购商品路项目 已迁移到sqlsrv65|
 


====== Server 10.8.1.91 ======
===== 服务范围 =====
**项目**：商品流、顶层\\
**功能**：数据处理、数据存取、Web 系统呈现


===== 基本信息 =====
| OS | Ubuntu 16.04.5 LTS |
| Core(s) per socket | 8 |
| CPU(s)  | 16 |
| CPU op-mode(s) | 32-bit, 64-bit |
| Model Name | Intel(R) Xeon(R) CPU E5-2609 v4 @ 1.70GHz |
| Mem | 96 GiB |
| HDD | 8 TiB *2 |
| SSD | 2 TiB *1 |


===== 服务明细 =====
==== Docker 容器 ====
| clickhouse_DEV_1 | clickhouse 开发环境 |
| clickhouse_GA_1 | clickhouse 生产环境 |
| webqa_NG_1 | Web项目内部测试环境 Nginx |
| webqa_PHP_1 | Web项目内部测试环境 PHP |
| webga_NG_1 | Web项目对外演示环境 Nginx |
| webga_PHP_1 | Web项目对外演示环境 PHP |
| tabix_default_1 | clickhouse Web 客户端 |
| hejialiang_jupyter | 何家亮的 python 开发环境 |
| mysql_DEV_1 | MySQL 开发环境 |
| mysql_QA_1 | MySQL 测试环境 |
| mysql_GA_1 | MySQL 生产环境 |
| sqlsrv_GA_1 | Sql Server 生产环境 |
| es_DEV_1 | ElasticSearch 开发环境 |
| es_QA_1  | ElasticSearch 测试环境 |
| es_GA_1  | ElasticSearch 生产环境 |
| mysql_jvpro_1 | 不详 |
| mysql_jvdev_1 | 不详 | 
| mysql_data_1  | 不详 |

==== VMware ====
| h66.sqlsrv | Sql Server 66 |
| h68.sqlsrv | Sql Server 68 |
| reportServer70 | PowerBI 报表服务器  |
| sqlsrv67 | Sql Server 67 with SSAS 多维模型 |
| kettle_58tu | 黄聪 58tu 竞品数据对接工具 |



====== Server 10.8.1.30 ======
===== 服务范围 =====
**功能**：AD 主域控服务器


===== 基本信息 =====
| OS | Windows Server 2016 |
| 内存 | 16 GiB |
| 系统类型 | 64 位操作系统，基于 x64 的处理器 |
| 处理器 | Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz 3.00 GHz |

===== 服务明细 =====
==== Hyper-V 虚拟机 ====
| ip.dev.gy | PHP 项目开发环境 |

==== AD 主域控 ====
| guoyu.com |



====== Server 10.8.1.60 ======
===== 服务范围 =====
**功能**：AD 主域控服务器


===== 基本信息 =====
| OS | Windows Server 2016 |
| 内存 | 16 GiB |
| 系统类型 | 64 位操作系统，基于 x64 的处理器 |
| 处理器 | Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz |

===== 服务明细 =====
==== AD 辅域控 ====
| guoyu.com |

==== 内网文件共享 ====
| D:\shares | \\it\shares |
| D:\public| \\it\public |