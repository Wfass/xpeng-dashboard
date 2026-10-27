.class public Lcom/xiaopeng/devtools/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static qx:Lcom/xiaopeng/devtools/MyApplication;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 156
    new-instance v0, Lcom/xiaopeng/devtools/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/MyApplication$1;-><init>(Lcom/xiaopeng/devtools/MyApplication;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/MyApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static eY()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method private eZ()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/a/b;->az(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "DevTools"

    const-string v1, "XML config parsing was failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static eo()Landroid/car/Car;
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/c;->eo()Landroid/car/Car;

    move-result-object v0

    return-object v0
.end method

.method private fa()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/devtools/MyApplication;->fb()V

    .line 132
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 133
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 134
    const-class v0, Lcom/xiaopeng/datalog/a;

    new-instance v1, Lcom/xiaopeng/datalog/a;

    invoke-direct {v1, p0}, Lcom/xiaopeng/datalog/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 135
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 136
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->enableLogging()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    .line 137
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->fc()Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->init()V

    .line 138
    return-void
.end method

.method private fb()V
    .locals 2

    .line 142
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->builder()Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;->installDefaultEventBus()Lorg/greenrobot/eventbus/EventBus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :goto_0
    return-void
.end method

.method public static fc()Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;
    .locals 2

    .line 153
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/devtools/MyApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 115
    const-string v0, "DevTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachBaseContext, default locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/l;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "DevTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachBaseContext, set locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/utils/l;->a(Landroid/content/Context;Ljava/util/Locale;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 122
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 6

    .line 60
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/devtools/MyApplication;->sContext:Landroid/content/Context;

    .line 66
    sput-object p0, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/lib/utils/f;->oN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    const-string v2, "DevTools"

    const-string v3, "start init application"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/devtools/MyApplication;->eZ()V

    .line 75
    sget-object v2, Lcom/xiaopeng/devtools/MyApplication;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/c;->init(Landroid/content/Context;)V

    .line 77
    sget-object v2, Lcom/xiaopeng/devtools/MyApplication;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/b;->init(Landroid/content/Context;)V

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/d/b;->init(Landroid/content/Context;)V

    .line 86
    invoke-static {p0}, Lcom/xiaopeng/xui/a;->a(Landroid/app/Application;)V

    .line 88
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/j;->X(Landroid/content/Context;)V

    .line 90
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/xiaopeng/lib/http/b;->a(Landroid/app/Application;Z)Z

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/devtools/MyApplication;->fa()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :goto_0
    const-string v2, "DevTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/f;->oN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->dispose()V

    .line 108
    invoke-static {}, Lcom/xiaopeng/lib/http/b;->destroy()V

    .line 109
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/c;->dN()V

    .line 111
    :cond_0
    return-void
.end method
