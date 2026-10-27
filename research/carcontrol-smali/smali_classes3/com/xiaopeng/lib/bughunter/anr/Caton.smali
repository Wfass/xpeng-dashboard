.class public Lcom/xiaopeng/lib/bughunter/anr/Caton;
.super Ljava/lang/Object;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;,
        Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;,
        Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_COLLECT_INTERVAL:J = 0x3e8L

.field static DEFAULT_MODE:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode; = null

.field static final DEFAULT_THRESHOLD_TIME:J = 0xbb8L

.field static final MAX_COLLECT_INTERVAL:J = 0x190L

.field static final MAX_THRESHOLD_TIME:J = 0x190L

.field static final MIN_COLLECT_INTERVAL:J = 0xc8L

.field static final MIN_THRESHOLD_TIME:J = 0xc8L

.field private static volatile sCaton:Lcom/xiaopeng/lib/bughunter/anr/Caton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->LOOPER:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    sput-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton;->DEFAULT_MODE:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JJLcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;ZLcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "thresholdTimeMillis",
            "collectIntervalMillis",
            "mode",
            "loggingEnabled",
            "callback"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    .line 26
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/16 v2, 0x190

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 27
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 28
    sput-boolean p7, Lcom/xiaopeng/lib/bughunter/anr/Config;->LOG_ENABLED:Z

    .line 29
    sput-wide p2, Lcom/xiaopeng/lib/bughunter/anr/Config;->THRESHOLD_TIME:J

    .line 31
    new-instance p2, Lcom/xiaopeng/lib/bughunter/StackTraceCollector;

    invoke-direct {p2, p4, p5}, Lcom/xiaopeng/lib/bughunter/StackTraceCollector;-><init>(J)V

    .line 32
    new-instance p3, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;

    invoke-direct {p3, p1, p2, p8}, Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib/bughunter/anr/Collector;Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)V

    .line 33
    sget-object p2, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->LOOPER:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    if-ne p6, p2, :cond_0

    .line 34
    new-instance p1, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;

    invoke-direct {p1, p3}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;-><init>(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)V

    goto :goto_0

    .line 35
    :cond_0
    sget-object p2, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->FRAME:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    if-ne p6, p2, :cond_2

    .line 36
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-lt p2, p4, :cond_1

    .line 37
    new-instance p2, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;

    invoke-direct {p2, p1, p3}, Lcom/xiaopeng/lib/bughunter/anr/FPSFrameCallBack;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)V

    .line 38
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;

    invoke-direct {p1, p3}, Lcom/xiaopeng/lib/bughunter/anr/UILooperObserver;-><init>(Lcom/xiaopeng/lib/bughunter/anr/BlockHandler;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JJLcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;ZLcom/xiaopeng/lib/bughunter/anr/Caton$Callback;Lcom/xiaopeng/lib/bughunter/anr/Caton$1;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p8}, Lcom/xiaopeng/lib/bughunter/anr/Caton;-><init>(Landroid/content/Context;JJLcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;ZLcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/anr/Caton;->initialize(Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;)V

    return-void
.end method

.method public static initialize(Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton;->sCaton:Lcom/xiaopeng/lib/bughunter/anr/Caton;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/xiaopeng/lib/bughunter/anr/Caton;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/bughunter/anr/Caton;->sCaton:Lcom/xiaopeng/lib/bughunter/anr/Caton;

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->build()Lcom/xiaopeng/lib/bughunter/anr/Caton;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/bughunter/anr/Caton;->sCaton:Lcom/xiaopeng/lib/bughunter/anr/Caton;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 60
    sput-boolean p0, Lcom/xiaopeng/lib/bughunter/anr/Config;->LOG_ENABLED:Z

    return-void
.end method
