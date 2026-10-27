.class Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;
.super Lcom/android/car/CarDiagnosticService$DiagnosticRecord;
.source "CarDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreezeFrameRecord"
.end annotation


# instance fields
.field mEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 631
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    .line 632
    return-void
.end method

.method public static synthetic lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM(Ljava/lang/Long;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method clearEvents()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 644
    return-void
.end method

.method disableIfNeeded()Z
    .locals 2

    .line 636
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 637
    :cond_0
    iput-boolean v1, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEnabled:Z

    .line 638
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->clearEvents()V

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method getEvent(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "timestamp"    # J

    .line 657
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/CarDiagnosticEvent;

    return-object v0
.end method

.method getEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getFreezeFrameTimestamps()[J
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$CarDiagnosticService$FreezeFrameRecord$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$FreezeFrameRecord$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 3
    .param p1, "newEvent"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 648
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    iget-wide v1, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-object p1
.end method
