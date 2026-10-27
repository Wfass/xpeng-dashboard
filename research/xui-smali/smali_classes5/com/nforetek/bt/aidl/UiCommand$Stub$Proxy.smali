.class Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiCommand.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCommand$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 2376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2378
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelBtDiscovery()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4263
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4268
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4270
    nop

    .line 4271
    return v2

    .line 4268
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4270
    throw v2
.end method

.method public connectDevice(ILjava/lang/String;)Z
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8431
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8433
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8434
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8439
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8441
    nop

    .line 8442
    return v2

    .line 8439
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8441
    throw v2
.end method

.method public disConnectDevice(ILjava/lang/String;)Z
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8415
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8420
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8422
    nop

    .line 8423
    return v2

    .line 8420
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8422
    throw v2
.end method

.method public enableDevice(IZ)Z
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8341
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8346
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8348
    nop

    .line 8349
    return v2

    .line 8346
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8348
    throw v2
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2682
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2683
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2684
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2687
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2689
    nop

    .line 2690
    return-object v2

    .line 2687
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2689
    throw v2
.end method

.method public getA2dpConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2643
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2648
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    nop

    .line 2651
    return v2

    .line 2648
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    throw v2
.end method

.method public getA2dpStreamType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2842
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2846
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2851
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2853
    nop

    .line 2854
    return v2

    .line 2851
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2853
    throw v2
.end method

.method public getAvrcpConnectedAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2954
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2956
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2959
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2961
    nop

    .line 2962
    return-object v2

    .line 2959
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2961
    throw v2
.end method

.method public getAvrcpConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2922
    nop

    .line 2923
    return v2

    .line 2920
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2922
    throw v2
.end method

.method public getBtAutoConnectCondition()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4686
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4687
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4691
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4693
    nop

    .line 4694
    return v2

    .line 4691
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4693
    throw v2
.end method

.method public getBtAutoConnectPeriod()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4699
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4702
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4703
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4708
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4710
    nop

    .line 4711
    return v2

    .line 4708
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4710
    throw v2
.end method

.method public getBtAutoConnectState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4716
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4719
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4720
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4725
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4727
    nop

    .line 4728
    return v2

    .line 4725
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4727
    throw v2
.end method

.method public getBtAutoConnectingAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4737
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4739
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4742
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4744
    nop

    .line 4745
    return-object v2

    .line 4742
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4744
    throw v2
.end method

.method public getBtLocalAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4398
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4400
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4403
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4405
    nop

    .line 4406
    return-object v2

    .line 4403
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4405
    throw v2
.end method

.method public getBtLocalName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4363
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4365
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4368
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    nop

    .line 4371
    return-object v2

    .line 4368
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    throw v2
.end method

.method public getBtRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4376
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4381
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4386
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4388
    nop

    .line 4389
    return-object v2

    .line 4386
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4388
    throw v2
.end method

.method public getBtRemoteUuids(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4575
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4578
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4580
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4587
    nop

    .line 4588
    return v2

    .line 4585
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4587
    throw v2
.end method

.method public getBtRoleMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4622
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4627
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4629
    nop

    .line 4630
    return v2

    .line 4627
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4629
    throw v2
.end method

.method public getBtState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4461
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4463
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4466
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4468
    nop

    .line 4469
    return v2

    .line 4466
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4468
    throw v2
.end method

.method public getConnectedDevice(I)Ljava/lang/String;
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8489
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8491
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8494
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8496
    nop

    .line 8497
    return-object v2

    .line 8494
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8496
    throw v2
.end method

.method public getConnectionState(ILjava/lang/String;)I
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8471
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8472
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8473
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8476
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8478
    nop

    .line 8479
    return v2

    .line 8476
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8478
    throw v2
.end method

.method public getGattAddedGattCharacteristicUuidList(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 5
    .param p1, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7852
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 7853
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7854
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7857
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7859
    :goto_0
    iget-object v3, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7861
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7864
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7866
    nop

    .line 7867
    return-object v2

    .line 7864
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7866
    throw v2
.end method

.method public getGattAddedGattDescriptorUuidList(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 5
    .param p1, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p2, "charUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7884
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7885
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7886
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7889
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7891
    :goto_0
    if-eqz p2, :cond_1

    .line 7892
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7893
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 7896
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7898
    :goto_1
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc8

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7900
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7903
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7905
    nop

    .line 7906
    return-object v2

    .line 7903
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7905
    throw v2
.end method

.method public getGattAddedGattServiceUuidList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7828
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7830
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7833
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    nop

    .line 7836
    return-object v2

    .line 7833
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7835
    throw v2
.end method

.method public getGattServerConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7343
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7348
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    nop

    .line 7351
    return v2

    .line 7348
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7350
    throw v2
.end method

.method public getHfpAudioConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4861
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4862
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4867
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4869
    nop

    .line 4870
    return v2

    .line 4867
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4869
    throw v2
.end method

.method public getHfpCallList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/NfHfpClientCall;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4953
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4955
    sget-object v2, Lcom/nforetek/bt/aidl/NfHfpClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4958
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4960
    nop

    .line 4961
    return-object v2

    .line 4958
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/NfHfpClientCall;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4960
    throw v2
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4841
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4844
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4845
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4846
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4847
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4850
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4852
    nop

    .line 4853
    return-object v2

    .line 4850
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4852
    throw v2
.end method

.method public getHfpConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4805
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4806
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4808
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4811
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4813
    nop

    .line 4814
    return v2

    .line 4811
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4813
    throw v2
.end method

.method public getHfpRemoteBatteryIndicator()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4992
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4994
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4997
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4999
    nop

    .line 5000
    return v2

    .line 4997
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4999
    throw v2
.end method

.method public getHfpRemoteNetworkOperator()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5284
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5286
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5289
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5291
    nop

    .line 5292
    return-object v2

    .line 5289
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5291
    throw v2
.end method

.method public getHfpRemoteSignalStrength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4930
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4931
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4933
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4936
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4938
    nop

    .line 4939
    return v2

    .line 4936
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4938
    throw v2
.end method

.method public getHfpRemoteSubscriberNumber()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5301
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5303
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5306
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5308
    nop

    .line 5309
    return-object v2

    .line 5306
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5308
    throw v2
.end method

.method public getHidConnectedAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6423
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6425
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6428
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6430
    nop

    .line 6431
    return-object v2

    .line 6428
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6430
    throw v2
.end method

.method public getHidConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6384
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6389
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6391
    nop

    .line 6392
    return v2

    .line 6389
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6391
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2385
    const-string v0, "com.nforetek.bt.aidl.UiCommand"

    return-object v0
.end method

.method public getLocalUsbConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8248
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8253
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8255
    nop

    .line 8256
    return v2

    .line 8253
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8255
    throw v2
.end method

.method public getMapCurrentState(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6915
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6918
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6919
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6920
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6925
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6927
    nop

    .line 6928
    return v2

    .line 6925
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6927
    throw v2
.end method

.method public getMapRegisterState(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6938
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6943
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6945
    nop

    .line 6946
    return v2

    .line 6943
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6945
    throw v2
.end method

.method public getNfServiceVersionName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4149
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4151
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4154
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4156
    nop

    .line 4157
    return-object v2

    .line 4154
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4156
    throw v2
.end method

.method public getOppFilePath()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7159
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7161
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7164
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7166
    nop

    .line 7167
    return-object v2

    .line 7164
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7166
    throw v2
.end method

.method public getPbapConnectionState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5483
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5486
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5487
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5492
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5494
    nop

    .line 5495
    return v2

    .line 5492
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5494
    throw v2
.end method

.method public getPbapDownloadingAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5526
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5528
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5531
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5533
    nop

    .line 5534
    return-object v2

    .line 5531
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5533
    throw v2
.end method

.method public getProfileConnectionState(I)I
    .locals 5
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8266
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8267
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8271
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8273
    nop

    .line 8274
    return v2

    .line 8271
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8273
    throw v2
.end method

.method public getTargetAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7240
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7242
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7245
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    nop

    .line 7248
    return-object v2

    .line 7245
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7247
    throw v2
.end method

.method public getUiServiceVersionName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2390
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2396
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    nop

    .line 2402
    return-object v2

    .line 2399
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2401
    throw v2
.end method

.method public getUsbAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8214
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8216
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8219
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8221
    nop

    .line 8222
    return-object v2

    .line 8219
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8221
    throw v2
.end method

.method public getUsbBtLocalName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8179
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8181
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8184
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8186
    nop

    .line 8187
    return-object v2

    .line 8184
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8186
    throw v2
.end method

.method public getUsbConnectedDevice()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8231
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8233
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8236
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8238
    nop

    .line 8239
    return-object v2

    .line 8236
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8238
    throw v2
.end method

.method public getUsbConnectionState(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8127
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8132
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8134
    nop

    .line 8135
    return v2

    .line 8132
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8134
    throw v2
.end method

.method public isA2dpConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2670
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2672
    nop

    .line 2673
    return v2

    .line 2670
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2672
    throw v2
.end method

.method public isA2dpServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2434
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2439
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    nop

    .line 2442
    return v2

    .line 2439
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    throw v2
.end method

.method public isAvrcp13Supported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3030
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3031
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3032
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3034
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3037
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    nop

    .line 3040
    return v2

    .line 3037
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3039
    throw v2
.end method

.method public isAvrcp14BrowsingChannelEstablished()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3733
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3738
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    nop

    .line 3741
    return v2

    .line 3738
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    throw v2
.end method

.method public isAvrcp14Supported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3058
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3063
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3065
    nop

    .line 3066
    return v2

    .line 3063
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3065
    throw v2
.end method

.method public isAvrcpConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2936
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2937
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2939
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2942
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2944
    nop

    .line 2945
    return v2

    .line 2942
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2944
    throw v2
.end method

.method public isAvrcpServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2410
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2413
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2414
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2419
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2421
    nop

    .line 2422
    return v2

    .line 2419
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2421
    throw v2
.end method

.method public isBluetoothServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2474
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2479
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2481
    nop

    .line 2482
    return v2

    .line 2479
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2481
    throw v2
.end method

.method public isBtAutoConnectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4527
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4532
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    nop

    .line 4535
    return v2

    .line 4532
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4534
    throw v2
.end method

.method public isBtDiscoverable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4510
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4512
    nop

    .line 4513
    return v2

    .line 4510
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4512
    throw v2
.end method

.method public isBtDiscovering()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4483
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4488
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4490
    nop

    .line 4491
    return v2

    .line 4488
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4490
    throw v2
.end method

.method public isBtEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4444
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4446
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4449
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4451
    nop

    .line 4452
    return v2

    .line 4449
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4451
    throw v2
.end method

.method public isDeviceEnabled(I)Z
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8322
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8327
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8329
    nop

    .line 8330
    return v2

    .line 8327
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8329
    throw v2
.end method

.method public isDiscovering(I)Z
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8359
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8360
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8364
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8366
    nop

    .line 8367
    return v2

    .line 8364
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8366
    throw v2
.end method

.method public isGattServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7275
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7280
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7282
    nop

    .line 7283
    return v2

    .line 7280
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7282
    throw v2
.end method

.method public isHfpConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4828
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4833
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4835
    nop

    .line 4836
    return v2

    .line 4833
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4835
    throw v2
.end method

.method public isHfpInBandRingtoneSupport()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5418
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5423
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5425
    nop

    .line 5426
    return v2

    .line 5423
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5425
    throw v2
.end method

.method public isHfpMicMute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5382
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5387
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5389
    nop

    .line 5390
    return v2

    .line 5387
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5389
    throw v2
.end method

.method public isHfpRemoteOnRoaming()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4975
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4977
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4980
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    nop

    .line 4983
    return v2

    .line 4980
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4982
    throw v2
.end method

.method public isHfpRemoteTelecomServiceOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5011
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5014
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5015
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5016
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5017
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5020
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5022
    nop

    .line 5023
    return v2

    .line 5020
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5021
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5022
    throw v2
.end method

.method public isHfpRemoteVoiceDialOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5034
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5038
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5043
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5045
    nop

    .line 5046
    return v2

    .line 5043
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5045
    throw v2
.end method

.method public isHfpServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2494
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2499
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    nop

    .line 2502
    return v2

    .line 2499
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    throw v2
.end method

.method public isHidConnected()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6406
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6411
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6413
    nop

    .line 6414
    return v2

    .line 6411
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6413
    throw v2
.end method

.method public isHidServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2514
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2519
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2521
    nop

    .line 2522
    return v2

    .line 2519
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2521
    throw v2
.end method

.method public isMapNotificationRegistered(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6814
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6819
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6821
    nop

    .line 6822
    return v2

    .line 6819
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6821
    throw v2
.end method

.method public isMapServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2574
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2579
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2581
    nop

    .line 2582
    return v2

    .line 2579
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2581
    throw v2
.end method

.method public isOppServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2554
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2555
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2559
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    nop

    .line 2562
    return v2

    .line 2559
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw v2
.end method

.method public isPbapDownloading()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5509
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5511
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5514
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5516
    nop

    .line 5517
    return v2

    .line 5514
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5516
    throw v2
.end method

.method public isPbapServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2534
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2539
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    nop

    .line 2542
    return v2

    .line 2539
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2541
    throw v2
.end method

.method public isSppConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6292
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6294
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6297
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6299
    nop

    .line 6300
    return v2

    .line 6297
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6299
    throw v2
.end method

.method public isSppServiceReady()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2454
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2459
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2461
    nop

    .line 2462
    return v2

    .line 2459
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2461
    throw v2
.end method

.method public isUsbA2dpConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8109
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8114
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8116
    nop

    .line 8117
    return v2

    .line 8114
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8116
    throw v2
.end method

.method public isUsbAvrcpConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8145
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8147
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8150
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8152
    nop

    .line 8153
    return v2

    .line 8150
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8152
    throw v2
.end method

.method public isUsbDiscovering()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8073
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8074
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8075
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8078
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8080
    nop

    .line 8081
    return v2

    .line 8078
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8080
    throw v2
.end method

.method public isUsbEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8052
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8056
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8061
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8063
    nop

    .line 8064
    return v2

    .line 8061
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8063
    throw v2
.end method

.method public isUsbHfpConnected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8091
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8092
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8093
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8096
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8098
    nop

    .line 8099
    return v2

    .line 8096
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8098
    throw v2
.end method

.method public muteHfpMic(Z)V
    .locals 5
    .param p1, "mute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5403
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5404
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5409
    nop

    .line 5410
    return-void

    .line 5407
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5409
    throw v2
.end method

.method public pauseA2dpRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2759
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2765
    nop

    .line 2766
    return-void

    .line 2763
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2765
    throw v2
.end method

.method public pauseHfpRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5347
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5353
    nop

    .line 5354
    return-void

    .line 5351
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5353
    throw v2
.end method

.method public registerA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2600
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackA2dp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2601
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 2606
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    nop

    .line 2609
    return v2

    .line 2606
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    throw v2
.end method

.method public registerAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2871
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2872
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2873
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2875
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 2878
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2880
    nop

    .line 2881
    return v2

    .line 2878
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2880
    throw v2
.end method

.method public registerBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4107
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 4112
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    nop

    .line 4115
    return v2

    .line 4112
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4114
    throw v2
.end method

.method public registerGattServerCallback(Lcom/nforetek/bt/aidl/UiCallbackGattServer;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7300
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackGattServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7301
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7306
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7308
    nop

    .line 7309
    return v2

    .line 7306
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7308
    throw v2
.end method

.method public registerHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackHfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4763
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackHfp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4764
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 4769
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4771
    nop

    .line 4772
    return v2

    .line 4769
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4771
    throw v2
.end method

.method public registerHidCallback(Lcom/nforetek/bt/aidl/UiCallbackHid;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackHid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6341
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackHid;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6342
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6347
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6349
    nop

    .line 6350
    return v2

    .line 6347
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6349
    throw v2
.end method

.method public registerMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6570
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6573
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6574
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackMap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6575
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6576
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6580
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6582
    nop

    .line 6583
    return v2

    .line 6580
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6582
    throw v2
.end method

.method public registerOppCallback(Lcom/nforetek/bt/aidl/UiCallbackOpp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackOpp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7091
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackOpp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7092
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7093
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7094
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7097
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7099
    nop

    .line 7100
    return v2

    .line 7097
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7099
    throw v2
.end method

.method public registerPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackPbap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5444
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackPbap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5445
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 5450
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5452
    nop

    .line 5453
    return v2

    .line 5450
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5452
    throw v2
.end method

.method public registerSppCallback(Lcom/nforetek/bt/aidl/UiCallbackSpp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackSpp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackSpp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6169
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6174
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6176
    nop

    .line 6177
    return v2

    .line 6174
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6176
    throw v2
.end method

.method public registerUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7911
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7915
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7916
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7921
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7923
    nop

    .line 7924
    return v2

    .line 7921
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7923
    throw v2
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2711
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2712
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2713
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2716
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2718
    nop

    .line 2719
    return v2

    .line 2716
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2718
    throw v2
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2738
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2740
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2742
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2745
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    nop

    .line 2748
    return v2

    .line 2745
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2747
    throw v2
.end method

.method public reqAvrcp13GetCapabilitiesSupportEvent()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3352
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3354
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3357
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3359
    nop

    .line 3360
    return v2

    .line 3357
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3359
    throw v2
.end method

.method public reqAvrcp13GetElementAttributesPlaying()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3527
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3532
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3534
    nop

    .line 3535
    return v2

    .line 3532
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3534
    throw v2
.end method

.method public reqAvrcp13GetPlayStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3560
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3562
    nop

    .line 3563
    return v2

    .line 3560
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3562
    throw v2
.end method

.method public reqAvrcp13GetPlayerSettingAttributesList()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3382
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3387
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    nop

    .line 3390
    return v2

    .line 3387
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    throw v2
.end method

.method public reqAvrcp13GetPlayerSettingCurrentValues()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3443
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3446
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3447
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3452
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3454
    nop

    .line 3455
    return v2

    .line 3452
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3454
    throw v2
.end method

.method public reqAvrcp13GetPlayerSettingValuesList(B)Z
    .locals 5
    .param p1, "attributeId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3419
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3424
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3426
    nop

    .line 3427
    return v2

    .line 3424
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3426
    throw v2
.end method

.method public reqAvrcp13NextGroup()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3685
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3690
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3692
    nop

    .line 3693
    return v2

    .line 3690
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3692
    throw v2
.end method

.method public reqAvrcp13PreviousGroup()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3709
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3714
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    nop

    .line 3717
    return v2

    .line 3714
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3716
    throw v2
.end method

.method public reqAvrcp13SetPlayerSettingValue(BB)Z
    .locals 5
    .param p1, "attributeId"    # B
    .param p2, "valueId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3499
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3504
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    nop

    .line 3507
    return v2

    .line 3504
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    throw v2
.end method

.method public reqAvrcp14AddToNowPlaying(BIJ)Z
    .locals 5
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 4042
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4043
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 4044
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4045
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4049
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4051
    nop

    .line 4052
    return v2

    .line 4049
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4051
    throw v2
.end method

.method public reqAvrcp14ChangePath(IJB)Z
    .locals 5
    .param p1, "uidCounter"    # I
    .param p2, "uid"    # J
    .param p4, "direction"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3872
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3873
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByte(B)V

    .line 3874
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3876
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3879
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3881
    nop

    .line 3882
    return v2

    .line 3879
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3881
    throw v2
.end method

.method public reqAvrcp14GetFolderItems(B)Z
    .locals 5
    .param p1, "scopeId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3836
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3837
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3841
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3843
    nop

    .line 3844
    return v2

    .line 3841
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3843
    throw v2
.end method

.method public reqAvrcp14GetItemAttributes(BIJ)Z
    .locals 5
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3906
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3909
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3912
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3913
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3915
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3918
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3920
    nop

    .line 3921
    return v2

    .line 3918
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3920
    throw v2
.end method

.method public reqAvrcp14PlaySelectedItem(BIJ)Z
    .locals 5
    .param p1, "scopeId"    # B
    .param p2, "uidCounter"    # I
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3955
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3958
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3960
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3961
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3962
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3967
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3969
    nop

    .line 3970
    return v2

    .line 3967
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3969
    throw v2
.end method

.method public reqAvrcp14Search(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3998
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4003
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4005
    nop

    .line 4006
    return v2

    .line 4003
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4005
    throw v2
.end method

.method public reqAvrcp14SetAbsoluteVolume(B)Z
    .locals 5
    .param p1, "volume"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4075
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4078
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4079
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 4080
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4082
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4085
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4087
    nop

    .line 4088
    return v2

    .line 4085
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4087
    throw v2
.end method

.method public reqAvrcp14SetAddressedPlayer(I)Z
    .locals 5
    .param p1, "playerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3769
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3771
    nop

    .line 3772
    return v2

    .line 3769
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3771
    throw v2
.end method

.method public reqAvrcp14SetBrowsedPlayer(I)Z
    .locals 5
    .param p1, "playerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3795
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3798
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3800
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3805
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3807
    nop

    .line 3808
    return v2

    .line 3805
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3807
    throw v2
.end method

.method public reqAvrcpBackward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3177
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3180
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3181
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3186
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    nop

    .line 3189
    return v2

    .line 3186
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    throw v2
.end method

.method public reqAvrcpConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2980
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2981
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2985
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    nop

    .line 2988
    return v2

    .line 2985
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2987
    throw v2
.end method

.method public reqAvrcpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3006
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3011
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3013
    nop

    .line 3014
    return v2

    .line 3011
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3013
    throw v2
.end method

.method public reqAvrcpForward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3158
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3163
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    nop

    .line 3166
    return v2

    .line 3163
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    throw v2
.end method

.method public reqAvrcpPause()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3131
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3135
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3136
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3140
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3142
    nop

    .line 3143
    return v2

    .line 3140
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3142
    throw v2
.end method

.method public reqAvrcpPlay()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3085
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3086
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3090
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    nop

    .line 3093
    return v2

    .line 3090
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    throw v2
.end method

.method public reqAvrcpRegisterEventWatcher(BJ)Z
    .locals 5
    .param p1, "eventId"    # B
    .param p2, "interval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3620
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3621
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3626
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3628
    nop

    .line 3629
    return v2

    .line 3626
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3628
    throw v2
.end method

.method public reqAvrcpStartFastForward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3250
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3255
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3257
    nop

    .line 3258
    return v2

    .line 3255
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3257
    throw v2
.end method

.method public reqAvrcpStartRewind()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3296
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3301
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    nop

    .line 3304
    return v2

    .line 3301
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    throw v2
.end method

.method public reqAvrcpStop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3109
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3110
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3115
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3117
    nop

    .line 3118
    return v2

    .line 3115
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3117
    throw v2
.end method

.method public reqAvrcpStopFastForward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3273
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3278
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3280
    nop

    .line 3281
    return v2

    .line 3278
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3280
    throw v2
.end method

.method public reqAvrcpStopRewind()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3319
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3324
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    nop

    .line 3327
    return v2

    .line 3324
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    throw v2
.end method

.method public reqAvrcpUnregisterEventWatcher(B)Z
    .locals 5
    .param p1, "eventId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 3661
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3666
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    nop

    .line 3669
    return v2

    .line 3666
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    throw v2
.end method

.method public reqAvrcpUpdateSongStatus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7256
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7262
    nop

    .line 7263
    return-void

    .line 7260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7262
    throw v2
.end method

.method public reqAvrcpVolumeDown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3227
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3228
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3229
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3232
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    nop

    .line 3235
    return v2

    .line 3232
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    throw v2
.end method

.method public reqAvrcpVolumeUp()Z
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
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3204
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 3209
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3211
    nop

    .line 3212
    return v2

    .line 3209
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3211
    throw v2
.end method

.method public reqBtConnectHfpA2dp(Ljava/lang/String;)I
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4540
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4545
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4550
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4552
    nop

    .line 4553
    return v2

    .line 4550
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4552
    throw v2
.end method

.method public reqBtDisconnectAll()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4561
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4562
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4567
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4569
    nop

    .line 4570
    return v2

    .line 4567
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4569
    throw v2
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4292
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4294
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4297
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4299
    nop

    .line 4300
    return v2

    .line 4297
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4299
    throw v2
.end method

.method public reqBtPairedDevices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4346
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4351
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4353
    nop

    .line 4354
    return v2

    .line 4351
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4353
    throw v2
.end method

.method public reqBtUnpair(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4319
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4321
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4322
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4323
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4326
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4328
    nop

    .line 4329
    return v2

    .line 4326
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4328
    throw v2
.end method

.method public reqGattServerAddCharacteristic(Landroid/os/ParcelUuid;II)Z
    .locals 6
    .param p1, "charUuid"    # Landroid/os/ParcelUuid;
    .param p2, "properties"    # I
    .param p3, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7486
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7487
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7488
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7491
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7493
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7494
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7495
    iget-object v4, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbe

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7500
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7502
    nop

    .line 7503
    return v2

    .line 7500
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7502
    throw v2
.end method

.method public reqGattServerAddDescriptor(Landroid/os/ParcelUuid;I)Z
    .locals 6
    .param p1, "descUuid"    # Landroid/os/ParcelUuid;
    .param p2, "permissions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7549
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7551
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7554
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7556
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7557
    iget-object v4, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbf

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7559
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7562
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7564
    nop

    .line 7565
    return v2

    .line 7562
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7564
    throw v2
.end method

.method public reqGattServerBeginServiceDeclaration(ILandroid/os/ParcelUuid;)Z
    .locals 6
    .param p1, "srvcType"    # I
    .param p2, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7400
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 7401
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7402
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7405
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7407
    :goto_0
    iget-object v4, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xbd

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7412
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7414
    nop

    .line 7415
    return v2

    .line 7412
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7414
    throw v2
.end method

.method public reqGattServerClearServices()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7642
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7647
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7649
    nop

    .line 7650
    return v2

    .line 7647
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7649
    throw v2
.end method

.method public reqGattServerDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7371
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7372
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7376
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7378
    nop

    .line 7379
    return v2

    .line 7376
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7378
    throw v2
.end method

.method public reqGattServerEndServiceDeclaration()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7580
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7585
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7587
    nop

    .line 7588
    return v2

    .line 7585
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7587
    throw v2
.end method

.method public reqGattServerListen(Z)Z
    .locals 5
    .param p1, "listen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7670
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7675
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    nop

    .line 7678
    return v2

    .line 7675
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    throw v2
.end method

.method public reqGattServerRemoveService(ILandroid/os/ParcelUuid;)Z
    .locals 6
    .param p1, "srvcType"    # I
    .param p2, "srvcUuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7609
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 7610
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7611
    invoke-virtual {p2, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7614
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7616
    :goto_0
    iget-object v4, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc1

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7621
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7623
    nop

    .line 7624
    return v2

    .line 7621
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7623
    throw v2
.end method

.method public reqGattServerSendNotification(Ljava/lang/String;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;Z[B)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p4, "charUuid"    # Landroid/os/ParcelUuid;
    .param p5, "confirm"    # Z
    .param p6, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7790
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 7791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7792
    invoke-virtual {p3, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 7795
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7797
    :goto_0
    if-eqz p4, :cond_1

    .line 7798
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7799
    invoke-virtual {p4, v0, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 7802
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7804
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7805
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7806
    iget-object v4, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc5

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7808
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 7811
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7813
    nop

    .line 7814
    return v2

    .line 7811
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7813
    throw v2
.end method

.method public reqGattServerSendResponse(Ljava/lang/String;III[B)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p3, "status"    # I
    .param p4, "offset"    # I
    .param p5, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7749
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7752
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7754
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7755
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7756
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7757
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7758
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7763
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7765
    nop

    .line 7766
    return v2

    .line 7763
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7765
    throw v2
.end method

.method public reqHfpAnswerCall(I)Z
    .locals 5
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5143
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5148
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5150
    nop

    .line 5151
    return v2

    .line 5148
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5150
    throw v2
.end method

.method public reqHfpAudioTransferToCarkit()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5239
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5242
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5243
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5248
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5250
    nop

    .line 5251
    return v2

    .line 5248
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5250
    throw v2
.end method

.method public reqHfpAudioTransferToPhone()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5267
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5272
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5274
    nop

    .line 5275
    return v2

    .line 5272
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5274
    throw v2
.end method

.method public reqHfpConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4886
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4888
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4890
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4893
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4895
    nop

    .line 4896
    return v2

    .line 4893
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4895
    throw v2
.end method

.method public reqHfpDialCall(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5065
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5070
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5072
    nop

    .line 5073
    return v2

    .line 5070
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5072
    throw v2
.end method

.method public reqHfpDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4914
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4919
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4921
    nop

    .line 4922
    return v2

    .line 4919
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4921
    throw v2
.end method

.method public reqHfpMemoryDial(Ljava/lang/String;)Z
    .locals 5
    .param p1, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5117
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5122
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    nop

    .line 5125
    return v2

    .line 5122
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5124
    throw v2
.end method

.method public reqHfpReDial()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5090
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5092
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5095
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5097
    nop

    .line 5098
    return v2

    .line 5095
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5097
    throw v2
.end method

.method public reqHfpRejectIncomingCall()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5168
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5169
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5173
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5175
    nop

    .line 5176
    return v2

    .line 5173
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5175
    throw v2
.end method

.method public reqHfpSendDtmf(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5214
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5219
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5221
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5224
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    nop

    .line 5227
    return v2

    .line 5224
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    throw v2
.end method

.method public reqHfpTerminateCurrentCall()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5193
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5195
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5198
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5200
    nop

    .line 5201
    return v2

    .line 5198
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5200
    throw v2
.end method

.method public reqHfpVoiceDial(Z)Z
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5323
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5328
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5333
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5335
    nop

    .line 5336
    return v2

    .line 5333
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5335
    throw v2
.end method

.method public reqHidConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6452
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6454
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6457
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6459
    nop

    .line 6460
    return v2

    .line 6457
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6459
    throw v2
.end method

.method public reqHidDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6481
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6486
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6488
    nop

    .line 6489
    return v2

    .line 6486
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6488
    throw v2
.end method

.method public reqMapChangeReadStatus(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "isReadStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7029
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7030
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7031
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7032
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7034
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7037
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7039
    nop

    .line 7040
    return v2

    .line 7037
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7039
    throw v2
.end method

.method public reqMapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6904
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6905
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6908
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6910
    nop

    .line 6911
    return-void

    .line 6908
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6910
    throw v2
.end method

.method public reqMapDatabaseAvailable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6863
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6869
    nop

    .line 6870
    return-void

    .line 6867
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6869
    throw v2
.end method

.method public reqMapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6885
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6891
    nop

    .line 6892
    return-void

    .line 6889
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6891
    throw v2
.end method

.method public reqMapDeleteMessage(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "handle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6992
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6998
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6999
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7000
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7001
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7004
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7006
    nop

    .line 7007
    return v2

    .line 7004
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7006
    throw v2
.end method

.method public reqMapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6835
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6840
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6845
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6847
    nop

    .line 6848
    return v2

    .line 6845
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6847
    throw v2
.end method

.method public reqMapDownloadMessage(Ljava/lang/String;IZIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "isContentDownload"    # Z
    .param p4, "count"    # I
    .param p5, "startPos"    # I
    .param p6, "storage"    # I
    .param p7, "periodBegin"    # Ljava/lang/String;
    .param p8, "periodEnd"    # Ljava/lang/String;
    .param p9, "sender"    # Ljava/lang/String;
    .param p10, "recipient"    # Ljava/lang/String;
    .param p11, "readStatus"    # I
    .param p12, "typeFilter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6716
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 6719
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6720
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6721
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 6722
    move/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 6723
    move/from16 v6, p4

    :try_start_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 6724
    move/from16 v7, p5

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 6725
    move/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 6726
    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 6727
    move-object/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 6728
    move-object/from16 v11, p9

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 6729
    move-object/from16 v12, p10

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6730
    move/from16 v13, p11

    :try_start_9
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 6731
    move/from16 v14, p12

    :try_start_a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 6732
    move-object/from16 v15, p0

    :try_start_b
    iget-object v0, v15, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6733
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 6734
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v0, v4

    .line 6737
    .local v0, "_result":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6739
    nop

    .line 6740
    return v0

    .line 6737
    .end local v0    # "_result":Z
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v5, p3

    :goto_0
    move/from16 v6, p4

    :goto_1
    move/from16 v7, p5

    :goto_2
    move/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move-object/from16 v10, p8

    :goto_5
    move-object/from16 v11, p9

    :goto_6
    move-object/from16 v12, p10

    :goto_7
    move/from16 v13, p11

    :goto_8
    move/from16 v14, p12

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6739
    throw v0
.end method

.method public reqMapDownloadSingleMessage(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "folder"    # I
    .param p3, "handle"    # Ljava/lang/String;
    .param p4, "storage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6635
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6638
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6639
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6640
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6645
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6647
    nop

    .line 6648
    return v2

    .line 6645
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6647
    throw v2
.end method

.method public reqMapRegisterNotification(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "downloadNewMessage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6761
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6767
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6768
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6769
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6772
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6774
    nop

    .line 6775
    return v2

    .line 6772
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6774
    throw v2
.end method

.method public reqMapSendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6960
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6964
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6965
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6966
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6967
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6968
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6972
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6974
    nop

    .line 6975
    return v2

    .line 6972
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6974
    throw v2
.end method

.method public reqMapUnregisterNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6792
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6798
    nop

    .line 6799
    return-void

    .line 6796
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6798
    throw v2
.end method

.method public reqOppAcceptReceiveFile(Z)Z
    .locals 5
    .param p1, "accept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7184
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7189
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7191
    nop

    .line 7192
    return v2

    .line 7189
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7191
    throw v2
.end method

.method public reqOppInterruptReceiveFile()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7208
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7213
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7215
    nop

    .line 7216
    return v2

    .line 7213
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7215
    throw v2
.end method

.method public reqPbapCleanDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6083
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6089
    nop

    .line 6090
    return-void

    .line 6087
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6089
    throw v2
.end method

.method public reqPbapDatabaseAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6040
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6046
    nop

    .line 6047
    return-void

    .line 6044
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6046
    throw v2
.end method

.method public reqPbapDatabaseQueryNameByNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5977
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    nop

    .line 5984
    return-void

    .line 5981
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5983
    throw v2
.end method

.method public reqPbapDatabaseQueryNameByPartialNumber(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "findPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6007
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6008
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6014
    nop

    .line 6015
    return-void

    .line 6012
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6014
    throw v2
.end method

.method public reqPbapDeleteDatabaseByAddress(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6059
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6063
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6064
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6069
    nop

    .line 6070
    return-void

    .line 6067
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6069
    throw v2
.end method

.method public reqPbapDownload(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5595
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5596
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5601
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5603
    nop

    .line 5604
    return v2

    .line 5601
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5603
    throw v2
.end method

.method public reqPbapDownloadInterrupt(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6107
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6109
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6112
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6114
    nop

    .line 6115
    return v2

    .line 6112
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6114
    throw v2
.end method

.method public reqPbapDownloadRange(Ljava/lang/String;IIII)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .param p4, "startPos"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5667
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5668
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5669
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5670
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5675
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5677
    nop

    .line 5678
    return v2

    .line 5675
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5677
    throw v2
.end method

.method public reqPbapDownloadRangeToContactsProvider(Ljava/lang/String;IIII)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .param p4, "startPos"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5947
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5948
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5949
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5950
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5951
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5952
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5955
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5957
    nop

    .line 5958
    return v2

    .line 5955
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5957
    throw v2
.end method

.method public reqPbapDownloadRangeToDatabase(Ljava/lang/String;IIII)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .param p4, "startPos"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5806
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5807
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5808
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5809
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5810
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5815
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5817
    nop

    .line 5818
    return v2

    .line 5815
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5817
    throw v2
.end method

.method public reqPbapDownloadToContactsProvider(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5877
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5878
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5883
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5885
    nop

    .line 5886
    return v2

    .line 5883
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5885
    throw v2
.end method

.method public reqPbapDownloadToDatabase(Ljava/lang/String;II)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5731
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5734
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5737
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5738
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 5743
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5745
    nop

    .line 5746
    return v2

    .line 5743
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5745
    throw v2
.end method

.method public reqSendHidMouseCommand(IIII)Z
    .locals 5
    .param p1, "button"    # I
    .param p2, "offset_x"    # I
    .param p3, "offset_y"    # I
    .param p4, "wheel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6515
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6516
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6517
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6522
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6524
    nop

    .line 6525
    return v2

    .line 6522
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6524
    throw v2
.end method

.method public reqSendHidVirtualKeyCommand(II)Z
    .locals 5
    .param p1, "key_1"    # I
    .param p2, "key_2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6542
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6545
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6547
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6548
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6553
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6555
    nop

    .line 6556
    return v2

    .line 6553
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6555
    throw v2
.end method

.method public reqSppConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6221
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6226
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6228
    nop

    .line 6229
    return v2

    .line 6226
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6228
    throw v2
.end method

.method public reqSppConnectedDeviceAddressList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6270
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6276
    nop

    .line 6277
    return-void

    .line 6274
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6276
    throw v2
.end method

.method public reqSppDisconnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6248
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6253
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6255
    nop

    .line 6256
    return v2

    .line 6253
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6255
    throw v2
.end method

.method public reqSppSendData(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "sppData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6315
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6318
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6324
    nop

    .line 6325
    return-void

    .line 6322
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6324
    throw v2
.end method

.method public reqUsbBtPairedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/UsbBluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8162
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8164
    sget-object v2, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8167
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    nop

    .line 8170
    return-object v2

    .line 8167
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    throw v2
.end method

.method public reqXpBtPairedDevices(I)Ljava/util/List;
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/XpBluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8452
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8454
    sget-object v2, Lcom/nforetek/bt/aidl/XpBluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8457
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/XpBluetoothDevice;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8459
    nop

    .line 8460
    return-object v2

    .line 8457
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/XpBluetoothDevice;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8459
    throw v2
.end method

.method public setA2dpLocalVolume(F)Z
    .locals 5
    .param p1, "vol"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2797
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2799
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2804
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    nop

    .line 2807
    return v2

    .line 2804
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2806
    throw v2
.end method

.method public setA2dpStreamType(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2829
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 2834
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2836
    nop

    .line 2837
    return v2

    .line 2834
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2836
    throw v2
.end method

.method public setBtAutoConnect(II)V
    .locals 5
    .param p1, "condition"    # I
    .param p2, "period"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4671
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4677
    nop

    .line 4678
    return-void

    .line 4675
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4677
    throw v2
.end method

.method public setBtDiscoverableTimeout(I)Z
    .locals 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4206
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4209
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4211
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4216
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4218
    nop

    .line 4219
    return v2

    .line 4216
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4218
    throw v2
.end method

.method public setBtEnable(Z)Z
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4176
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4181
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4183
    nop

    .line 4184
    return v2

    .line 4181
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4183
    throw v2
.end method

.method public setBtLocalName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4422
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4427
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4429
    nop

    .line 4430
    return v2

    .line 4427
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4429
    throw v2
.end method

.method public setMapDownloadNotify(I)Z
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7060
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7065
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7070
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7072
    nop

    .line 7073
    return v2

    .line 7070
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7072
    throw v2
.end method

.method public setOppFilePath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7142
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7147
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7149
    nop

    .line 7150
    return v2

    .line 7147
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7149
    throw v2
.end method

.method public setPbapDownloadNotify(I)Z
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6142
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 6147
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    nop

    .line 6150
    return v2

    .line 6147
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    throw v2
.end method

.method public setTargetAddress(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7225
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7231
    nop

    .line 7232
    return-void

    .line 7229
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7231
    throw v2
.end method

.method public setUsbBtLocalName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8197
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8198
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8202
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8204
    nop

    .line 8205
    return v2

    .line 8202
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8204
    throw v2
.end method

.method public setUsbEnabled(Z)Z
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8034
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8037
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8039
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8040
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8041
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8044
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8046
    nop

    .line 8047
    return v2

    .line 8044
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8046
    throw v2
.end method

.method public startA2dpRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2775
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2776
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    nop

    .line 2783
    return-void

    .line 2780
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2782
    throw v2
.end method

.method public startBtDiscovery()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4238
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4240
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4243
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4245
    nop

    .line 4246
    return v2

    .line 4243
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4245
    throw v2
.end method

.method public startHfpRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5364
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5370
    nop

    .line 5371
    return-void

    .line 5368
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5370
    throw v2
.end method

.method public startSearch(I)Z
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8304
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8309
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8311
    nop

    .line 8312
    return v2

    .line 8309
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8311
    throw v2
.end method

.method public stopSearch(I)Z
    .locals 5
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8396
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8401
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8403
    nop

    .line 8404
    return v2

    .line 8401
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8403
    throw v2
.end method

.method public switchBtRoleMode(I)Z
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4600
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4603
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4605
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4607
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 4610
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4612
    nop

    .line 4613
    return v2

    .line 4610
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4612
    throw v2
.end method

.method public unpair(ILjava/lang/String;)Z
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8372
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8377
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8378
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8380
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8383
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    nop

    .line 8386
    return v2

    .line 8383
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8385
    throw v2
.end method

.method public unregisterA2dpCallback(Lcom/nforetek/bt/aidl/UiCallbackA2dp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackA2dp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2625
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackA2dp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2626
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 2631
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    nop

    .line 2634
    return v2

    .line 2631
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    throw v2
.end method

.method public unregisterAvrcpCallback(Lcom/nforetek/bt/aidl/UiCallbackAvrcp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2896
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2898
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 2903
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2905
    nop

    .line 2906
    return v2

    .line 2903
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2905
    throw v2
.end method

.method public unregisterBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4130
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4131
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4132
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 4137
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4139
    nop

    .line 4140
    return v2

    .line 4137
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4139
    throw v2
.end method

.method public unregisterGattServerCallback(Lcom/nforetek/bt/aidl/UiCallbackGattServer;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackGattServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7325
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackGattServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7326
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7331
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7333
    nop

    .line 7334
    return v2

    .line 7331
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7333
    throw v2
.end method

.method public unregisterHfpCallback(Lcom/nforetek/bt/aidl/UiCallbackHfp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackHfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4784
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4787
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4788
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackHfp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4789
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4791
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 4794
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4796
    nop

    .line 4797
    return v2

    .line 4794
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4796
    throw v2
.end method

.method public unregisterHidCallback(Lcom/nforetek/bt/aidl/UiCallbackHid;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackHid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackHid;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6367
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6372
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6374
    nop

    .line 6375
    return v2

    .line 6372
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6374
    throw v2
.end method

.method public unregisterMapCallback(Lcom/nforetek/bt/aidl/UiCallbackMap;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6595
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6599
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackMap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6600
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6605
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    nop

    .line 6608
    return v2

    .line 6605
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    throw v2
.end method

.method public unregisterOppCallback(Lcom/nforetek/bt/aidl/UiCallbackOpp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackOpp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7116
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackOpp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7117
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7122
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7124
    nop

    .line 7125
    return v2

    .line 7122
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7124
    throw v2
.end method

.method public unregisterPbapCallback(Lcom/nforetek/bt/aidl/UiCallbackPbap;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackPbap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5468
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5469
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackPbap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5470
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5471
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 5475
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5477
    nop

    .line 5478
    return v2

    .line 5475
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5477
    throw v2
.end method

.method public unregisterSppCallback(Lcom/nforetek/bt/aidl/UiCallbackSpp;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackSpp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6193
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackSpp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6194
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 6199
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6201
    nop

    .line 6202
    return v2

    .line 6199
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6201
    throw v2
.end method

.method public unregisterUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z
    .locals 5
    .param p1, "cb"    # Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7929
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7932
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7933
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7934
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    .line 7939
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7941
    nop

    .line 7942
    return v2

    .line 7939
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7941
    throw v2
.end method

.method public usbConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7986
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7987
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7991
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7993
    nop

    .line 7994
    return v2

    .line 7991
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7993
    throw v2
.end method

.method public usbDisConnect()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7999
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8003
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8005
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8008
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8010
    nop

    .line 8011
    return v2

    .line 8008
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8010
    throw v2
.end method

.method public usbDisConnectDevice(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8284
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8285
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8286
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8289
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8291
    nop

    .line 8292
    return v2

    .line 8289
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8291
    throw v2
.end method

.method public usbReqUnpair(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8021
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 8026
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8028
    nop

    .line 8029
    return v2

    .line 8026
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8028
    throw v2
.end method

.method public usbSearch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7951
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7956
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7958
    nop

    .line 7959
    return v2

    .line 7956
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7958
    throw v2
.end method

.method public usbStopSearch()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7967
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCommand"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7968
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCommand$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7969
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7970
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    nop

    :cond_0
    move v2, v4

    .line 7973
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7975
    nop

    .line 7976
    return v2

    .line 7973
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7975
    throw v2
.end method
