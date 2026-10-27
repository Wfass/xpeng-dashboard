.class Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarGuardModeListener.java"

# interfaces
.implements Landroid/car/xpeng/guard/ICarGuardModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.guard.ICarGuardModeListener"

    return-object v0
.end method

.method public onCarGuardModeActiveChanged(ZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v2, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 237
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeActiveChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :goto_0
    iget-object v1, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onCarGuardModeLevelChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v1, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeLevelChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
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

.method public onCarGuardModeSceneOrientationChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 249
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v1, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeSceneOrientationChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
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

.method public onCarGuardModeWork(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 183
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v2, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onCarGuardModeWork(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onOtherStatistics(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 201
    iget-object v1, p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener;->onOtherStatistics(ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
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
