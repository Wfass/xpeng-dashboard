.class public Lcom/xiaopeng/xuiservice/utils/TimingLog;
.super Ljava/lang/Object;
.source "TimingLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;
    }
.end annotation


# instance fields
.field private DEFAULT_CONFIG:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

.field private mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

.field private final mStartTimes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mStartTimes:Ljava/util/Deque;

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;-><init>(Lcom/xiaopeng/xuiservice/utils/TimingLog;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->DEFAULT_CONFIG:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->DEFAULT_CONFIG:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mTag:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mThreadId:J

    .line 23
    return-void
.end method

.method private assertSameThread()V
    .locals 5

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 55
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mTag:Ljava/lang/String;

    const-string v2, "TimingLog call start/end not same thread"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method private logd(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " curtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public endLog()V
    .locals 0

    .line 51
    return-void
.end method

.method public logDuration(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->isTimeoutLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;->getMaxTime()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May took too long time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/TimingLog;->mConfig:Lcom/xiaopeng/xuiservice/utils/TimingLog$TimeConfig;

    .line 27
    return-void
.end method

.method public startLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    return-void
.end method
