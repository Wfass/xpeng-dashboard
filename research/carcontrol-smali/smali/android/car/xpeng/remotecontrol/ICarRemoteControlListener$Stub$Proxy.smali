.class Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarRemoteControlListener.java"

# interfaces
.implements Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    return-object v0
.end method

.method public onRemoteCameraEventChange(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;->onRemoteCameraEventChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onRemoteControlMirrorSwitch(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v1, p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-static {}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;->onRemoteControlMirrorSwitch(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
