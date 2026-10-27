.class public abstract Lcom/android/car/DeviceIdleControllerWrapper;
.super Ljava/lang/Object;
.source "DeviceIdleControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/DeviceIdleControllerWrapper$IdleControllerHandler;,
        Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;
    }
.end annotation


# static fields
.field private static final MSG_REPORT_ACTIVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Garage_DeviceIdleWrapper"


# instance fields
.field private mActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/car/DeviceIdleControllerWrapper$IdleControllerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/DeviceIdleControllerWrapper$IdleControllerHandler;-><init>(Lcom/android/car/DeviceIdleControllerWrapper;Lcom/android/car/DeviceIdleControllerWrapper$1;)V

    iput-object v0, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected reportActiveLocked(Z)V
    .locals 4
    .param p1, "active"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method

.method protected setMaintenanceActivity(Z)V
    .locals 2
    .param p1, "active"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mActive:Z

    if-ne v1, p1, :cond_0

    .line 83
    monitor-exit v0

    return-void

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mActive:Z

    .line 87
    iget-object v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/car/DeviceIdleControllerWrapper;->stopTracking()V

    .line 90
    monitor-exit v0

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/car/DeviceIdleControllerWrapper;->reportActiveLocked(Z)V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract startLocked()Z
.end method

.method public startTracking(Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/android/car/DeviceIdleControllerWrapper$DeviceMaintenanceActivityListener;

    .line 62
    iget-object v0, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mListener:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {p0}, Lcom/android/car/DeviceIdleControllerWrapper;->startLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mActive:Z

    .line 65
    iget-boolean v1, p0, Lcom/android/car/DeviceIdleControllerWrapper;->mActive:Z

    monitor-exit v0

    return v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract stopTracking()V
.end method
