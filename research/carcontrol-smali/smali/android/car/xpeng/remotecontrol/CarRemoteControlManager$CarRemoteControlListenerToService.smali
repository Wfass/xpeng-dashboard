.class Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;
.super Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;
.source "CarRemoteControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarRemoteControlListenerToService"
.end annotation


# instance fields
.field private final mCarRemoteControlMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;->mCarRemoteControlMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onRemoteCameraEventChange(Ljava/lang/String;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteCameraEventChange() string="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarRemoteControlManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;->mCarRemoteControlMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {v0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->access$000(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteControlMirrorSwitch(I)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteControlMirrorSwitch() onoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarRemoteControlManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager$CarRemoteControlListenerToService;->mCarRemoteControlMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0, p1}, Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;->access$100(Landroid/car/xpeng/remotecontrol/CarRemoteControlManager;I)V

    :cond_0
    return-void
.end method
