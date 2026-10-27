.class abstract Lcom/android/car/CarDiagnosticService$DiagnosticRecord;
.super Ljava/lang/Object;
.source "CarDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DiagnosticRecord"
.end annotation


# instance fields
.field protected mEnabled:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    .line 574
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 575
    return-void
.end method


# virtual methods
.method abstract disableIfNeeded()Z
.end method

.method enable()V
    .locals 1

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    .line 591
    return-void
.end method

.method isEnabled()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mEnabled:Z

    return v0
.end method

.method lock()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 579
    return-void
.end method

.method unlock()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 583
    return-void
.end method

.method abstract update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
.end method
