.class Landroid/car/hardware/eps/IEpsEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEpsEventListener.java"

# interfaces
.implements Landroid/car/hardware/eps/IEpsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/eps/IEpsEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/hardware/eps/IEpsEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/car/hardware/eps/IEpsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/car/hardware/eps/IEpsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.hardware.eps.IEpsEventListener"

    return-object v0
.end method

.method public onEpsSteeringAngleEvent(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.eps.IEpsEventListener"

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    iget-object v1, p0, Landroid/car/hardware/eps/IEpsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Landroid/car/hardware/eps/IEpsEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/eps/IEpsEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Landroid/car/hardware/eps/IEpsEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/eps/IEpsEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/eps/IEpsEventListener;->onEpsSteeringAngleEvent(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
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

.method public onEpsSteeringAngleSpeedEvent(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.eps.IEpsEventListener"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget-object v1, p0, Landroid/car/hardware/eps/IEpsEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-static {}, Landroid/car/hardware/eps/IEpsEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/eps/IEpsEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Landroid/car/hardware/eps/IEpsEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/eps/IEpsEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/eps/IEpsEventListener;->onEpsSteeringAngleSpeedEvent(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
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
