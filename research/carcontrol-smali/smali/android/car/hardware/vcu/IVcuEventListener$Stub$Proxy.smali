.class Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVcuEventListener.java"

# interfaces
.implements Landroid/car/hardware/vcu/IVcuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/vcu/IVcuEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/hardware/vcu/IVcuEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.hardware.vcu.IVcuEventListener"

    return-object v0
.end method

.method public onVcuChargeStatusEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.vcu.IVcuEventListener"

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v1, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuChargeStatusEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
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

.method public onVcuCruiseControlStatusEvent(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.vcu.IVcuEventListener"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v1, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuCruiseControlStatusEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
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

.method public onVcuGearEvent(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.vcu.IVcuEventListener"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v1, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuGearEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
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

.method public onVcuRawCarSpeedEvent(F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.vcu.IVcuEventListener"

    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 151
    iget-object v1, p0, Landroid/car/hardware/vcu/IVcuEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Landroid/car/hardware/vcu/IVcuEventListener$Stub;->getDefaultImpl()Landroid/car/hardware/vcu/IVcuEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/vcu/IVcuEventListener;->onVcuRawCarSpeedEvent(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
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
