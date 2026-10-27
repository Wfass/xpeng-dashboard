.class public Lcom/xiaopeng/aar/utils/TimeLogs;
.super Ljava/lang/Object;
.source "TimeLogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mEndTime:J

.field private mIsMicrosecond:Z

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTagTimeMap:Ljava/util/LinkedHashMap;
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static create()Lcom/xiaopeng/aar/utils/TimeLogs;
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/aar/utils/TimeLogs;

    invoke-direct {v0}, Lcom/xiaopeng/aar/utils/TimeLogs;-><init>()V

    return-object v0
.end method


# virtual methods
.method public end()V
    .locals 4

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mEndTime:J

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/aar/utils/ThreadUtils$SINGLE;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public record(Ljava/lang/String;)V
    .locals 4

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTempTime:J

    sub-long/2addr v0, v2

    .line 43
    iget-object v2, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTempTime:J

    return-void
.end method

.method public run()V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "total:"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean v2, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mIsMicrosecond:Z

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_0

    .line 58
    iget-wide v5, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mEndTime:J

    div-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u03bcs"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    iget-wide v5, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mEndTime:J

    div-long/2addr v5, v3

    div-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v5, ", "

    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v5, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mIsMicrosecond:Z

    if-eqz v5, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v3

    div-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTagTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 75
    const-class v0, Lcom/xiaopeng/aar/utils/TimeLogs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMicrosecond(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mIsMicrosecond:Z

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mName:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mStartTime:J

    .line 38
    iput-wide v0, p0, Lcom/xiaopeng/aar/utils/TimeLogs;->mTempTime:J

    return-void
.end method
