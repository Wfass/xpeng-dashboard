.class Lcom/xiaopeng/aar/server/RunningConfig;
.super Ljava/lang/Object;
.source "RunningConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/server/RunningConfig$Receiver;,
        Lcom/xiaopeng/aar/server/RunningConfig$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunCg"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/aar/server/RunningConfig;
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/aar/server/RunningConfig$SingletonHolder;->access$000()Lcom/xiaopeng/aar/server/RunningConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/aar/server/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/xiaopeng/aar/server/RunningConfig$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/aar/server/RunningConfig$Receiver;-><init>(Lcom/xiaopeng/aar/server/RunningConfig;Lcom/xiaopeng/aar/server/RunningConfig$1;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/server/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    invoke-static {p1}, Lcom/xiaopeng/aar/Apps;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RunCg"

    invoke-static {v2, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/aar/server/RunningConfig;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
