.class public Lcom/xiaopeng/libbluetooth/A2DPControlBox;
.super Lcom/xiaopeng/libbluetooth/AbsControlBox;
.source "A2DPControlBox.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "A2DPControlBox"


# instance fields
.field private mCallback:Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

.field private mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

.field private songMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->songMessages:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox$1;-><init>(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libbluetooth/A2DPControlBox;)Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/A2DPControlBox;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/libbluetooth/A2DPControlBox;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/A2DPControlBox;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    return-void
.end method

.method private printError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 800
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "error":Ljava/lang/String;
    const-string v1, "A2DPControlBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method


# virtual methods
.method public addToPlayingQueue(ILjava/lang/String;)Z
    .locals 3
    .param p1, "scope"    # I
    .param p2, "uuid"    # Ljava/lang/String;

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 710
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->addToPlayingQueue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 713
    goto :goto_0

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 714
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected clearService()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    .line 47
    return-void
.end method

.method public controlAVRCPEx(II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "actFlag"    # I

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 261
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->controlAVRCPEx(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 3

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return-object v0

    .line 329
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 3

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return-object v0

    .line 313
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getBrowsingSupportFeature()Z
    .locals 3

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 743
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getBrowsingSupportFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 746
    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 747
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getMediaInfoEx(I)Z
    .locals 3
    .param p1, "mask"    # I

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 370
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getMediaInfoEx(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v0, 0x1

    .line 374
    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getPlayStatus()Z
    .locals 3

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 390
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getPlayStatus(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getPlayerSettings()Z
    .locals 3

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 409
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getPlayerSettings(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 412
    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 413
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getPlayingListEx(III)Z
    .locals 3
    .param p1, "mask"    # I
    .param p2, "startPos"    # I
    .param p3, "maxGetCount"    # I

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 655
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startPlayingListEx(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/4 v0, 0x1

    .line 659
    goto :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 660
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 3

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return-object v0

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getSongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 301
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getSongTimes()I
    .locals 3

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "data":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 345
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getSongTimes(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getStreamMode()I
    .locals 3

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "status":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 774
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->getStreamMode(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 777
    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 778
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected initService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 2
    .param p1, "btService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;->getBtA2DPControlService()Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsA2DPControlCallback;->onBindSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isA2DPSupportMetaData()Z
    .locals 3

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 281
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->isA2DPSupportMetaData(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isBrowsingBusy()Z
    .locals 3

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 724
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->isBrowsingBusy(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 727
    goto :goto_0

    .line 725
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCurrentA2DPPlaying()Z
    .locals 3

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->isCurrentA2DPPlaying(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected onWorkDone()V
    .locals 0

    .line 52
    return-void
.end method

.method public pause()Z
    .locals 3

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 188
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->pause(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public play()Z
    .locals 3

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 172
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->play(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public playBrowsingItem(ILjava/lang/String;)Z
    .locals 3
    .param p1, "scope"    # I
    .param p2, "uuid"    # Ljava/lang/String;

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 683
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->playBrowsingItem(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 686
    goto :goto_0

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 687
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public playNext()Z
    .locals 3

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 220
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->playNext(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public playPrevious()Z
    .locals 3

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->playPrevious(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 239
    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected release()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IA2DPServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public retrievePlayerSettings(I)Z
    .locals 3
    .param p1, "attribute"    # I

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 428
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->retrievePlayerSettings(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 431
    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 432
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public retrievePlayerSupported(I[II)Z
    .locals 3
    .param p1, "attribute"    # I
    .param p2, "allowArray"    # [I
    .param p3, "arraySize"    # I

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->retrievePlayerSupported(Ljava/lang/String;I[II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setPlayerSettings(II)Z
    .locals 3
    .param p1, "attribute"    # I
    .param p2, "value"    # I

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 455
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->setPlayerSettings(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 459
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setStreamMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 760
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->setStreamMode(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 763
    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 764
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setStreamVolume(F)Z
    .locals 3
    .param p1, "volume"    # F

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 792
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->setStreamVolume(Ljava/lang/String;F)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 795
    goto :goto_0

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 796
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startBrowsingElement(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .param p3, "maxGetCount"    # I

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 503
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startBrowsingElement(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    const/4 v0, 0x0

    .line 507
    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startBrowsingElementEx(Ljava/lang/String;III)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .param p3, "startPos"    # I
    .param p4, "maxGetCount"    # I

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 534
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startBrowsingElementEx(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    const/4 v0, 0x1

    .line 539
    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startBrowsingSearch(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "maxGetCount"    # I

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 565
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startBrowsingSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    const/4 v0, 0x1

    .line 570
    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 571
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startBrowsingSearchEx(Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "startPos"    # I
    .param p5, "maxGetCount"    # I

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 598
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startBrowsingSearchEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    const/4 v0, 0x1

    .line 603
    goto :goto_0

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 604
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startPlayingList(II)Z
    .locals 3
    .param p1, "mask"    # I
    .param p2, "maxGetCount"    # I

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 626
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->startPlayingList(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    const/4 v0, 0x1

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 631
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public stop()Z
    .locals 3

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    if-nez v1, :cond_0

    return v0

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->stop(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/A2DPControlBox;->printError(Ljava/lang/Exception;)V

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
