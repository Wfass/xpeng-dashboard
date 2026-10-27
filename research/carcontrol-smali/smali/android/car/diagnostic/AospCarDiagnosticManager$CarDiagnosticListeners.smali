.class Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;
.super Lcom/android/car/internal/CarRatedListeners;
.source "AospCarDiagnosticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/AospCarDiagnosticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDiagnosticListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/CarRatedListeners<",
        "Landroid/car/diagnostic/AospCarDiagnosticManager$OnDiagnosticEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/diagnostic/AospCarDiagnosticManager;


# direct methods
.method constructor <init>(Landroid/car/diagnostic/AospCarDiagnosticManager;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->this$0:Landroid/car/diagnostic/AospCarDiagnosticManager;

    .line 379
    invoke-direct {p0, p2}, Lcom/android/car/internal/CarRatedListeners;-><init>(I)V

    return-void
.end method


# virtual methods
.method onDiagnosticEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V
    .locals 4

    .line 384
    iget-wide v0, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 385
    iget-wide v2, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string p1, "CAR.L.DIAGNOSTIC"

    const-string v0, "dropping old data"

    .line 386
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    iput-wide v0, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->mLastUpdateTime:J

    .line 390
    iget-object v0, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->this$0:Landroid/car/diagnostic/AospCarDiagnosticManager;

    invoke-static {v0}, Landroid/car/diagnostic/AospCarDiagnosticManager;->access$200(Landroid/car/diagnostic/AospCarDiagnosticManager;)Lcom/android/car/internal/CarPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->checkGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->withVendorSensorsRemoved()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object p1

    .line 395
    :goto_0
    iget-object v0, p0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->this$0:Landroid/car/diagnostic/AospCarDiagnosticManager;

    invoke-static {v0}, Landroid/car/diagnostic/AospCarDiagnosticManager;->access$000(Landroid/car/diagnostic/AospCarDiagnosticManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;->getListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    new-instance v0, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;

    invoke-direct {v0, p0, p1}, Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners$1;-><init>(Landroid/car/diagnostic/AospCarDiagnosticManager$CarDiagnosticListeners;Landroid/car/diagnostic/CarDiagnosticEvent;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 397
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
