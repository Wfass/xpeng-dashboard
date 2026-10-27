.class Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/MockTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aar/client/MockTest;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/aar/client/MockTest;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;->this$0:Lcom/xiaopeng/aar/client/MockTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/client/MockTest;Lcom/xiaopeng/aar/client/MockTest$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/client/MockTest$DemoReceiver;-><init>(Lcom/xiaopeng/aar/client/MockTest;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 75
    invoke-static {}, Lcom/xiaopeng/aar/client/ApiManager;->get()Lcom/xiaopeng/aar/client/ApiManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/aar/client/ApiManager;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onReceive$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 85
    invoke-static {}, Lcom/xiaopeng/aar/client/ApiManager;->get()Lcom/xiaopeng/aar/client/ApiManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/aar/client/ApiManager;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/client/ApiManager;->get()Lcom/xiaopeng/aar/client/ApiManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/aar/client/ApiManager;->unSubscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NAPA_MOCK"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "v4"

    const-string/jumbo v2, "v3"

    const-string/jumbo v3, "v2"

    const-string/jumbo v4, "v1"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive  appId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", module : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",method : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",param : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Mock"

    invoke-static {v3, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$MockTest$DemoReceiver$k1AdBUgYTpDS6e2g9wFMBof-wNw;

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/xiaopeng/aar/client/-$$Lambda$MockTest$DemoReceiver$k1AdBUgYTpDS6e2g9wFMBof-wNw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "NAPA_MOCK_SUB"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    new-instance v1, Lcom/xiaopeng/aar/client/-$$Lambda$MockTest$DemoReceiver$BLwMOHtIglV4GxT7dqZQOFSTVqQ;

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/xiaopeng/aar/client/-$$Lambda$MockTest$DemoReceiver$BLwMOHtIglV4GxT7dqZQOFSTVqQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
