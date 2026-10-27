.class public Lcom/xiaopeng/datalog/d;
.super Ljava/lang/Object;
.source "StatEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;


# static fields
.field private static pY:Ljava/lang/String;

.field private static pZ:Ljava/lang/String;


# instance fields
.field private pX:Ljava/lang/String;

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
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v1, "_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v1, "_module_version"

    invoke-static {p1}, Lcom/xiaopeng/datalog/d;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v1, "_network"

    invoke-static {p1}, Lcom/xiaopeng/datalog/d;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v0, "_st_time"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v0, "_mcuver"

    invoke-static {}, Lcom/xiaopeng/datalog/d;->eQ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v0, "_uid"

    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oP()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static aa(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 158
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 159
    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 181
    :pswitch_0
    goto :goto_0

    .line 179
    :pswitch_1
    const-string p0, "4G"

    return-object p0

    .line 177
    :pswitch_2
    const-string p0, "3G"

    return-object p0

    .line 166
    :pswitch_3
    const-string p0, "2G"

    return-object p0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 184
    const-string p0, "WIFI"

    return-object p0

    .line 188
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0

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

.method static bg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string p0, ""

    return-object p0

    .line 104
    :cond_0
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    .line 109
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static eQ()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/xiaopeng/datalog/d;->pY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "persist.sys.mcu.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/datalog/d;->pY:Ljava/lang/String;

    .line 142
    :cond_0
    sget-object v0, Lcom/xiaopeng/datalog/d;->pY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "sys.mcu.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/datalog/d;->pY:Ljava/lang/String;

    .line 146
    :cond_1
    sget-object v0, Lcom/xiaopeng/datalog/d;->pY:Ljava/lang/String;

    return-object v0
.end method

.method static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 114
    sget-object v0, Lcom/xiaopeng/datalog/d;->pZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 117
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/xiaopeng/datalog/d;->pZ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 118
    :catch_0
    move-exception p0

    .line 119
    const-string v0, "StatEvent"

    const-string v1, "getVersion fail!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const-string p0, "Unknown"

    return-object p0

    .line 123
    :cond_0
    :goto_0
    sget-object p0, Lcom/xiaopeng/datalog/d;->pZ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->pX:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 85
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

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

    .line 93
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

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

    .line 77
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

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

    .line 68
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

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

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/datalog/d;->pX:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v1, "_module"

    iget-object v2, p0, Lcom/xiaopeng/datalog/d;->pX:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/datalog/d;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    const-string v1, "_event"

    iget-object v2, p0, Lcom/xiaopeng/datalog/d;->pX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lcom/xiaopeng/datalog/b/b;->eW()Lcom/xiaopeng/datalog/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/b/b;->eX()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/d;->properties:Ljava/util/Map;

    new-instance v2, Lcom/xiaopeng/datalog/d$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/d$1;-><init>(Lcom/xiaopeng/datalog/d;)V

    .line 63
    invoke-virtual {v2}, Lcom/xiaopeng/datalog/d$1;->getType()Ljava/lang/reflect/Type;

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

    iget-object v1, p0, Lcom/xiaopeng/datalog/d;->pX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
