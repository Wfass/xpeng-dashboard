.class public Lcom/xiaopeng/carcontrol/CarControlNapaServer;
.super Ljava/lang/Object;
.source "CarControlNapaServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/CarControlNapaServer$Holder;
    }
.end annotation


# static fields
.field private static final PACKAGE_SMART_CONTROL:Ljava/lang/String; = "com.xiaopeng.smartcontrol"

.field private static final PACKAGE_SMART_NAPA:Ljava/lang/String; = "com.xiaopeng.napa"

.field private static final TAG:Ljava/lang/String; = "CarControlNapaServer"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/CarControlNapaServer$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/CarControlNapaServer;-><init>()V

    return-void
.end method

.method public static callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "params"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 81
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 82
    check-cast p2, Ljava/util/Map;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 84
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 86
    :try_start_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 88
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object p2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, p1, v1, v0}, Lcom/xiaopeng/aar/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/xiaopeng/aar/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, p0, p1, v1, v0}, Lcom/xiaopeng/aar/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/CarControlNapaServer;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/CarControlNapaServer$Holder;->access$000()Lcom/xiaopeng/carcontrol/CarControlNapaServer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/CarControlNapaServer$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/CarControlNapaServer$1;-><init>(Lcom/xiaopeng/carcontrol/CarControlNapaServer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerManager;->setServerListener(Lcom/xiaopeng/aar/server/ServerListener;)V

    .line 62
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aar/server/ServerManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initConfig()V
    .locals 2

    .line 66
    new-instance v0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->setWaitInit(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->useMock(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->setSendAsync(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->setAutoUnSubscribeWhenNaPaDied(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 73
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->setLogLevel(I)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    const-string v1, "com.xiaopeng.smartcontrol"

    .line 74
    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->setTargetPackage(Ljava/lang/String;)Lcom/xiaopeng/aar/server/ServerConfig$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->build()Lcom/xiaopeng/aar/server/ServerConfig;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/aar/server/ServerManager;->initConfig(Lcom/xiaopeng/aar/server/ServerConfig;)V

    return-void
.end method
