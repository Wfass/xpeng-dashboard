.class public Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "UsbBluetoothControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbBluetoothControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

.field private mCallbackUsbBluetooth:Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mCallback"    # Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 50
    new-instance v0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl$1;-><init>(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mCallbackUsbBluetooth:Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;)Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsUsbBluetoothCallback;

    return-object v0
.end method


# virtual methods
.method public getLocalUsbConnectionState()I
    .locals 3

    .line 402
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getLocalUsbConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 404
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return v1

    .line 408
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getLocalUsbConnectionState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 412
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getProfileConnectionState(I)I
    .locals 3
    .param p1, "profile"    # I

    .line 416
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getProfileConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 418
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return v1

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->getProfileConnectionState(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getUsbAddress()Ljava/lang/String;
    .locals 2

    .line 374
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getUsbAddress"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    .line 376
    const-string v0, "UsbBluetoothControl"

    const-string v1, "nForeService == null"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, ""

    return-object v0

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getUsbAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsbBluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getUsbBtLocalName()Ljava/lang/String;
    .locals 2

    .line 345
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getUsbBtLocalName"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    .line 347
    const-string v0, "UsbBluetoothControl"

    const-string v1, "nForeService == null"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, ""

    return-object v0

    .line 351
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getUsbBtLocalName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsbBluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getUsbConnectedDevice()Ljava/lang/String;
    .locals 2

    .line 388
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getUsbConnectedDevice"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    .line 390
    const-string v0, "UsbBluetoothControl"

    const-string v1, "nForeService == null"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, ""

    return-object v0

    .line 394
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getUsbConnectedDevice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UsbBluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getUsbConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 300
    const-string v0, "UsbBluetoothControl"

    const-string v1, "getUsbConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, -0x1

    .line 302
    .local v0, "status":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 303
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v1, -0x1

    return v1

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->getUsbConnectionState(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isUsbA2dpConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 285
    const-string v0, "UsbBluetoothControl"

    const-string v1, "isUsbA2dpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 288
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    return v1

    .line 292
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbA2dpConnected(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isUsbAvrcpConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 315
    const-string v0, "UsbBluetoothControl"

    const-string v1, "isUsbAvrcpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 318
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    return v1

    .line 322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbAvrcpConnected(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 325
    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isUsbDiscovering()Z
    .locals 3

    .line 168
    const-string v0, "UsbBluetoothControl"

    const-string v1, "isUsbDiscovering"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 171
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v0

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbDiscovering()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isUsbEnabled()Z
    .locals 3

    .line 255
    const-string v0, "UsbBluetoothControl"

    const-string v1, "isUsbEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 258
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return v0

    .line 262
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isUsbHfpConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 270
    const-string v0, "UsbBluetoothControl"

    const-string v1, "isUsbHfpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 273
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    return v1

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbHfpConnected(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 4
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 30
    const-string v0, "UsbBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mCallbackUsbBluetooth:Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z

    move-result v0

    .line 32
    .local v0, "register":Z
    const-string v1, "UsbBluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth nf btService registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "register":Z
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 41
    :try_start_0
    const-string v0, "UsbBluetoothControl"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mCallbackUsbBluetooth:Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterUsbCallback(Lcom/nforetek/bt/aidl/UiCallbackUsbBluetooth;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reqUsbBtPairedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/UsbBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 330
    const-string v0, "UsbBluetoothControl"

    const-string v1, "reqUsbBtPairedDevices"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 332
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-object v1

    .line 336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->reqUsbBtPairedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    return-object v0

    .line 338
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/aidl/UsbBluetoothDevice;>;"
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public setUsbBtLocalName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 359
    const-string v0, "UsbBluetoothControl"

    const-string v1, "setUsbBtLocalName"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 362
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    return v1

    .line 366
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setUsbBtLocalName(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 370
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setUsbEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 240
    const-string v0, "UsbBluetoothControl"

    const-string v1, "setUsbEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 243
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v0

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setUsbEnabled(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public usbConnect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 183
    const-string v0, "UsbBluetoothControl"

    const-string v1, "usbConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v1

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->usbConnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public usbDisConnect()Z
    .locals 3

    .line 197
    const-string v0, "UsbBluetoothControl"

    const-string v1, "usbDisConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return v1

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->usbDisConnect()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public usbDisConnectDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 211
    const-string v0, "UsbBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbDisConnectDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1}, Lcom/nforetek/bt/aidl/UiCommand;->usbDisConnectDevice(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public usbReqUnpair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 225
    const-string v0, "UsbBluetoothControl"

    const-string v1, "usbReqUnpair"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 228
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v0

    .line 232
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->usbReqUnpair(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 235
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public usbSearch()Z
    .locals 4

    .line 131
    const-string v0, "UsbBluetoothControl"

    const-string v1, "usbSearch"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 134
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isUsbDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "UsbBluetoothControl"

    const-string v2, "startBtDiscovery isUsbDiscovering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->usbSearch()Z

    move-result v1

    move v0, v1

    .line 144
    const-string v1, "UsbBluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app usbSearch pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public usbStopSearch()Z
    .locals 4

    .line 152
    const-string v0, "UsbBluetoothControl"

    const-string v1, "usbStopSearch"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 155
    const-string v1, "UsbBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    return v1

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->usbStopSearch()Z

    move-result v1

    move v0, v1

    .line 160
    const-string v1, "UsbBluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app usbStopSearch pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UsbBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/usb/UsbBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
