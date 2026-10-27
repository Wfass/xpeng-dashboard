.class public Lcom/xiaopeng/datalog/MoleEvent;
.super Ljava/lang/Object;
.source "MoleEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;


# static fields
.field public static final KEY_BUTTON_ID:Ljava/lang/String; = "button_id"

.field public static final KEY_PAGE_ID:Ljava/lang/String; = "page_id"


# instance fields
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_module_version"

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_network"

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_st_time"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_mcuver"

    invoke-static {}, Lcom/xiaopeng/datalog/StatEvent;->getMCUVer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_uid"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method checkValid()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "page_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "button_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    const-string v1, "_module"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call setModule() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call setButtonId() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call setPageId() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 51
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method put(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 58
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method put(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 44
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 37
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-static {}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->getInstance()Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/MoleEvent;->properties:Ljava/util/Map;

    new-instance v2, Lcom/xiaopeng/datalog/MoleEvent$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/datalog/MoleEvent$1;-><init>(Lcom/xiaopeng/datalog/MoleEvent;)V

    .line 67
    invoke-virtual {v2}, Lcom/xiaopeng/datalog/MoleEvent$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method
