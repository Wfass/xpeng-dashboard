.class public Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;
.super Ljava/lang/Object;
.source "FPSFrameCallBack.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static SKIPPED_FRAME_ANR_TRIGGER:J = 0x0L

.field private static SKIPPED_FRAME_WARNING_LIMIT:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "FPSFrameCallBack"


# instance fields
.field private mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

.field private mFrameIntervalNanos:J

.field private mLastFrameTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "blockHandler"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->getRefreshRate(Landroid/content/Context;)F

    move-result p1

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, p1

    float-to-long v0, v0

    .line 26
    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mFrameIntervalNanos:J

    .line 27
    sget-wide v0, Lcom/xiaopeng/lib/bughunter/anr/Config;->THRESHOLD_TIME:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mFrameIntervalNanos:J

    div-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_WARNING_LIMIT:J

    const-wide v0, 0x12a05f200L

    .line 28
    div-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_ANR_TRIGGER:J

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SKIPPED_FRAME_WARNING_LIMIT : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_WARNING_LIMIT:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ,SKIPPED_FRAME_ANR_TRIGGER : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_ANR_TRIGGER:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FPSFrameCallBack"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/bughunter/anr/Config;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    return-void
.end method

.method private getRefreshRate(Landroid/content/Context;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string/jumbo v0, "window"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    return p1
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTimeNanos"
        }
    .end annotation

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mLastFrameTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 41
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mLastFrameTimeNanos:J

    .line 42
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_0
    sub-long v0, p1, v0

    .line 46
    iget-wide v2, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mFrameIntervalNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 47
    div-long/2addr v0, v2

    .line 48
    sget-wide v2, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_WARNING_LIMIT:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FPSFrameCallBack"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/bughunter/anr/Config;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    sget-wide v3, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->SKIPPED_FRAME_ANR_TRIGGER:J

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    new-array v4, v4, [J

    aput-wide v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->notifyBlockOccurs(Z[J)V

    .line 54
    :cond_2
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;->mLastFrameTimeNanos:J

    .line 55
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
