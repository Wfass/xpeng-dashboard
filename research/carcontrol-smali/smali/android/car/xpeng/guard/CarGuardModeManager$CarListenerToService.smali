.class Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;
.super Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;
.source "CarGuardModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/CarGuardModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarListenerToService"
.end annotation


# instance fields
.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/guard/CarGuardModeManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/guard/CarGuardModeManager;)V
    .locals 1

    .line 438
    invoke-direct {p0}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;-><init>()V

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCarGuardModeActiveChanged(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarGuardModeActiveChanged() ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    .line 483
    invoke-static {v0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$400(Landroid/car/xpeng/guard/CarGuardModeManager;ZI)V

    :cond_0
    return-void
.end method

.method public onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarGuardModeChanged() event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 447
    invoke-static {v0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$000(Landroid/car/xpeng/guard/CarGuardModeManager;Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    :cond_0
    return-void
.end method

.method public onCarGuardModeLevelChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarGuardModeLevelChanged() level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    .line 474
    invoke-static {v0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$300(Landroid/car/xpeng/guard/CarGuardModeManager;II)V

    :cond_0
    return-void
.end method

.method public onCarGuardModeSceneOrientationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarGuardModeSceneOrientationChanged() ori="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    .line 492
    invoke-static {v0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$500(Landroid/car/xpeng/guard/CarGuardModeManager;I)V

    :cond_0
    return-void
.end method

.method public onCarGuardModeWork(Z)V
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarGuardModeWork() ready="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    .line 456
    invoke-static {v0, p1}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$100(Landroid/car/xpeng/guard/CarGuardModeManager;Z)V

    :cond_0
    return-void
.end method

.method public onOtherStatistics(ILjava/util/Map;)V
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOtherStatistics() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarGuardModeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Landroid/car/xpeng/guard/CarGuardModeManager$CarListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/guard/CarGuardModeManager;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 465
    invoke-static {v0, p1, p2}, Landroid/car/xpeng/guard/CarGuardModeManager;->access$200(Landroid/car/xpeng/guard/CarGuardModeManager;ILjava/util/Map;)V

    :cond_0
    return-void
.end method
