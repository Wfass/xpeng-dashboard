.class public Lcom/android/car/xpeng/remind/StatisticReport;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "StatisticReport.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 29
    return-void
.end method

.method private uploadStatisticInfo(Ljava/lang/String;)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .line 62
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 63
    .local v0, "dataLog":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    const-string v2, "StatisticReport"

    const-string v3, "Failed to get data log module"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v1

    .line 67
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 68
    .local v2, "builder":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    const-string v3, "CarService_performance"

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    const-string v4, ""

    .line 69
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v3

    const-string v4, ""

    .line 70
    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 72
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 74
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 76
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    .line 77
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v5

    .line 79
    .local v5, "event":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    invoke-interface {v0, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 80
    const-string v6, "StatisticReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadStatisticInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "event":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StatisticReport"

    const-string v5, "Failed to upload statistic info"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2110a805

    aput v2, v0, v1

    return-object v0
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 51
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2110a805

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/remind/StatisticReport;->uploadStatisticInfo(Ljava/lang/String;)I

    .line 54
    nop

    .line 58
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/android/car/xpeng/remind/CarRemindBase;->init()V

    .line 34
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/StatisticReport;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 35
    return-void
.end method
