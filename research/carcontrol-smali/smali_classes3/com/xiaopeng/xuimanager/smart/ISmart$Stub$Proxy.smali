.class Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmart.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/ISmart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmart;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enableCarSpeedVolume(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2090
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2091
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2094
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2095
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->enableCarSpeedVolume(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2099
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2104
    throw p1
.end method

.method public getAlarmFromAzimuthOrIcm()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1184
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1188
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getAlarmFromAzimuthOrIcm()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1191
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1195
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    throw v2
.end method

.method public getAlarmVolume()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1636
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1637
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1639
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1640
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getAlarmVolume()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1643
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1649
    throw v2
.end method

.method public getBootSoundEffect()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1870
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1871
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1873
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1874
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getBootSoundEffect()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1877
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1878
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    throw v2
.end method

.method public getBossKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1313
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1314
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1316
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1317
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getBossKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1320
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    throw v2
.end method

.method public getFftLLUEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2001
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2004
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2005
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getFftLLUEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2008
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2012
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.smart.ISmart"

    return-object v0
.end method

.method public getKeyBoardTouchPrompt()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1227
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1231
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getKeyBoardTouchPrompt()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1234
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1238
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    throw v2
.end method

.method public getLangLightEffectEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1572
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1573
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1575
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1576
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLangLightEffectEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1579
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1583
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    throw v2
.end method

.method public getLangLightEffectNameList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1378
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1382
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1383
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLangLightEffectNameList(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1386
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1387
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1392
    throw p1
.end method

.method public getLeftLongTouchPadKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2592
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2594
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2595
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLeftLongTouchPadKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2598
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2599
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    throw v2
.end method

.method public getLeftTouchPadKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2505
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2506
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2508
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2509
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLeftTouchPadKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2512
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    throw v2
.end method

.method public getLightEffect(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1892
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1896
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1897
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLightEffect(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1900
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1904
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1906
    throw p1
.end method

.method public getLluSleepMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1530
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1532
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1533
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLluSleepMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1536
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    throw v2
.end method

.method public getLluWakeWaitMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1486
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1487
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1489
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1490
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getLluWakeWaitMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1493
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw v2
.end method

.method public getRightLongTouchPadKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2634
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2635
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2637
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2638
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightLongTouchPadKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2641
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2647
    throw v2
.end method

.method public getRightSatelliteKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2677
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2678
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2680
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2681
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightSatelliteKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2684
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2685
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2690
    throw v2
.end method

.method public getRightTouchPadKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2548
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2551
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2552
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRightTouchPadKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw v2
.end method

.method public getRunnningLluEffectName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2134
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2136
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2137
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getRunnningLluEffectName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2140
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2141
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2146
    throw v2
.end method

.method public getSayHiEffect()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1827
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1830
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1831
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSayHiEffect()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1834
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1840
    throw v2
.end method

.method public getSayHiEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1784
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1787
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1788
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSayHiEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1791
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1795
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1797
    throw v2
.end method

.method public getSpeechStatus()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2283
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2284
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2286
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2287
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getSpeechStatus()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2290
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2294
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2296
    throw v2
.end method

.method public getTouchRotationDirection()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1357
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1359
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getTouchRotationDirection()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1363
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1369
    throw v2
.end method

.method public getVolumeDownInReverseMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1145
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getVolumeDownInReverseMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1148
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1152
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    throw v2
.end method

.method public getVolumeDownWithDoorOpen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1098
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1102
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getVolumeDownWithDoorOpen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1105
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1109
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1111
    throw v2
.end method

.method public getXKeyForCustomer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1270
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1274
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->getXKeyForCustomer()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1277
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw v2
.end method

.method public isLightDanceAvailable()I
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
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2179
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2181
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2182
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->isLightDanceAvailable()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2185
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    throw v2
.end method

.method public isLightDancing()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2070
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2072
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2073
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->isLightDancing()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2076
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2080
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2082
    throw v2
.end method

.method public registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2200
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2201
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2203
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2204
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2208
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2213
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1034
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1035
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1036
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1038
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1039
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->registerListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1043
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    throw p1
.end method

.method public setAlarmFromAzimuthOrIcm(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1163
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1167
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setAlarmFromAzimuthOrIcm(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1171
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    throw p1
.end method

.method public setAlarmVolume(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1618
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1619
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setAlarmVolume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1628
    throw p1
.end method

.method public setBootSoundEffect(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1848
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1852
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1853
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setBootSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1857
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1862
    throw p1
.end method

.method public setBossKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1295
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1296
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setBossKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1300
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    throw p1
.end method

.method public setFftLLUEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1979
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1980
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1983
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1984
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setFftLLUEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1988
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    throw p1
.end method

.method public setKeyBoardTouchPrompt(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1206
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1209
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1210
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setKeyBoardTouchPrompt(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1214
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    throw p1
.end method

.method public setLangLightEffectEnable(Z)V
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
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1551
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1554
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1555
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1559
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1564
    throw p1
.end method

.method public setLangLightEffectMode(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1405
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1406
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectMode(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1410
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    throw p1
.end method

.method public setLangLightEffectWithMode(Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2160
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2161
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightEffectWithMode(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2165
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2170
    throw p1
.end method

.method public setLangLightMusicEffect(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1741
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1743
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1746
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLangLightMusicEffect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1750
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    throw p1
.end method

.method public setLeftLongTouchPadKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2569
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2573
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2574
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLeftLongTouchPadKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2578
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2581
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2583
    throw p1
.end method

.method public setLeftTouchPadKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2483
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2487
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2488
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLeftTouchPadKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2492
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2497
    throw p1
.end method

.method public setLightEffect(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1914
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1917
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1919
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1920
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLightEffect(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1924
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1928
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1929
    throw p1
.end method

.method public setLightEffectAndMusic(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1940
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1942
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1943
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLightEffectAndMusic(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1947
    :cond_0
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

.method public setLluSleepMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1507
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1512
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLluSleepMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1516
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    throw p1
.end method

.method public setLluWakeWaitMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1464
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1466
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1468
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1469
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setLluWakeWaitMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1478
    throw p1
.end method

.method public setMusicDelayTimeForDebug(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1720
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1724
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1725
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicDelayTimeForDebug(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1729
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    throw p1
.end method

.method public setMusicSpectrumToLangLight(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1597
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1598
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicSpectrumToLangLight(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1602
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1607
    throw p1
.end method

.method public setMusicStartTickNumForDebug(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1678
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1683
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicStartTickNumForDebug(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1687
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1692
    throw p1
.end method

.method public setMusicStopTickNumForDebug(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1699
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1703
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1704
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicStopTickNumForDebug(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1708
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    throw p1
.end method

.method public setMusicTableForDebug(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1657
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1661
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1662
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setMusicTableForDebug(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1666
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1671
    throw p1
.end method

.method public setPause(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1423
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1427
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setPause(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1431
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    throw p1
.end method

.method public setRightLongTouchPadKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2612
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2616
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2617
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightLongTouchPadKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2621
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2626
    throw p1
.end method

.method public setRightSatelliteKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2655
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2657
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2659
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2660
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightSatelliteKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2664
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    throw p1
.end method

.method public setRightTouchPadKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2526
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2530
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2531
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setRightTouchPadKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2535
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw p1
.end method

.method public setSayHiEffect(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1809
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1810
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSayHiEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1814
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1817
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1819
    throw p1
.end method

.method public setSayHiEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1762
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1763
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1766
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1767
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSayHiEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1771
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1776
    throw p1
.end method

.method public setSpeedVolumeMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2111
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2115
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2116
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setSpeedVolumeMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2120
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2125
    throw p1
.end method

.method public setTouchRotationDirection(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1338
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1339
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setTouchRotationDirection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1343
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1348
    throw p1
.end method

.method public setVolumeDownInReverseMode(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1120
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1123
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1124
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setVolumeDownInReverseMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1128
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    throw p1
.end method

.method public setVolumeDownWithDoorOpen(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1076
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1077
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1080
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1081
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setVolumeDownWithDoorOpen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1085
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1090
    throw p1
.end method

.method public setXKeyForCustomer(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1252
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1253
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->setXKeyForCustomer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1257
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1262
    throw p1
.end method

.method public speakByImportant(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2330
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2332
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2333
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByImportant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2336
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2337
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2342
    throw p1
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2374
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2376
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2377
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2379
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2380
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2383
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2389
    throw p1
.end method

.method public speakByNormal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2307
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2309
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2310
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByNormal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2313
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2314
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2319
    throw p1
.end method

.method public speakByUrgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2351
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2353
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2355
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2356
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->speakByUrgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2359
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2360
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    throw p1
.end method

.method public startAiLluMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2245
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2246
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startAiLluMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2250
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2255
    throw p1
.end method

.method public startLightDancing(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2023
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2028
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2029
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startLightDancing(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2032
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2038
    throw p1
.end method

.method public startMicRecordMode(I)I
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
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2400
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2402
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2403
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->startMicRecordMode(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2406
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2412
    throw p1
.end method

.method public stopAiLluMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2263
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2265
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2266
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopAiLluMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2270
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2275
    throw v2
.end method

.method public stopAllSpeech()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2463
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2464
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2466
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2467
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopAllSpeech()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2471
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    throw v2
.end method

.method public stopLightDancing()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2047
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2050
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2051
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopLightDancing()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2054
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2060
    throw v2
.end method

.method public stopLightEffectShow()V
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
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1959
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1960
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1962
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1963
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopLightEffectShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1967
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1972
    throw v2
.end method

.method public stopMicRecordMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2421
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2424
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2425
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopMicRecordMode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2428
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2434
    throw v2
.end method

.method public stopSpeech(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2442
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2444
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2446
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2447
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->stopSpeech(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2451
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    throw p1
.end method

.method public unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 2220
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2221
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2222
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2224
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2225
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2229
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    throw p1
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1055
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1056
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1057
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1059
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1060
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->unregisterListener(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1064
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1067
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    throw p1
.end method

.method public updateEffectFiles(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.smart.ISmart"

    .line 1443
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1448
    invoke-static {}, Lcom/xiaopeng/xuimanager/smart/ISmart$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmart;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/smart/ISmart;->updateEffectFiles(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1452
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1457
    throw p1
.end method
