.class Lcom/xiaopeng/xui/app/delegate/XTimeLogs;
.super Ljava/lang/Object;
.source "XTimeLogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mEndTime:J

.field private mHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private mTagTimeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTempTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static create()Lcom/xiaopeng/xui/app/delegate/XTimeLogs;
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;

    invoke-direct {v0}, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;-><init>()V

    return-object v0
.end method


# virtual methods
.method end()V
    .locals 4

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mEndTime:J

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method record(Ljava/lang/String;)V
    .locals 4

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTempTime:J

    sub-long/2addr v0, v2

    .line 39
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTempTime:J

    return-void
.end method

.method public run()V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total:"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v2, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mEndTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u03bcs"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, ", "

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method start(Ljava/lang/String;)V
    .locals 2

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mName:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mStartTime:J

    .line 34
    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XTimeLogs;->mTempTime:J

    return-void
.end method
