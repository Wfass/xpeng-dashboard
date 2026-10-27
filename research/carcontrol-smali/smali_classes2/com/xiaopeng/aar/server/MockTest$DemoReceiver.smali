.class Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MockTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/MockTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aar/server/MockTest;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/aar/server/MockTest;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;->this$0:Lcom/xiaopeng/aar/server/MockTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/MockTest;Lcom/xiaopeng/aar/server/MockTest$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;-><init>(Lcom/xiaopeng/aar/server/MockTest;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "1"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ServerManager;->send(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Lcom/xiaopeng/aar/server/ServerManager;->get()Lcom/xiaopeng/aar/server/ServerManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/aar/server/ServerManager;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo p1, "v1"

    .line 58
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "v2"

    .line 59
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v3"

    .line 60
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v4"

    .line 61
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive  module : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mock"

    invoke-static {v3, v2}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v2, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;

    invoke-direct {v2, p2, p1, v0, v1}, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/aar/utils/ThreadUtils$MULTI;->post(Ljava/lang/Runnable;)V

    return-void
.end method
