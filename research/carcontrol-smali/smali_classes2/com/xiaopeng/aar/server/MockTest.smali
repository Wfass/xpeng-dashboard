.class Lcom/xiaopeng/aar/server/MockTest;
.super Ljava/lang/Object;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;,
        Lcom/xiaopeng/aar/server/MockTest$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mock"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/MockTest$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/MockTest;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/server/MockTest;
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/aar/server/MockTest$SingletonHolder;->access$100()Lcom/xiaopeng/aar/server/MockTest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;-><init>(Lcom/xiaopeng/aar/server/MockTest;Lcom/xiaopeng/aar/server/MockTest$1;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    invoke-static {p1}, Lcom/xiaopeng/aar/Apps;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_MOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mock"

    invoke-static {v2, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method release(Landroid/content/Context;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "Mock"

    const-string v1, "release : "

    .line 48
    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/aar/server/MockTest;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
