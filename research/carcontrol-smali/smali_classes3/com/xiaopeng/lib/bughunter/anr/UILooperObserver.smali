.class public Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;
.super Ljava/lang/Object;
.source "UILooperObserver.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field public static final ANR_TRIGGER_TIME:J = 0x1388L

.field private static final FIELD_MEMBER_QUEUE:Ljava/lang/String; = "mQueue"

.field private static final LOG_BEGIN:Ljava/lang/String; = ">>>>> Dispatching to"

.field private static final LOG_END:Ljava/lang/String; = "<<<<< Finished to"

.field private static final METHOD_NEXT:Ljava/lang/String; = "next"

.field private static final METHOD_RECYCLE_UNCHECKED:Ljava/lang/String; = "recycleUnchecked"

.field private static final TAG:Ljava/lang/String; = "UILooperObserver"


# instance fields
.field private mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

.field private mPreMessageTime:J

.field private mPreThreadTime:J


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockHandler"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreMessageTime:J

    .line 33
    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreThreadTime:J

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->hookMsgDispatchOfLooper()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->beginDispatchMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->endDispatchMsg()V

    return-void
.end method

.method private beginDispatchMsg()V
    .locals 2

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreMessageTime:J

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreThreadTime:J

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->startMonitor()V

    return-void
.end method

.method private endDispatchMsg()V
    .locals 9

    .line 121
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreMessageTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreMessageTime:J

    sub-long/2addr v0, v2

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mPreThreadTime:J

    sub-long/2addr v2, v4

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    invoke-virtual {v4}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->stopMonitor()V

    .line 129
    sget-wide v4, Lcom/xiaopeng/lib/bughunter/anr/Config;->THRESHOLD_TIME:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->mBlockHandler:Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    const-wide/16 v5, 0x1388

    cmp-long v5, v0, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [J

    aput-wide v0, v8, v7

    aput-wide v2, v8, v6

    invoke-virtual {v4, v5, v8}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;->notifyBlockOccurs(Z[J)V

    :cond_1
    return-void
.end method

.method private hookMsgDispatchOfLooper()V
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver$1;-><init>(Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const-string v0, ">>>>> Dispatching to"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->beginDispatchMsg()V

    goto :goto_0

    :cond_0
    const-string v0, "<<<<< Finished to"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;->endDispatchMsg()V

    :cond_1
    :goto_0
    return-void
.end method
