.class Lcom/android/car/CarDiagnosticService$LiveFrameRecord;
.super Lcom/android/car/CarDiagnosticService$DiagnosticRecord;
.source "CarDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiveFrameRecord"
.end annotation


# instance fields
.field mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 602
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 603
    return-void
.end method


# virtual methods
.method disableIfNeeded()Z
    .locals 2

    .line 607
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 608
    :cond_0
    iput-boolean v1, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mEnabled:Z

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    return-object v0
.end method

.method update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 1
    .param p1, "newEvent"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 615
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    invoke-virtual {v0, p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->isEarlierThan(Landroid/car/diagnostic/CarDiagnosticEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->mLastEvent:Landroid/car/diagnostic/CarDiagnosticEvent;

    return-object v0
.end method
