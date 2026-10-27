.class Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarLeaveModeSvc.java"

# interfaces
.implements Landroid/car/xpeng/mode/ICarLeaveModeSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/mode/ICarLeaveModeSvc;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCarLeaveModeEnable()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.mode.ICarLeaveModeSvc"

    .line 159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->getCarLeaveModeEnable()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 164
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCarLeaveModeTip()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.mode.ICarLeaveModeSvc"

    .line 179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->getCarLeaveModeTip()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 184
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.mode.ICarLeaveModeSvc"

    return-object v0
.end method

.method public registerLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.mode.ICarLeaveModeSvc"

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 199
    invoke-interface {p1}, Landroid/car/xpeng/mode/ICarLeaveModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 200
    iget-object v2, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 202
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->registerLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 205
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setCarLeaveModeEnable(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.mode.ICarLeaveModeSvc"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v2, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->setCarLeaveModeEnable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.mode.ICarLeaveModeSvc"

    .line 217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 218
    invoke-interface {p1}, Landroid/car/xpeng/mode/ICarLeaveModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 219
    iget-object v2, p0, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {}, Landroid/car/xpeng/mode/ICarLeaveModeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/mode/ICarLeaveModeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/mode/ICarLeaveModeSvc;->unregisterLeaveModeListener(Landroid/car/xpeng/mode/ICarLeaveModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 224
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
