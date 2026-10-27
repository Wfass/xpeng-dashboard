.class Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl$1;
.super Landroid/os/Handler;
.source "PageMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;Landroid/os/Looper;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl$1;->this$0:Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "PageMonitorImpl"

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->startTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->interactiveTime:J

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 31
    iput v3, v0, Landroid/os/Message;->what:I

    .line 32
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/page/impl/PageMonitorImpl$1;->sendMessage(Landroid/os/Message;)Z

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_IDLE_FIRST:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
