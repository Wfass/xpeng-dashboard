.class Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;
.super Ljava/lang/Object;
.source "IXpDiagnostic.java"

# interfaces
.implements Landroid/car/hardware/XpVehicle/IXpDiagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/hardware/XpVehicle/IXpDiagnostic;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-object p1, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1343
    iget-object v0, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAebState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3324
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3325
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3326
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAebState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAgsFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3203
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3204
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3205
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3206
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAgsFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3208
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAirbagFaultSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2199
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2200
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2201
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAirbagFaultSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2203
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2204
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2899
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2900
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2901
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllEcusFailureStates()Landroid/car/diagnostic/EcusFailureStates;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2903
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2904
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2905
    sget-object v2, Landroid/car/diagnostic/EcusFailureStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/diagnostic/EcusFailureStates;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2912
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllMsmModulesFailureStates()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3244
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3245
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3246
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllMsmModulesFailureStates()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3248
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3249
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllTirePerssureSensorsFailureStates()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3044
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3045
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3046
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllTirePerssureSensorsFailureStates()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3048
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllTireTemperatureWarnings()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3023
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3024
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3025
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3026
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAllTireTemperatureWarnings()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3029
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAlsErrorSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2218
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2220
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2221
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAlsErrorSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2223
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAndLastDiagCmd()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1435
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1437
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1438
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAndLastDiagCmd()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1440
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1441
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAtlsErrSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2018
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2019
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2020
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2021
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAtlsErrSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2023
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAvasFault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2139
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2140
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2141
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getAvasFault()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2143
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getBatteryOverheatingState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3065
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3066
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryOverheatingState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getBatteryPtcFailureStates()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3404
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3405
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3406
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryPtcFailureStates()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3408
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3409
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getBatteryVoltageLowState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3124
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3125
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3126
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getBatteryVoltageLowState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3128
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCcsWorkState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3083
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3085
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3086
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCcsWorkState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3088
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCdcDataUploadSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2598
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2599
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2600
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2601
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCdcDataUploadSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2603
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2604
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCiuSdcardFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3284
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3285
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3286
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getCiuSdcardFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3288
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDcdcFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3104
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3105
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3106
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDcdcFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3108
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDhcErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2238
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2239
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2240
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2241
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDhcErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getDvrFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3263
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3264
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3265
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3266
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getDvrFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getElectricMotorSystemHotState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3144
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3145
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3146
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getElectricMotorSystemHotState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getElectricVacuumPumpFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3164
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3165
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3166
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getElectricVacuumPumpFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3168
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEpbSysFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2984
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2985
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2986
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEpbSysFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2988
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEpsWarnLamp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2579
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2580
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2581
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEpsWarnLamp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2583
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEspAbsFault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2518
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2519
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2520
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2521
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspAbsFault()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2523
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEspApbErrSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2499
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2500
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2501
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspApbErrSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2504
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEspAvhFault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2538
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2539
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2540
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2541
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspAvhFault()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2543
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2544
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getEspEspFault()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2479
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2480
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2481
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getEspEspFault()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2483
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getFrontIpuFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2945
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2946
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getFrontIpuFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2948
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHdcFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3003
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3004
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3005
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3006
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHdcFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3008
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHighBeamFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1819
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1820
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1821
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHighBeamFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1823
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHighVoltageRelayAdhesionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3183
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3184
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3185
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3186
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHighVoltageRelayAdhesionState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3188
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHvacCompressorFailureStates()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3383
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3384
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3385
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3386
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHvacCompressorFailureStates()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3388
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHvacPtcFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3363
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3364
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3365
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3366
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getHvacPtcFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3368
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getIbtFailureLamp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2558
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2559
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2560
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2561
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getIbtFailureLamp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.hardware.XpVehicle.IXpDiagnostic"

    return-object v0
.end method

.method public getLDtrOutputFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1938
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1939
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1940
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1941
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLDtrOutputFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1943
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getLTurnLampFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1858
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1859
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1860
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1861
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLTurnLampFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1863
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getLdwState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3304
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3305
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3306
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLdwState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3308
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getLluErrSt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1998
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1999
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2000
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2001
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLluErrSt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2003
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getLowBeamFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1838
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1839
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1840
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1841
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getLowBeamFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1843
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMaterSlaveSettings()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1779
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1780
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1781
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1782
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMaterSlaveSettings()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1784
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1785
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMcuLastDiagCmd()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1397
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1398
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1399
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMcuLastDiagCmd()[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1402
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMsmdEcuErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2038
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2040
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2041
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdEcuErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2043
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMsmdHeatSysErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2078
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2079
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2080
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2081
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdHeatSysErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2083
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2084
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMsmdVentilationMotorErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2058
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2059
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2060
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2061
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmdVentilationMotorErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2063
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMsmpEcuErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2098
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2099
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2100
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2101
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmpEcuErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2103
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2104
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getMsmpHeatSysErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2119
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2120
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2121
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getMsmpHeatSysErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2123
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2124
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getParkingLampFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1958
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1959
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1960
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1961
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getParkingLampFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRDtrOutputFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1918
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1919
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1920
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1921
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRDtrOutputFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1923
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRTurnLampFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1880
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1881
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRTurnLampFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1883
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRearFogFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1900
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1901
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRearFogFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1903
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getRearIpuFailureState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2963
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2964
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2965
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2966
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getRearIpuFailureState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2968
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuAlcCtrlRemind()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2858
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2859
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2860
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2861
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuAlcCtrlRemind()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2863
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuBsdSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2658
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2659
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2660
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2661
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuBsdSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2663
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2664
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuDowSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2678
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2679
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2680
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2681
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuDowSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuIcmApaErrTips()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2879
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2880
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2881
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIcmApaErrTips()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2883
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuIhbSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2638
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2639
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2640
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2641
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIhbSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2643
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuIslcSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2838
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2840
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2841
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuIslcSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2843
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuLongCtrlRemind()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2819
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2820
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2821
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuLongCtrlRemind()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2823
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuRctaSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2698
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2700
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2701
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuRctaSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2703
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getScuRcwSw()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2718
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2719
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2720
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2721
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getScuRcwSw()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2723
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSideReversingState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3344
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3345
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3346
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSideReversingState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 3348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSrrFlFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2739
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2740
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2741
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrFlFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2743
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2744
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSrrFrFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2758
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2759
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2760
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2761
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrFrFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2763
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSrrRlFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2778
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2779
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2780
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2781
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrRlFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2783
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSrrRrFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2798
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2800
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2801
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSrrRrFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2803
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSysErrorWarn()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1980
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1981
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSysErrorWarn()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1983
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1984
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getSystemDiagContent()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1475
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1477
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getSystemDiagContent()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getTcmMotorFailureStates()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3223
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3224
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3225
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3226
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTcmMotorFailureStates()[I

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 3228
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3229
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getTpmsAbnormalPrWarn()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2179
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2180
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2181
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTpmsAbnormalPrWarn()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2183
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2184
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getTpmsSysFaultWarn()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2159
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2160
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2161
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getTpmsSysFaultWarn()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2163
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuBCruiseErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2358
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2359
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2360
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2361
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuBCruiseErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2363
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuChgPortHotDsp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2418
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2419
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2420
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2421
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuChgPortHotDsp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2423
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuDeadBatteryFlag()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2458
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2459
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2460
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2461
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuDeadBatteryFlag()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2463
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuEbsErrDsp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2299
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2300
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2301
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEbsErrDsp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuEvErrLampDsp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2258
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2259
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2260
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2261
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEvErrLampDsp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2263
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuEvErrorMessage()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2923
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2924
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2925
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2926
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuEvErrorMessage()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2928
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuGearWarning()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2279
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2280
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2281
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuGearWarning()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2283
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuLiquidHighTempErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2320
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2321
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuLiquidHighTempErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2323
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuObcMsgLost()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2439
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2440
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2441
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuObcMsgLost()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2443
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuPowerLimitationDsp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2400
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2401
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuPowerLimitationDsp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2403
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuThermoRunawaySt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2378
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2379
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2380
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2381
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuThermoRunawaySt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2383
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVcuWaterSensorErr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2338
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2339
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2340
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2341
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getVcuWaterSensorErr()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2343
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getXpuXpuFailState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 2618
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2620
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2621
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->getXpuXpuFailState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    if-eqz p3, :cond_0

    .line 1357
    invoke-interface {p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1358
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1359
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1360
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1363
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendAndDiagCmd([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1456
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1457
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1458
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendAndDiagCmd([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendCableDiagToMcu([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1552
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1553
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1554
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendCableDiagToMcu([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1557
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendInsufficientSQI([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1664
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1666
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1667
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1668
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendInsufficientSQI([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendIpErr([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1683
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1685
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1686
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1687
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendIpErr([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1690
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendLinkStatus([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1569
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1571
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1573
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendLinkStatus([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1576
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendMaterSlaveMode([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1759
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1761
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1762
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1763
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMaterSlaveMode([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1766
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendMaterSlaveSettingsResponse([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1798
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1800
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1801
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1802
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMaterSlaveSettingsResponse([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1805
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendMcuDiagCmdAck([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1415
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1417
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1419
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendMcuDiagCmdAck([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1422
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendReceivedPak([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1628
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1629
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1630
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendReceivedPak([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1633
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendResetPhyToMcu([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1514
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1515
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1516
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendResetPhyToMcu([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendSQI1000Base([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1740
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1742
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1743
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1744
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQI1000Base([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1747
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendSQI100Base([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1721
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1723
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1724
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1725
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQI100Base([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1728
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendSQIMax([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1704
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1705
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1706
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQIMax([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1709
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendSQIValue([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1590
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1591
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1592
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendSQIValue([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1595
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendTestModeToMcu([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1533
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1534
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1535
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendTestModeToMcu([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1538
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendTransmittedPak([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1607
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1609
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1610
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendTransmittedPak([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1614
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public sendUnexpectedLnkLoss([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1647
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1648
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1649
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->sendUnexpectedLnkLoss([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1652
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setCarServiceDebugEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1494
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-object v3, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1496
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1497
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->setCarServiceDebugEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1500
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setDiagnSoaConfig(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 3422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3424
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3425
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3426
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->setDiagnSoaConfig(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3429
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 3432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.XpVehicle.IXpDiagnostic"

    .line 1375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 1377
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1378
    iget-object v2, p0, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1379
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1380
    invoke-static {}, Landroid/car/hardware/XpVehicle/IXpDiagnostic$Stub;->getDefaultImpl()Landroid/car/hardware/XpVehicle/IXpDiagnostic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/hardware/XpVehicle/IXpDiagnostic;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1383
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
