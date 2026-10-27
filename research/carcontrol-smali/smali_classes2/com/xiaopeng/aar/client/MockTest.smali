.class Lcom/xiaopeng/aar/client/MockTest;
.super Ljava/lang/Object;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;,
        Lcom/xiaopeng/aar/client/MockTest$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mock"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/MockTest$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/aar/client/MockTest;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/client/MockTest;
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/aar/client/MockTest$SingletonHolder;->access$100()Lcom/xiaopeng/aar/client/MockTest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method init()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const-string v0, "Mock"

    const-string v1, "init : "

    .line 41
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;-><init>(Lcom/xiaopeng/aar/client/MockTest;Lcom/xiaopeng/aar/client/MockTest$1;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "NAPA_MOCK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "NAPA_MOCK_SUB"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    const-string v0, "Mock"

    const-string v1, "release : "

    .line 53
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/aar/client/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method
