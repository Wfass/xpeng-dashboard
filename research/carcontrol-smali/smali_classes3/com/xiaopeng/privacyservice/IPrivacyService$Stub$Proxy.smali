.class Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPrivacyService.java"

# interfaces
.implements Lcom/xiaopeng/privacyservice/IPrivacyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/privacyservice/IPrivacyService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelFetchTask(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 363
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->cancelFetchTask(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 370
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw p1
.end method

.method public cancelPrivacyDialog(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->cancelPrivacyDialog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 292
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw p1
.end method

.method public dismissPrivacyDialog(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->dismissPrivacyDialog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 273
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw p1
.end method

.method public fetchProtocol(ILcom/xiaopeng/privacyservice/IFetchProtocolCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 343
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 345
    invoke-interface {p2}, Lcom/xiaopeng/privacyservice/IFetchProtocolCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 346
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 348
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/privacyservice/IPrivacyService;->fetchProtocol(ILcom/xiaopeng/privacyservice/IFetchProtocolCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 351
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.privacyservice.IPrivacyService"

    return-object v0
.end method

.method public getPrivacyContent(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 246
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->getPrivacyContent(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    throw p1
.end method

.method public getPrivacyPath(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->getPrivacyPath(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw p1
.end method

.method public haveDialogOnScreen()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/privacyservice/IPrivacyService;->haveDialogOnScreen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 310
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 311
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 314
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    throw v2
.end method

.method public showPrivacyDialog(IILcom/xiaopeng/privacyservice/IPrivacyDialogCallback;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_0

    .line 205
    invoke-interface {p3}, Lcom/xiaopeng/privacyservice/IPrivacyDialogCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/privacyservice/IPrivacyService;->showPrivacyDialog(IILcom/xiaopeng/privacyservice/IPrivacyDialogCallback;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 210
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p1
.end method

.method public signProtocol(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.privacyservice.IPrivacyService"

    .line 324
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v2, p0, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Lcom/xiaopeng/privacyservice/IPrivacyService$Stub;->getDefaultImpl()Lcom/xiaopeng/privacyservice/IPrivacyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/privacyservice/IPrivacyService;->signProtocol(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 331
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw p1
.end method
