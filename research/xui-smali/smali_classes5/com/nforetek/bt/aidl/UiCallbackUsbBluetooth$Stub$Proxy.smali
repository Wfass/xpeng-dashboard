.class Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;
.super Ljava/lang/Object;
.source "UiCallbackUsbBluetooth.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 184
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 191
    const-string v0, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    return-object v0
.end method

.method public onUsbA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-void

    .line 319
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v2
.end method

.method public onUsbAdapterDiscoveryFinished()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 260
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    throw v2
.end method

.method public onUsbAdapterDiscoveryStarted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 253
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw v2
.end method

.method public onUsbAdapterStateChanged(II)V
    .locals 5
    .param p1, "prevState"    # I
    .param p2, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v2
.end method

.method public onUsbAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    throw v2
.end method

.method public onUsbConnectionStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    nop

    .line 371
    return-void

    .line 368
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw v2
.end method

.method public onUsbDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 285
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v2
.end method

.method public onUsbDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v2
.end method

.method public onUsbDeviceState(I)V
    .locals 5
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v2
.end method

.method public onUsbHfpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-void

    .line 302
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v2
.end method

.method public onUsbPairedDevices(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    nop

    .line 209
    return-void

    .line 206
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw v2
.end method
