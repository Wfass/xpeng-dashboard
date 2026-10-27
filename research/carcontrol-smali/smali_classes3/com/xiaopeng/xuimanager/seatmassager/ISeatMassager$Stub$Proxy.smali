.class Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISeatMassager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public doVibrate(Ljava/util/List;Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 838
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 840
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 846
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->doVibrate(Ljava/util/List;Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 849
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    return-object v0
.end method

.method public getMassagerArea(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 1049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1054
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerArea(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1057
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1063
    throw p1
.end method

.method public getMassagerEffect(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 630
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerEffect(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 633
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 639
    throw p1
.end method

.method public getMassagerIntensity(ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 678
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerIntensity(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 681
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    throw p1
.end method

.method public getMassagerStatus(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 696
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 701
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getMassagerStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 704
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw p1
.end method

.method public getRhythmEnable(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 815
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 820
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmEnable(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 823
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    throw p1
.end method

.method public getRhythmIntensity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 962
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmIntensity(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 965
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw p1
.end method

.method public getRhythmPattern()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 1003
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1006
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getRhythmPattern()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1010
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    throw v2
.end method

.method public getVibrateIntensity(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 914
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 915
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->getVibrateIntensity(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw p1
.end method

.method public loadMassagerEffect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 511
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 515
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadMassagerEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 519
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v2
.end method

.method public loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 739
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 741
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    invoke-virtual {p1, v0, v2}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 750
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 751
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadVibrate(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 754
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw p1
.end method

.method public loadVibrateEffect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 718
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 722
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->loadVibrateEffect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 726
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v2
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 470
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 471
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 474
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->registerListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 478
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw p1
.end method

.method public setMassagerArea(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 1025
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1027
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1030
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1031
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerArea(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1034
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1040
    throw p1
.end method

.method public setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 607
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerEffect(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 610
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    throw p1
.end method

.method public setMassagerIntensity(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 648
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 654
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setMassagerIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 657
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 663
    throw p1
.end method

.method public setRhythmEnable(Ljava/util/List;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 791
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 793
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 796
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 797
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmEnable(Ljava/util/List;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 800
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 804
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw p1
.end method

.method public setRhythmIntensity(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 938
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 939
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 942
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 948
    throw p1
.end method

.method public setRhythmPattern(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 980
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 985
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setRhythmPattern(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 988
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw p1
.end method

.method public setVibrateIntensity(Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 888
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 891
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 892
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->setVibrateIntensity(Ljava/util/List;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 895
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 901
    throw p1
.end method

.method public showMassagerArea()Ljava/util/List;
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

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 1072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showMassagerArea()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1079
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1083
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1085
    throw v2
.end method

.method public showMassagerEffect()Ljava/util/List;
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

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 536
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showMassagerEffect()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 539
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw v2
.end method

.method public showVibrateEffect()Ljava/util/List;
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

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 769
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 772
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 773
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->showVibrateEffect()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 776
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    throw v2
.end method

.method public startMassager(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 560
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->startMassager(Ljava/util/List;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 563
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 564
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    throw p1
.end method

.method public stopMassager(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 580
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 583
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->stopMassager(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 586
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw p1
.end method

.method public stopVibrate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 864
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 868
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->stopVibrate()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 871
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 877
    throw v2
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.seatmassager.ISeatMassager"

    .line 490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 491
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 492
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 495
    invoke-static {}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassager;->unregisterListener(Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 499
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 504
    throw p1
.end method
