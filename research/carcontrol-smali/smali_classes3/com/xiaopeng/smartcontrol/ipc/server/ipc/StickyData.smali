.class public Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;
.super Ljava/lang/Object;
.source "StickyData.java"


# instance fields
.field private data:Ljava/lang/String;

.field private expireInterval:J

.field private method:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "data",
            "expireInterval"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->module:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->method:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->data:Ljava/lang/String;

    .line 17
    iput-wide p4, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->expireInterval:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->timestamp:J

    return-void
.end method


# virtual methods
.method public refresh(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->data:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->timestamp:J

    return-void
.end method

.method public send(Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 27
    iget-wide v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->expireInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->timestamp:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->expireInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 30
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->module:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->method:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->data:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "sticky data send %s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickyData"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->module:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/StickyData;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
