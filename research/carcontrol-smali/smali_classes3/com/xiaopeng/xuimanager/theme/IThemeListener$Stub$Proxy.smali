.class Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IThemeListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/IThemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/IThemeListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.theme.IThemeListener"

    return-object v0
.end method

.method public onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 509
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 520
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    throw p1
.end method

.method public onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 533
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadError(Lcom/xiaopeng/xuimanager/theme/Theme;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw p1
.end method

.method public onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 460
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 469
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 472
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/theme/Theme;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw p1
.end method

.method public onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 485
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 496
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 503
    throw p1
.end method

.method public onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 436
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 447
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 454
    throw p1
.end method

.method public onQueryRemoteThemeFailed(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onQueryRemoteThemeFailed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    throw p1
.end method

.method public onQueryRemoteThemeSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 400
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 402
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onQueryRemoteThemeSuccess(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw p1
.end method

.method public onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 273
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 284
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeAdded(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw p1
.end method

.method public onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeDeleted(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw p1
.end method

.method public onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 386
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 387
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeSelected(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw p1
.end method

.method public onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeUpdated(Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw p1
.end method

.method public onThemeUpdated2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.theme.IThemeListener"

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 363
    invoke-static {}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/theme/IThemeListener;->onThemeUpdated2(Lcom/xiaopeng/xuimanager/theme/Theme;Lcom/xiaopeng/xuimanager/theme/Theme;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw p1
.end method
