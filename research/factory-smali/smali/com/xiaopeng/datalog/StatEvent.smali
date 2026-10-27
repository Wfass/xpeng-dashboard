.class public Lcom/xiaopeng/datalog/StatEvent;
.super Ljava/lang/Object;
.source "StatEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatEvent"

.field private static sMcuVersion:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# instance fields
.field private eventName:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_module_version"

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_network"

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_st_time"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_mcuver"

    invoke-static {}, Lcom/xiaopeng/datalog/StatEvent;->getMCUVer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_uid"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static getMCUVer()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/xiaopeng/datalog/StatEvent;->sMcuVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "persist.sys.mcu.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/datalog/StatEvent;->sMcuVersion:Ljava/lang/String;

    .line 142
    :cond_0
    sget-object v0, Lcom/xiaopeng/datalog/StatEvent;->sMcuVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "sys.mcu.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/datalog/StatEvent;->sMcuVersion:Ljava/lang/String;

    .line 146
    :cond_1
    sget-object v0, Lcom/xiaopeng/datalog/StatEvent;->sMcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method static getModuleNameFromEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, ""

    return-object v0

    .line 104
    :cond_0
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 106
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 109
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 159
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 181
    :pswitch_0
    goto :goto_0

    .line 179
    :pswitch_1
    const-string v2, "4G"

    return-object v2

    .line 177
    :pswitch_2
    const-string v2, "3G"

    return-object v2

    .line 166
    :pswitch_3
    const-string v2, "2G"

    return-object v2

    .line 183
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 184
    const-string v2, "WIFI"

    return-object v2

    .line 188
    :cond_1
    :goto_0
    const-string v2, ""

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    sget-object v0, Lcom/xiaopeng/datalog/StatEvent;->sVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 117
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/xiaopeng/datalog/StatEvent;->sVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatEvent"

    const-string v2, "getVersion fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string v1, "Unknown"

    return-object v1

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaopeng/datalog/StatEvent;->sVersion:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 85
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void

    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 93
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void

    .line 94
    :cond_1
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 77
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void

    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/datalog/StatEvent;->eventName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_module"

    iget-object v2, p0, Lcom/xiaopeng/datalog/StatEvent;->eventName:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/datalog/StatEvent;->getModuleNameFromEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    const-string v1, "_event"

    iget-object v2, p0, Lcom/xiaopeng/datalog/StatEvent;->eventName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->getInstance()Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/StatEvent;->properties:Ljava/util/Map;

    new-instance v2, Lcom/xiaopeng/datalog/StatEvent$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/StatEvent$1;-><init>(Lcom/xiaopeng/datalog/StatEvent;)V

    .line 63
    invoke-virtual {v2}, Lcom/xiaopeng/datalog/StatEvent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatEvent{eventName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/datalog/StatEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
