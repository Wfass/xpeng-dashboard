.class Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaCenter.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public avrcpNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1735
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1738
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1739
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1743
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    throw v2
.end method

.method public avrcpPause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1715
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1719
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1723
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1728
    throw v2
.end method

.method public avrcpPlay()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1695
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1698
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1699
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1703
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1708
    throw v2
.end method

.method public avrcpPrevious()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1755
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1756
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1758
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1759
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPrevious()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1763
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1768
    throw v2
.end method

.method public executeCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1891
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1893
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1894
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->executeCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1898
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw p1
.end method

.method public favorSong(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2003
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2004
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2007
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2011
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2012
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->favorSong(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2016
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2021
    throw p1
.end method

.method public getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1776
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1777
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1779
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1780
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1783
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1785
    sget-object v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1792
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    throw v2
.end method

.method public getAvrcpPlayStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1825
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1826
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1828
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1829
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpPlayStatus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1832
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1836
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1838
    throw v2
.end method

.method public getAvrcpPosition()[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1803
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1804
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1806
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1807
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpPosition()[J

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1810
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1816
    throw v2
.end method

.method public getBtStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1629
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1632
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1633
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getBtStatus()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1636
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1637
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1642
    throw v2
.end method

.method public getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2057
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2061
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2062
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2065
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2067
    sget-object p1, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2074
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2076
    throw p1
.end method

.method public getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1306
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1310
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1311
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1314
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1316
    sget-object p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1323
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    throw p1
.end method

.method public getCurrentMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1525
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1528
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1529
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1532
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1538
    throw v2
.end method

.method public getCurrentPlayStatus(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1287
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1288
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPlayStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1297
    throw p1
.end method

.method public getCurrentPosition(I)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1338
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1339
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPosition(I)[J

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1342
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1348
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    return-object v0
.end method

.method public notifyLyricInfoUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1932
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1934
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1938
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1942
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1943
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->notifyLyricInfoUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1947
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1952
    throw p1
.end method

.method public notifyLyricUpdate(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1419
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1421
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1423
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1424
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->notifyLyricUpdate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1428
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    throw p1
.end method

.method public pauseBtMedia()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1608
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1609
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1611
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1612
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->pauseBtMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1616
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    throw v2
.end method

.method public pauseRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2278
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2279
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->pauseRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2283
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2288
    throw v2
.end method

.method public playBtMedia()V
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
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1588
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1589
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1591
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1592
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playBtMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1596
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    throw v2
.end method

.method public playbackControl(III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1235
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1242
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playbackControl(III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1245
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1251
    throw p1
.end method

.method public playbackControlWithBundle(IILandroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 2177
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2181
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2185
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2186
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playbackControlWithBundle(IILandroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2189
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2195
    throw p1
.end method

.method public registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1846
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1847
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1848
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1850
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1851
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1855
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1860
    throw p1
.end method

.method public registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1546
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1547
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1548
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1550
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1551
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1555
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 915
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 916
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 917
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 920
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 924
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    throw p1
.end method

.method public registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1959
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1960
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1961
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1963
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1964
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1968
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1971
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1973
    throw p1
.end method

.method public registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1440
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1441
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1442
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1444
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1445
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1449
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1454
    throw p1
.end method

.method public registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1482
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1483
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1484
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1486
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1487
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1491
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    throw p1
.end method

.method public registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1192
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1193
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1194
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1196
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1197
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1201
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    throw p1
.end method

.method public registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1151
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1152
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1155
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1159
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1164
    throw p1
.end method

.method public registerVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2084
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 2086
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2087
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2089
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2090
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2094
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw p1
.end method

.method public registerVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2130
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2131
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2133
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2134
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2143
    throw p1
.end method

.method public registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1377
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1378
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1379
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1381
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1382
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1386
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    throw p1
.end method

.method public requestMediaButton(ZLandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2028
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2029
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    .line 2031
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2035
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2039
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2040
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->requestMediaButton(ZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2044
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2047
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2049
    throw p1
.end method

.method public setBtVolume(F)V
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
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1674
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1676
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1678
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setBtVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1683
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1688
    throw p1
.end method

.method public setFavorite(ZLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1651
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1652
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1654
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1656
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1657
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setFavorite(ZLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1660
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1666
    throw p1
.end method

.method public setSDPosition(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1913
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1915
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1916
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setSDPosition(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1920
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    throw p1
.end method

.method public setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2229
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2232
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    invoke-virtual {p2, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2240
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2241
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2248
    throw p1
.end method

.method public setVisualizerViewEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1357
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1360
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1361
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setVisualizerViewEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1365
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1370
    throw p1
.end method

.method public startRender()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2255
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2256
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2258
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2259
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->startRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2263
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    throw v2
.end method

.method public stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2202
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2204
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 2207
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2211
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2215
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2216
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    throw p1
.end method

.method public switchSource(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1260
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1264
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1265
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->switchSource(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1268
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    throw p1
.end method

.method public unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1867
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1868
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1869
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1871
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1872
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1876
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    throw p1
.end method

.method public unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1568
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1569
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1571
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1572
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1576
    :cond_1
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

    .line 1581
    throw p1
.end method

.method public unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1462
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1463
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1465
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1466
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1470
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    throw p1
.end method

.method public unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1503
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1504
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1505
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1507
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1508
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1512
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1517
    throw p1
.end method

.method public unRegisterPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1213
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1214
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1215
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1217
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1218
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1222
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1227
    throw p1
.end method

.method public unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1172
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1173
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1175
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1176
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1180
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    throw p1
.end method

.method public unRegisterVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 2108
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2109
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2111
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2112
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2116
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2121
    throw p1
.end method

.method public unRegisterVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 2150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2152
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2153
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2155
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2156
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2160
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2165
    throw p1
.end method

.method public unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1399
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1400
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1402
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1403
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1407
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    throw p1
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 937
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 938
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 940
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 941
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 945
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw p1
.end method

.method public unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1980
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1981
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1982
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1984
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1985
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1989
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1994
    throw p1
.end method

.method public vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1040
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1042
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1051
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1055
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1060
    throw p1
.end method

.method public vendorRegister()V
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
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 957
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 958
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 960
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 961
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorRegister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 965
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v2
.end method

.method public vendorSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1067
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1069
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1070
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1072
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1073
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1077
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1082
    throw p1
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1117
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorStartAudioSession(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    throw p1
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1130
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1136
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorStopAudioSession(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    throw p1
.end method

.method public vendorUnRegister()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 980
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 981
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUnRegister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    throw v2
.end method

.method public vendorUnSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1089
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1091
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1092
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1094
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1095
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUnSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1099
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    throw p1
.end method

.method public vendorUpdatePlaybackStatus(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1001
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1002
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUpdatePlaybackStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1006
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1009
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1011
    throw p1
.end method

.method public vendorUpdatePosition(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IMediaCenter"

    .line 1018
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1020
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1021
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1023
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1024
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUpdatePosition(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1033
    throw p1
.end method
