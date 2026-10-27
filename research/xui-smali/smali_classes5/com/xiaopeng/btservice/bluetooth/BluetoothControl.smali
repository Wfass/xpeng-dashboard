.class public Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "BluetoothControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothControl"


# instance fields
.field private mCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

.field private mCallbackBluetooth:Lcom/nforetek/bt/aidl/UiCallbackBluetooth;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl$1;-><init>(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)V

    iput-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mCallbackBluetooth:Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;)Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mCallback:Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;

    return-object v0
.end method


# virtual methods
.method public cancelBtDiscovery()Z
    .locals 4

    .line 234
    const-string v0, "BluetoothControl"

    const-string v1, "cancelBtDiscovery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->cancelBtDiscovery()Z

    move-result v1

    move v0, v1

    .line 240
    const-string v1, "BluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app cancelBtDiscovery pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

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

    .line 244
    :cond_2
    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public getA2DPConnectState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 497
    const-string v0, "BluetoothControl"

    const-string v1, "getA2DPConnectState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 501
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isA2dpConnected()Z

    move-result v1

    move v0, v1

    .line 502
    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "address1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v3}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectionState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 510
    .end local v1    # "address1":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothControl"

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 2

    .line 485
    const-string v0, "BluetoothControl"

    const-string v1, "getA2dpConnectedAddress"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v0, "address1":Ljava/lang/String;
    return-object v0

    .line 490
    .end local v0    # "address1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getA2dpConnectionState()I
    .locals 3

    .line 285
    const-string v0, "BluetoothControl"

    const-string v1, "getA2dpConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, -0x1

    .line 287
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 289
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getA2dpConnectionState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 293
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getAVRCPConnectState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 528
    const-string v0, "BluetoothControl"

    const-string v1, "getAVRCPConnectState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 532
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcpConnected()Z

    move-result v1

    move v0, v1

    .line 533
    if-eqz v0, :cond_1

    .line 534
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getAvrcpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "address1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v3}, Lcom/nforetek/bt/aidl/UiCommand;->getAvrcpConnectionState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 541
    .end local v1    # "address1":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothControl"

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 542
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public getBtLocalName()Ljava/lang/String;
    .locals 3

    .line 345
    const-string v0, "BluetoothControl"

    const-string v1, "getBtLocalName"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, ""

    .line 347
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    .line 349
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getBtLocalName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 352
    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 353
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getBtRemoteDeviceName()Ljava/lang/String;
    .locals 3

    .line 357
    const-string v0, "BluetoothControl"

    const-string v1, "getBtRemoteDeviceName"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, ""

    .line 359
    .local v0, "remoteDeviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v2, v1}, Lcom/nforetek/bt/aidl/UiCommand;->getBtRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 367
    .end local v1    # "address":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getBtRemoteUuids(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 420
    const-string v0, "BluetoothControl"

    const-string v1, "getBtRemoteUuids"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, -0x1

    .line 422
    .local v0, "profile":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 424
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->getBtRemoteUuids(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 428
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getBtService()Lcom/nforetek/bt/aidl/UiCommand;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    return-object v0
.end method

.method public getBtState()I
    .locals 3

    .line 176
    const-string v0, "BluetoothControl"

    const-string v1, "getBtState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 180
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getBtState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getHFPConnectState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 463
    const-string v0, "BluetoothControl"

    const-string v1, "getHFPConnectState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 467
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isHfpConnected()Z

    move-result v1

    move v0, v1

    .line 468
    if-eqz v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "address1":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v3}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpConnectionState()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 476
    .end local v1    # "address1":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothControl"

    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 477
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 1

    .line 481
    const-string v0, "BluetoothControl"

    invoke-super {p0, v0}, Lcom/xiaopeng/btservice/base/AbsControl;->getHfpConnectedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHfpConnectionState()I
    .locals 3

    .line 273
    const-string v0, "BluetoothControl"

    const-string v1, "getHfpConnectionState"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->getHfpConnectionState()I

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
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isA2dpConnected()Z
    .locals 3

    .line 515
    const-string v0, "BluetoothControl"

    const-string v1, "isA2dpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 519
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isA2dpConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isAvrcpConnected()Z
    .locals 3

    .line 546
    const-string v0, "BluetoothControl"

    const-string v1, "isAvrcpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 550
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isAvrcpConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 553
    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isBluetoothServiceReady()Z
    .locals 3

    .line 432
    const-string v0, "BluetoothControl"

    const-string v1, "isBluetoothServiceReady"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 436
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBluetoothServiceReady()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 439
    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 440
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isBtDiscoverable()Z
    .locals 3

    .line 396
    const-string v0, "BluetoothControl"

    const-string v1, "isBtDiscoverable"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 400
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtDiscoverable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 404
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isBtDiscovering()Z
    .locals 3

    .line 321
    const-string v0, "BluetoothControl"

    const-string v1, "isBtDiscovering"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 325
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtDiscovering()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isBtEnabled()Z
    .locals 3

    .line 309
    const-string v0, "BluetoothControl"

    const-string v1, "isBtEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isHfpConnected()Z
    .locals 3

    .line 444
    const-string v0, "BluetoothControl"

    const-string v1, "isHfpConnected"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 448
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isHfpConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 451
    goto :goto_0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 3
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 27
    const-string v0, "BluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mCallbackBluetooth:Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    invoke-interface {p1, v0}, Lcom/nforetek/bt/aidl/UiCommand;->registerBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z

    .line 29
    const-string v0, "BluetoothControl"

    const-string v1, "bluetooth nf btService registerCallback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 38
    :try_start_0
    const-string v0, "BluetoothControl"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mCallbackBluetooth:Lcom/nforetek/bt/aidl/UiCallbackBluetooth;

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->unregisterBtCallback(Lcom/nforetek/bt/aidl/UiCallbackBluetooth;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public reqA2dpConnect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 580
    const-string v0, "BluetoothControl"

    const-string v1, "reqA2dpConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 584
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqA2dpConnect(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 587
    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqA2dpDisconnect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 604
    const-string v0, "BluetoothControl"

    const-string v1, "reqA2dpDisConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqA2dpDisconnect(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 611
    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqBtConnectHfpA2dp(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 261
    const-string v0, "BluetoothControl"

    const-string v1, "reqBtConnectHfpA2dp"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v0, -0x1

    .line 263
    .local v0, "state":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 265
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqBtConnectHfpA2dp(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 268
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqBtDisconnectAll()I
    .locals 3

    .line 384
    const-string v0, "BluetoothControl"

    const-string v1, "reqBtDisconnectAll"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, -0x1

    .line 386
    .local v0, "profile":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 388
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqBtDisconnectAll()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 391
    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqBtPair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 249
    const-string v0, "BluetoothControl"

    const-string v1, "reqBtPair"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 253
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqBtPair(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqBtPairedDevices()Z
    .locals 3

    .line 188
    const-string v0, "BluetoothControl"

    const-string v1, "reqBtPairedDevices"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 192
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->reqBtPairedDevices()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqBtUnpair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 372
    const-string v0, "BluetoothControl"

    const-string v1, "reqBtUnpair"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 376
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqBtUnpair(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 380
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpConnect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 568
    const-string v0, "BluetoothControl"

    const-string v1, "reqHfpConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 572
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpConnect(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 575
    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public reqHfpDisconnect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 592
    const-string v0, "BluetoothControl"

    const-string v1, "reqHfpDisconnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 596
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->reqHfpDisconnect(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 599
    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setBtAutoConnect(II)V
    .locals 2
    .param p1, "condition"    # I
    .param p2, "period"    # I

    .line 558
    const-string v0, "BluetoothControl"

    const-string v1, "setBtAutoConnect"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v0, p1, p2}, Lcom/nforetek/bt/aidl/UiCommand;->setBtAutoConnect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setBtDiscoverableTimeout(I)Z
    .locals 3
    .param p1, "timeout"    # I

    .line 408
    const-string v0, "BluetoothControl"

    const-string v1, "setBtDiscoverableTimeout"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 412
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setBtDiscoverableTimeout(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setBtEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 297
    const-string v0, "BluetoothControl"

    const-string v1, "setBtEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 301
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setBtEnable(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setBtLocalName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 333
    const-string v0, "BluetoothControl"

    const-string v1, "setBtLocalName"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    return v0

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1, p1}, Lcom/nforetek/bt/aidl/UiCommand;->setBtLocalName(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startBtDiscovery()Z
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "BluetoothControl"

    const-string v1, "nForeService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 206
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    const-string v1, "BluetoothControl"

    const-string v2, "startBtDiscovery isBtDiscovering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x1

    return v1

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->startBtDiscovery()Z

    move-result v1

    move v0, v1

    .line 212
    const-string v1, "BluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app startBtDiscovery pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
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

    .line 215
    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public stopBtDiscovery()Z
    .locals 3

    .line 220
    const-string v0, "BluetoothControl"

    const-string v1, "stopBtDiscovery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->isBtDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    invoke-interface {v1}, Lcom/nforetek/bt/aidl/UiCommand;->cancelBtDiscovery()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 229
    :cond_1
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/bluetooth/BluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
