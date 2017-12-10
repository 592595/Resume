var ioc = {
    dataScource:{
        type:"com.alibaba.druid.pool.DruidDataSource",
        events:{
            create:"init",
            depose:'close'
        },
        fields:{
            url:"jdbc:mysql://localhost:3306/nutz_demo?useUnicode=true?characterEncoding=UTF-8",
            username:"root",
            password:"",
            testWhileIdle:true,
            validationQuery:"select 1 from dual",
            maxActive:100
        }
    },
    dao:{
        type:"org.nutz.dao.impl.NutDao",
        args:[{refer:"dataSource"}]
    }
};
