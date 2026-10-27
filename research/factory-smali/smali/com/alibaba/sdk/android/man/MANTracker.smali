.class public Lcom/alibaba/sdk/android/man/MANTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/MANTracker$Singleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public appKey:Ljava/lang/String;

.field private volatile isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/alibaba/sdk/android/man/MANTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/man/MANTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANTracker;->isEnabled:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/man/MANTracker$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/MANTracker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/man/MANTracker;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/sdk/android/man/MANTracker$Singleton;->instance:Lcom/alibaba/sdk/android/man/MANTracker;

    return-object v0
.end method

.method private getTrackerFromUt()Lcom/ut/mini/UTTracker;
    .locals 3

    .line 85
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/man/MANTracker;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->getTrackerByAppkey(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    const-string v1, "MAN"

    const-string v2, "\u8bf7\u5148\u521d\u59cb\u5316MAN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-object v0
.end method


# virtual methods
.method public send(Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANTracker;->isEnabled:Z

    if-nez v0, :cond_0

    .line 56
    sget-object p1, Lcom/alibaba/sdk/android/man/MANTracker;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/EventCommitTool;->commitCustomPerformanceEvent(Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;)V

    .line 60
    const-string p1, "3"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPerfEvent(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public send(Lcom/alibaba/sdk/android/man/network/NetworkEvent;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANTracker;->isEnabled:Z

    if-nez v0, :cond_0

    .line 70
    sget-object p1, Lcom/alibaba/sdk/android/man/MANTracker;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 74
    :cond_0
    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->reportNetworkInfo()V

    .line 76
    const-string v0, "1"

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->isAdvancedStat()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    const-string v0, "2"

    .line 80
    :cond_1
    invoke-static {v0}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitPerfEvent(Ljava/lang/String;)V

    .line 82
    :cond_2
    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/man/MANTracker;->isEnabled:Z

    if-nez v0, :cond_0

    .line 35
    sget-object p1, Lcom/alibaba/sdk/android/man/MANTracker;->TAG:Ljava/lang/String;

    const-string v0, "MAN init failed,can not work for now!"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/MANTracker;->getTrackerFromUt()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    return-void

    .line 42
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/alibaba/sdk/android/man/util/UTWrapper;->commitCustomEvent()V

    .line 44
    return-void
.end method

.method public setEnableStatus(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/man/MANTracker;->isEnabled:Z

    .line 94
    return-void
.end method
