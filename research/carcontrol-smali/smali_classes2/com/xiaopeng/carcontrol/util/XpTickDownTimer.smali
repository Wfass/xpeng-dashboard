.class public abstract Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;
.super Ljava/lang/Object;
.source "XpTickDownTimer.java"


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_PAUSE:I = 0x2

.field private static final MSG_RUN:I = 0x1

.field private static TAG:Ljava/lang/String; = "XpTickDownTimer"


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsFinished:Z

.field private mIsPaused:Z

.field private mRemainTime:J

.field private mTimerTag:Ljava/lang/String;

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "millisInFuture",
            "countDownInterval",
            "tag"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsFinished:Z

    .line 21
    new-instance v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;-><init>(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p5, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    .line 55
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTotalTime:J

    .line 56
    iput-wide p3, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCountdownInterval:J

    .line 57
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;J)J
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsFinished:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 68
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    .line 70
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->onCancel()V

    return-void
.end method

.method public isTiming()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsFinished:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation
.end method

.method public final pause()V
    .locals 4

    .line 85
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final resume()V
    .locals 4

    .line 77
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    .line 79
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final seek(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    monitor-enter p0

    rsub-int/lit8 p1, p1, 0x64

    int-to-long v0, p1

    .line 63
    :try_start_0
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTotalTime:J

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized start()Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;
    .locals 4

    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTimerTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mTotalTime:J

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mRemainTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iput-boolean v3, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsFinished:Z

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    .line 100
    :try_start_1
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mCancelled:Z

    .line 101
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mIsPaused:Z

    .line 102
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
