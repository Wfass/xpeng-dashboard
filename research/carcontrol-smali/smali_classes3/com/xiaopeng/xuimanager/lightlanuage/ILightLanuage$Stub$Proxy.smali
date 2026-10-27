.class Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILightLanuage.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDanceEffectRunnable()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 793
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getDanceEffectRunnable()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 796
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    return-object v0
.end method

.method public getLightEffect()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 439
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 443
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLightEffect()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 446
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw v2
.end method

.method public getLightEffectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 618
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLightEffectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 621
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 625
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw v2
.end method

.method public getLocalDanceEffectInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 506
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 510
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLocalDanceEffectInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 513
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw v2
.end method

.method public getMcuEffect(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 657
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 662
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getMcuEffect(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 665
    :cond_0
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

    .line 671
    throw p1
.end method

.method public getRhythmEffect()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 706
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRhythmEffect()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 709
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 715
    throw v2
.end method

.method public getRhythmEffectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 571
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 575
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRhythmEffectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 578
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 579
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 582
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 584
    throw v2
.end method

.method public getRunningEffect()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 745
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 749
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRunningEffect()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 752
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    throw v2
.end method

.method public getSayhiEffectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getSayhiEffectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 539
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    throw v2
.end method

.method public getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 483
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 491
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw p1
.end method

.method public getUserEffectInfoList()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 465
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getUserEffectInfoList()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 468
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 469
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v2
.end method

.method public isDanceEffectRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 767
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 768
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 771
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->isDanceEffectRunning()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 774
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 778
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    throw v2
.end method

.method public loadLightEffect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 418
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->loadLightEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v2
.end method

.method public playEffect(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 816
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 817
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->playEffect(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 820
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    throw p1
.end method

.method public playSmartEffect(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 858
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 859
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->playSmartEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 863
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 868
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 377
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 378
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 385
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    throw p1
.end method

.method public setLightEffectEnable(Z)V
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
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 636
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 640
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setLightEffectEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 644
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    throw p1
.end method

.method public setMcuEffect(II)V
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
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 684
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 685
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setMcuEffect(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 689
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw p1
.end method

.method public setRhythmEffect(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 723
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 727
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 728
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setRhythmEffect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 732
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 737
    throw p1
.end method

.method public setRhythmEffectEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 592
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 593
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 597
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setRhythmEffectEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 601
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    throw p1
.end method

.method public setSayhiEffectEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 550
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 554
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setSayhiEffectEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 558
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    throw p1
.end method

.method public stopEffect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 834
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 837
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 838
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->stopEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 842
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    throw v2
.end method

.method public stopSmartEffect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 875
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 876
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 879
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->stopSmartEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 883
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 888
    throw v2
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 397
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 398
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 399
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 402
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 406
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw p1
.end method
