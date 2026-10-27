.class Lcom/xiaopeng/aar/client/RunningConfig;
.super Ljava/lang/Object;
.source "RunningConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/RunningConfig$DemoReceiver;,
        Lcom/xiaopeng/aar/client/RunningConfig$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunCg"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/RunningConfig$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/RunningConfig;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/client/RunningConfig;
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/aar/client/RunningConfig$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/RunningConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method init()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "RunCg"

    const-string v1, "init : "

    .line 39
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/xiaopeng/aar/client/RunningConfig$DemoReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/aar/client/RunningConfig$DemoReceiver;-><init>(Lcom/xiaopeng/aar/client/RunningConfig;Lcom/xiaopeng/aar/client/RunningConfig$1;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NAPA_CONFIG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    const-string v0, "RunCg"

    const-string v1, "release : "

    .line 49
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/aar/client/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method
