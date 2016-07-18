##drone环境变量说明


```
SERVER_ADDR=0.0.0.0:9898                                                     #服务监听地址端口
REMOTE_DRIVER=sryun                                                          #必须填写sryun                                  
REMOTE_CONFIG=https://omdev.riderzen.com:10080?open=true&skip_verify=true    #REMOTE配置 可以随便填写 不能空
RC_SRY_REG_INSECURE=true                                                     #上传镜像registry是否insecure
RC_SRY_REG_HOST=registry:5000                                                #镜像registry地址 
PUBLIC_MODE=true                                                             #默认为true
DATABASE_DRIVER="mysql"                                                      #连接的数据库类型 mysql
DATABASE_CONFIG="root:111111@tcp(mysql:3306)/drone?parseTime=true"           #数据库配置
AGENT_URI=registry:5000/library/drone-exec:latest                            #执行构建的镜像URI
PLUGIN_FILTER=registry:5000/library/* plugins/* registry.shurenyun.com/* registry.shurenyun.com/* devregistry.dataman-inc.com/library/*   #PLUGIN来源registry地址 多个空格分隔
PLUGIN_PREFIX="library/"                                                     #PLUGIN前缀
DOCKER_STORAGE=overlay                                                       #docker存储类型 
DOCKER_EXTRA_HOSTS="registry:REGISTRY harbor:HARBOR"                         #REGISTRY HARBOR替换为实际地址 
```
