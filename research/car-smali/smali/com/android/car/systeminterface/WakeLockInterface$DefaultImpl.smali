.class public Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;
.super Ljava/lang/Object;
.source "WakeLockInterface.java"

# interfaces
.implements Lcom/android/car/systeminterface/WakeLockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/systeminterface/WakeLockInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImpl"
.end annotation


# instance fields
.field private final mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "power"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 41
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "CAR.POWER"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    const-string v1, "CAR.POWER"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    return-void
.end method


# virtual methods
.method public acquirePartialWakeLock()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 62
    :cond_0
    return-void
.end method

.method public releaseAllWakeLocks()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    :cond_1
    return-void
.end method

.method public releasePartialWakeLock()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    :cond_0
    return-void
.end method

.method public switchToFullWakeLock()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    :cond_1
    return-void
.end method

.method public switchToPartialWakeLock()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/car/systeminterface/WakeLockInterface$DefaultImpl;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 55
    :cond_1
    return-void
.end method
