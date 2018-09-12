#标明创建的镜像底层所使用的镜像是
FROM centos
#标明这个镜像的作者
MAINTAINER huoyp
#设置环境变量  ENV是设置环境变量的意思
ENV REFRESHED_AT 2018-9-12
#更新 yum 资源库
RUN yum update -y
#下载 wget
RUN yum -y install wget
#切换工作目录 WORKDIR 意思是切换工作目录 yum的仓库里面有很多软件 /etc/yum.repos.d/
WORKDIR  /etc/yum.repos.d/
RUN wget http://mirrors.aliyun.com/repo/epel-6.repo
RUN yum -y install redis
#暴露端口
EXPOSE 6379

