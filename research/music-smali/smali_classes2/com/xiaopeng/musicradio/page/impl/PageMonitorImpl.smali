.class public Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;
.super Ljava/lang/Object;
.source "PageMonitorImpl.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/page/common/IPageMonitor;


# static fields
.field private static final MESSAGE_IDLE_FIRST:I = 0x1

.field private static final MESSAGE_IDLE_SECOND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PageMonitorImpl"


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private final monitorMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/page/data/PageMonitorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl$1;-><init>(Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private generatePageData(Ljava/lang/String;)V
    .locals 3

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->startTime:J

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public collectStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectStage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;

    if-nez p1, :cond_1

    return-void

    .line 90
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->step(Ljava/lang/String;)V

    return-void
.end method

.method public endMonitor(Ljava/lang/String;)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endMonitor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PageMonitorImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->endMonitorTime:J

    .line 71
    iget-wide v3, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->endMonitorTime:J

    iget-wide v5, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->startTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->endRenderTime:J

    .line 72
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 73
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 74
    iput v0, v1, Landroid/os/Message;->what:I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endMonitor sendMessage :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isMonitorEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startMonitor(Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMonitor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PageMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->monitorMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;->generatePageData(Ljava/lang/String;)V

    return-void
.end method
