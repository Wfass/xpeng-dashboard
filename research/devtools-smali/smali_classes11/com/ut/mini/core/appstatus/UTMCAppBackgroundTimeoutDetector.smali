.class public Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;
.super Ljava/lang/Object;
.source "UTMCAppBackgroundTimeoutDetector.java"

# interfaces
.implements Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;


# static fields
.field private static a:Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;


# instance fields
.field private B:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->a:Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->B:J

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;
    .locals 2

    const-class v0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->a:Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;

    invoke-direct {v1}, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;-><init>()V

    sput-object v1, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->a:Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;

    .line 25
    :cond_0
    sget-object v1, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->a:Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 53
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 58
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 63
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 68
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 73
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 78
    return-void
.end method

.method public onSwitchBackground()V
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->B:J

    .line 31
    return-void
.end method

.method public onSwitchForeground()V
    .locals 6

    .line 35
    iget-wide v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->B:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alibaba/mtl/log/c;->ax()Lcom/alibaba/mtl/log/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/c;->j(Ljava/util/Map;)V

    .line 42
    :cond_0
    iput-wide v2, p0, Lcom/ut/mini/core/appstatus/UTMCAppBackgroundTimeoutDetector;->B:J

    .line 43
    return-void
.end method
