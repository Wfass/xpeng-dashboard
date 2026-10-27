.class Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThemeElementListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    return-object v0
.end method

.method public onQueryRemoteThemeElementFailed(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onQueryRemoteThemeElementFailed(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    throw p1
.end method

.method public onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 358
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 361
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onQueryRemoteThemeElementSuccess(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw p1
.end method

.method public onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 277
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementAdded(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    throw p1
.end method

.method public onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 290
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 302
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDeleted(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    throw p1
.end method

.method public onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 472
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 475
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadCancel(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw p1
.end method

.method public onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 497
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 510
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadError(ILcom/xiaopeng/xuimanager/theme/ThemeElement;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    throw p1
.end method

.method public onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 421
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 431
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 434
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadInProgress(ILcom/xiaopeng/xuimanager/theme/ThemeElement;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    throw p1
.end method

.method public onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 447
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 450
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 459
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadPaused(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw p1
.end method

.method public onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 396
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 399
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementDownloadStart(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw p1
.end method

.method public onThemeElementSelectionChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 340
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementSelectionChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw p1
.end method

.method public onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeElementListener"

    .line 315
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;->onThemeElementUpdated(ILcom/xiaopeng/xuimanager/theme/ThemeElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw p1
.end method
