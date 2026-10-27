.class Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITheme.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ITheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/ITheme;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addTheme(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1171
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1173
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1174
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->addTheme(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1178
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1183
    throw p1
.end method

.method public addThemeElement(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2444
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2447
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2449
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2450
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->addThemeElement(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2454
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2459
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1378
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1386
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1387
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1391
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw p1
.end method

.method public cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2582
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2584
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2588
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2590
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2592
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2593
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2597
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2602
    throw p1
.end method

.method public deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1192
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1196
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1200
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1201
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1205
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1210
    throw p1
.end method

.method public deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2468
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2472
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2474
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2476
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2477
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2481
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2486
    throw p1
.end method

.method public getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2084
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2086
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2087
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2090
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2093
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2095
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2096
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2099
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2101
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 2108
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2110
    throw p1
.end method

.method public getBitmapFromSelectedTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2121
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2123
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2124
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBitmapFromSelectedTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2129
    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2136
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    throw p1
.end method

.method public getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1489
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1491
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1495
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1498
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1501
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1502
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1505
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1506
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 1509
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1511
    throw p1
.end method

.method public getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z
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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1820
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1824
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1827
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1829
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1830
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1833
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1837
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    throw p1
.end method

.method public getBooleanArrayFromSelectedTheme(Ljava/lang/String;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1848
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1850
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1852
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1853
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanArrayFromSelectedTheme(Ljava/lang/String;)[Z

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1856
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1857
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1862
    throw p1
.end method

.method public getBooleanFromSelectedTheme(Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1520
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1522
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1525
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1526
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getBooleanFromSelectedTheme(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1529
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1533
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1535
    throw p1
.end method

.method public getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1656
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1660
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1666
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1667
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1670
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1676
    throw p1
.end method

.method public getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1979
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1983
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1986
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1988
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1989
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1992
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1997
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1998
    throw p1
.end method

.method public getColorArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2007
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2009
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2011
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2012
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2015
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2016
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2020
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2021
    throw p1
.end method

.method public getColorFromSelectedTheme(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1690
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1691
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getColorFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1694
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    throw p1
.end method

.method public getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2369
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2373
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2374
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2377
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2379
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2386
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2388
    throw p1
.end method

.method public getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1709
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1711
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1715
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1721
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1722
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1725
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw p1
.end method

.method public getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2030
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2032
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2036
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2038
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2039
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2041
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2042
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2045
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2051
    throw p1
.end method

.method public getDimensionArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2062
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2064
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2065
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2074
    throw p1
.end method

.method public getDimensionFromSelectedTheme(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1740
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1746
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDimensionFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1749
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    throw p1
.end method

.method public getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1404
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1406
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1414
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1415
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1418
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1424
    throw p1
.end method

.method public getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2201
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2203
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2207
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2210
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2212
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2213
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2216
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2222
    throw p1
.end method

.method public getFileBytesFromSelectedTheme(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2231
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2233
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2235
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2236
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileBytesFromSelectedTheme(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2239
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2240
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    throw p1
.end method

.method public getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2150
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2154
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2157
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2159
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2160
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2163
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2164
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2169
    throw p1
.end method

.method public getFileTextFromSelectedTheme(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2180
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2182
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2183
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFileTextFromSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2186
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2187
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2192
    throw p1
.end method

.method public getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1601
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1605
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1609
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1611
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1612
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 1615
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1616
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    throw p1
.end method

.method public getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1924
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1926
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1930
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1933
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1935
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1936
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1939
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1940
    invoke-virtual {v1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1945
    throw p1
.end method

.method public getFloatArrayFromSelectedTheme(Ljava/lang/String;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1954
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1958
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1959
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatArrayFromSelectedTheme(Ljava/lang/String;)[D

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1962
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1968
    throw p1
.end method

.method public getFloatFromSelectedTheme(Ljava/lang/String;D)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1633
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1635
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1636
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getFloatFromSelectedTheme(Ljava/lang/String;D)D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 1639
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw p1
.end method

.method public getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1544
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1546
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1550
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1556
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1557
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1560
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw p1
.end method

.method public getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1871
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1873
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1877
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1882
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1883
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1886
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1892
    throw p1
.end method

.method public getIntegerArrayFromSelectedTheme(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1901
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1903
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1905
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1906
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1909
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1915
    throw p1
.end method

.method public getIntegerFromSelectedTheme(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1575
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1580
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1581
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getIntegerFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1584
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.theme.ITheme"

    return-object v0
.end method

.method public getRemoteThemeElements(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2300
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2301
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getRemoteThemeElements(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2305
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    throw p1
.end method

.method public getRemoteThemes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1104
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getRemoteThemes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1108
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 1111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1113
    throw v2
.end method

.method public getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1144
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1146
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    sget-object v2, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/theme/Theme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1159
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1161
    throw v2
.end method

.method public getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2346
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2349
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2351
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2358
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2360
    throw p1
.end method

.method public getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1436
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1440
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1446
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1447
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1450
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1451
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1456
    throw p1
.end method

.method public getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            "Ljava/lang/String;",
            ")",
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

    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1767
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1771
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1773
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1774
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1776
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1777
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1780
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1781
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1786
    throw p1
.end method

.method public getStringArrayFromSelectedTheme(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    .line 1791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1795
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1797
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1799
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1800
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringArrayFromSelectedTheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1803
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1804
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1809
    throw p1
.end method

.method public getStringFromSelectedTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1465
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1468
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1470
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1471
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getStringFromSelectedTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1474
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1475
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1480
    throw p1
.end method

.method public getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2610
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2612
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2616
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2620
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2621
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2624
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2630
    throw p1
.end method

.method public getThemeElements(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation

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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2322
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2323
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemeElements(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 2326
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2327
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2332
    throw p1
.end method

.method public getThemes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1124
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1125
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->getThemes()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1128
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1129
    sget-object v2, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    throw v2
.end method

.method public pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1324
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1328
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1332
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1333
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1337
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    throw p1
.end method

.method public pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2530
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2531
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2534
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2536
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2538
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2539
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2543
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2548
    throw p1
.end method

.method public registerThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2255
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2256
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2258
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2259
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->registerThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2263
    :cond_1
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
    move-exception p1

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    throw p1
.end method

.method public registerThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1244
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1245
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1246
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1248
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1249
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->registerThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1253
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1258
    throw p1
.end method

.method public resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1351
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1352
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1359
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1360
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1364
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1369
    throw p1
.end method

.method public resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2555
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2557
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2561
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2565
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2566
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2570
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2575
    throw p1
.end method

.method public selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1219
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1223
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1227
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1228
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1232
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1237
    throw p1
.end method

.method public selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 2398
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2399
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2402
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2406
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2407
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2411
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2416
    throw p1
.end method

.method public startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1289
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1293
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1295
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    .line 1297
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    invoke-virtual {p3, v0, v3}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1301
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1305
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1306
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1310
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    throw p1
.end method

.method public startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2496
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2499
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 2501
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_2

    .line 2503
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    invoke-virtual {p3, v0, v3}, Lcom/xiaopeng/xuimanager/operation/OpenAction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 2507
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2511
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2512
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/ITheme;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2516
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2521
    throw p1
.end method

.method public unregisterThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
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
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2276
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2277
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2279
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2280
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unregisterThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2284
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    throw p1
.end method

.method public unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 1265
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1266
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1267
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1269
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1270
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1274
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    throw p1
.end method

.method public unselectThemeElement(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 2423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2427
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2428
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unselectThemeElement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    throw p1
.end method
