.class Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarImmSvc.java"

# interfaces
.implements Landroid/car/xpeng/imm/ICarImmSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/imm/ICarImmSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/imm/ICarImmSvc;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getImmAroundViewMonitorMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 856
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 858
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 859
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmAroundViewMonitorMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 861
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 865
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getImmDriverPriorityMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 837
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmDriverPriorityMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 839
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 843
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getImmOrientation()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 502
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmOrientation()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 505
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getImmOrientationCoord([F[F[F)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-nez p1, :cond_0

    .line 549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 552
    :cond_0
    array-length v3, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-nez p2, :cond_1

    .line 555
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 558
    :cond_1
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-nez p3, :cond_2

    .line 561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 564
    :cond_2
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    :goto_2
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 567
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 568
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmOrientationCoord([F[F[F)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 570
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 572
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 573
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 574
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readFloatArray([F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getImmRacerMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 790
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 791
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 793
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmRacerMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 795
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 799
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getImmVoiceAwakenMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 812
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 815
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->getImmVoiceAwakenMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 817
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 821
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.imm.ICarImmSvc"

    return-object v0
.end method

.method public registerListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 680
    invoke-interface {p1}, Landroid/car/xpeng/imm/ICarImmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 681
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 683
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->registerListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 686
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public resetImmOrientationCoord()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 969
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 971
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 972
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->resetImmOrientationCoord()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 974
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setImmAiOrientation(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 766
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 771
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmAiOrientation(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 773
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmAroundViewMonitorMode(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 659
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 660
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v3, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 663
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmAroundViewMonitorMode(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 665
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmDriverPriorityMode(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 636
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 637
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget-object v3, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 640
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmDriverPriorityMode(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 642
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmMachZeroCalibrate(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 946
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 950
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMachZeroCalibrate(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 952
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmMovingDirection(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 991
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 994
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 995
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMovingDirection(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 997
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmMovingDirectionValue(IF)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 1014
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1017
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1019
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmMovingDirectionValue(IF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1021
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmOrientation(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 477
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmOrientation(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 483
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmOrientationCoord([F[F[F)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 525
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 526
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmOrientationCoord([F[F[F)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 530
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmRacerMode(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 590
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 591
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v3, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 594
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmRacerMode(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 596
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmTouchVibPercentage(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 743
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 747
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmTouchVibPercentage(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 749
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmVoiceAwakenFinish()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 924
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 926
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 927
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenFinish()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 929
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setImmVoiceAwakenMode(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 614
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object v3, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 616
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 617
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenMode(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 619
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setImmVoiceAwakenRotation(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 901
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 905
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->setImmVoiceAwakenRotation(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 907
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public syncImmBaseOrientation(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 882
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->syncImmBaseOrientation(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 884
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public triggerImmTouchVib(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 720
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 724
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->triggerImmTouchVib(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 726
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.imm.ICarImmSvc"

    .line 698
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 699
    invoke-interface {p1}, Landroid/car/xpeng/imm/ICarImmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 700
    iget-object v2, p0, Landroid/car/xpeng/imm/ICarImmSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 702
    invoke-static {}, Landroid/car/xpeng/imm/ICarImmSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/imm/ICarImmSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/imm/ICarImmSvc;->unregisterListener(Landroid/car/xpeng/imm/ICarImmListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 705
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
