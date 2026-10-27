.class Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarEnergyConspSvc.java"

# interfaces
.implements Landroid/car/xpeng/energy/ICarEnergyConspSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/energy/ICarEnergyConspSvc;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCarElectriEnergyDistribution()[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.energy.ICarEnergyConspSvc"

    .line 116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->getCarElectriEnergyDistribution()[F

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.energy.ICarEnergyConspSvc"

    return-object v0
.end method

.method public registerEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.energy.ICarEnergyConspSvc"

    .line 135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Landroid/car/xpeng/energy/ICarEnergyConspListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    iget-object v2, p0, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->registerEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.energy.ICarEnergyConspSvc"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Landroid/car/xpeng/energy/ICarEnergyConspListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 156
    iget-object v2, p0, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Landroid/car/xpeng/energy/ICarEnergyConspSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/energy/ICarEnergyConspSvc;->unregisterEnergyConspListener(Landroid/car/xpeng/energy/ICarEnergyConspListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 161
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
