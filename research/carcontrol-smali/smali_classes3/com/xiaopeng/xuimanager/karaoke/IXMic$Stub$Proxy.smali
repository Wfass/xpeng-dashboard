.class Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;
.super Ljava/lang/Object;
.source "IXMic.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IXMic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IXMic;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I
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
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 729
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 732
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 735
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw p1
.end method

.method public XMS_Distroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 794
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Distroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 802
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 808
    throw p1
.end method

.method public XMS_GetEcho(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1006
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1011
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetEcho(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1014
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1020
    throw p1
.end method

.method public XMS_GetHandShakeStatus(Ljava/lang/String;)I
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
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 864
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 868
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 869
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetHandShakeStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 872
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    throw p1
.end method

.method public XMS_GetMicPowerStatus(Ljava/lang/String;)I
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
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 914
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 915
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetMicPowerStatus(Ljava/lang/String;)I

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

.method public XMS_GetMicStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 887
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 891
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 892
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetMicStatus(Ljava/lang/String;)I

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

.method public XMS_GetToken(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 817
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 822
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetToken(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 825
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 831
    throw p1
.end method

.method public XMS_GetVolume(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 958
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 963
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 964
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_GetVolume(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 967
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 973
    throw p1
.end method

.method public XMS_MicCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1535
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1542
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1543
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_MicCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1546
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1552
    throw p1
.end method

.method public XMS_MicDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1610
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1612
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1614
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1615
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_MicDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1618
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1624
    throw p1
.end method

.method public XMS_MicGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1563
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1565
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1566
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_MicGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1569
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1570
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1575
    throw p1
.end method

.method public XMS_MicGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1510
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1516
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1517
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1520
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1521
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1526
    throw p1
.end method

.method public XMS_MicRead(Ljava/lang/String;[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1584
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1587
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1590
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1591
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_MicRead(Ljava/lang/String;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1596
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    throw p1
.end method

.method public XMS_Pause(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1180
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1181
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Pause(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1184
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1190
    throw p1
.end method

.method public XMS_PausePlay(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1293
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1295
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1296
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_PausePlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    throw p1
.end method

.method public XMS_Read(Ljava/lang/String;[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1464
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1467
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Read(Ljava/lang/String;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1471
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1473
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1478
    throw p1
.end method

.method public XMS_RecCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1388
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1395
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1396
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1399
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1405
    throw p1
.end method

.method public XMS_RecDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1487
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1492
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1501
    throw p1
.end method

.method public XMS_RecGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1414
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1416
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1419
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1422
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1428
    throw p1
.end method

.method public XMS_RecGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1363
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1369
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1370
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1373
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1379
    throw p1
.end method

.method public XMS_RecStart(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1224
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1226
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1227
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecStart(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1236
    throw p1
.end method

.method public XMS_RecStop(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1203
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1204
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RecStop(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1207
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    throw p1
.end method

.method public XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 749
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 751
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 752
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 754
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 755
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 759
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 764
    throw p1
.end method

.method public XMS_Resume(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1247
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1249
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1250
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Resume(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1253
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1259
    throw p1
.end method

.method public XMS_ResumePlay(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1268
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1270
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1273
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_ResumePlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1276
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1282
    throw p1
.end method

.method public XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1321
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1322
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1325
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    throw p1
.end method

.method public XMS_SetEcho(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 982
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 987
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 988
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_SetEcho(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 991
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    throw p1
.end method

.method public XMS_SetRecMode(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1437
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1442
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1443
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_SetRecMode(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1446
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1452
    throw p1
.end method

.method public XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 840
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 846
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I

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

.method public XMS_SetVolume(Ljava/lang/String;II)I
    .locals 5
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
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 939
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 940
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_SetVolume(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 943
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw p1
.end method

.method public XMS_StopSaveRec(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1342
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1344
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1345
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_StopSaveRec(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    throw p1
.end method

.method public XMS_TrackCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1054
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1061
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1062
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_TrackCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1065
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1070
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1071
    throw p1
.end method

.method public XMS_TrackDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1157
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1158
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_TrackDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1161
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    throw p1
.end method

.method public XMS_TrackGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1132
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1135
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_TrackGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1138
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    throw p1
.end method

.method public XMS_TrackGetLatency(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1080
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1084
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1085
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_TrackGetLatency(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1088
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1094
    throw p1
.end method

.method public XMS_TrackGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1029
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1036
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_TrackGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1039
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    throw p1
.end method

.method public XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 771
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 773
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 774
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 776
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 777
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 781
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    throw p1
.end method

.method public XMS_Write(Ljava/lang/String;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1108
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_Write(Ljava/lang/String;[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1114
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1116
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    throw p1
.end method

.method public XMS_clientDied()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1675
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1678
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_clientDied()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1682
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1688
    throw v2
.end method

.method public XMS_connectMicFlow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1657
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1658
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_connectMicFlow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1662
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    throw v2
.end method

.method public XMS_getMicName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 1633
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1634
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1637
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic;->XMS_getMicName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1640
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1641
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1646
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IXMic"

    return-object v0
.end method
