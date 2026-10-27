.class public Lcom/xiaopeng/factory/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FactoryTest"

.field public static mApp:Lcom/xiaopeng/factory/MyApplication;

.field private static sCar:Landroid/car/Car;

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 129
    new-instance v0, Lcom/xiaopeng/factory/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/MyApplication$1;-><init>(Lcom/xiaopeng/factory/MyApplication;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/MyApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static getCar()Landroid/car/Car;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/factory/MyApplication;->sCar:Landroid/car/Car;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/factory/MyApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private initTestResultFile()V
    .locals 2

    .line 107
    const-string v0, "/mnt/vendor/private/factory/test_result"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "FactoryTest"

    const-string v1, "test result file not exist /mnt/vendor/private/factory/test_result"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x4e

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/TestResultUtil;->createTestResultFile(B)Z

    .line 111
    :cond_0
    const-string v0, "/mnt/vendor/private/factory/aging_test_record"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string v0, "FactoryTest"

    const-string v1, "aging test record file not exist /mnt/vendor/private/factory/aging_test_record"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/xiaopeng/factory/utils/TestResultUtil;->createAgingTestResultFile()Z

    .line 115
    :cond_1
    return-void
.end method

.method private parseXmlConfig()V
    .locals 2

    .line 92
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "FactoryTest"

    const-string v1, "XML config parsing was failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private registerModule()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/factory/MyApplication;->removeEventBusLog()V

    .line 99
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 100
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-direct {v1, p0}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 101
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 102
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficeStaFlagInterceptor;-><init>()V

    .line 103
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->enableLogging()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    .line 104
    return-void
.end method

.method private removeEventBusLog()V
    .locals 2

    .line 119
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->builder()Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->sendNoSubscriberEvent(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->logNoSubscriberMessages(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->logSubscriberExceptions(Z)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;->installDefaultEventBus()Lorg/greenrobot/eventbus/EventBus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .line 48
    const-string v0, "FactoryTest"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    .local v0, "time":J
    invoke-virtual {p0}, Lcom/xiaopeng/factory/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/factory/MyApplication;->sContext:Landroid/content/Context;

    .line 55
    sput-object p0, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/factory/MyApplication;->parseXmlConfig()V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/factory/MyApplication;->initTestResultFile()V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/factory/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/lib/utils/ProcessUtils;->getCurProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :try_start_0
    sget-object v2, Lcom/xiaopeng/factory/MyApplication;->sContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/factory/MyApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v2, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/factory/MyApplication;->sCar:Landroid/car/Car;

    .line 65
    sget-object v2, Lcom/xiaopeng/factory/MyApplication;->sCar:Landroid/car/Car;

    invoke-virtual {v2}, Landroid/car/Car;->connect()V

    .line 66
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/view/UIUtils;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/xiaopeng/xui/Xui;->init(Landroid/app/Application;)V

    .line 68
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/IndivHelper;->initMain(Landroid/content/Context;)V

    .line 69
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/xiaopeng/lib/http/HttpsUtils;->init(Landroid/app/Application;Z)Z

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/factory/MyApplication;->registerModule()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v2, "FactoryTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/factory/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/utils/ProcessUtils;->getCurProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/xiaopeng/lib/http/HttpsUtils;->destroy()V

    .line 85
    sget-object v0, Lcom/xiaopeng/factory/MyApplication;->sCar:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/xiaopeng/factory/MyApplication;->sCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 89
    :cond_0
    return-void
.end method
