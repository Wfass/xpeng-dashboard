.class Lcom/xiaopeng/aar/server/RunningConfig$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "RunningConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/RunningConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/aar/server/RunningConfig;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/aar/server/RunningConfig;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/aar/server/RunningConfig$Receiver;->this$0:Lcom/xiaopeng/aar/server/RunningConfig;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/aar/server/RunningConfig;Lcom/xiaopeng/aar/server/RunningConfig$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/aar/server/RunningConfig$Receiver;-><init>(Lcom/xiaopeng/aar/server/RunningConfig;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo p1, "v1"

    .line 48
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "v2"

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "onReceive  v1 : %s , v2 : %s "

    .line 50
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunCg"

    invoke-static {v1, v0}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logLevel"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p2}, Lcom/xiaopeng/aar/utils/Utils;->parse(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_0

    .line 55
    invoke-static {p1}, Lcom/xiaopeng/aar/utils/LogUtils;->setLogLevel(I)V

    :cond_0
    return-void
.end method
