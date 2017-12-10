package com.example.nutzdemo;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.SetupBy;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

@SetupBy(value = MainSetUp.class)
@IocBy(type = ComboIocProvider.class,args = {"*js","ion/",

        "*anno",
        "con.example.nutzdemo",
        "*tx",//事物拦截aop
        "*async"})//异步执行aop
@IocBean
@Modules(scanPackage = true)
public class MainModule {
}
