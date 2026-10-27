.class public Lcom/xiaopeng/libbluetooth/PhoneControlBox;
.super Lcom/xiaopeng/libbluetooth/AbsControlBox;
.source "PhoneControlBox.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneControlBox"


# instance fields
.field private mCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

.field private mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;-><init>()V

    .line 63
    new-instance v0, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox$1;-><init>(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libbluetooth/PhoneControlBox;)Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/PhoneControlBox;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/libbluetooth/PhoneControlBox;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/PhoneControlBox;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    return-void
.end method

.method private printError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 710
    const-string v0, "PhoneControlBox"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->answerCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 166
    :cond_0
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public changeDownLoadFlag(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v0, :cond_0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->changeDownLoadFlag(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 680
    :cond_0
    const-string v0, "PhoneControlBox"

    const-string v1, "changeDownloadFlag mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_1
    return-void
.end method

.method protected clearService()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    .line 45
    return-void
.end method

.method public deletePhote(Ljava/lang/String;)Z
    .locals 3
    .param p1, "imgName"    # Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 468
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->deletePhote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public dialDTMF(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->dialDTMF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public dialNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->dialNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getContacts(ZIIIIII)Z
    .locals 12
    .param p1, "refresh"    # Z
    .param p2, "memtype"    # I
    .param p3, "nMax_ME"    # I
    .param p4, "nMax_SM"    # I
    .param p5, "nMax_RC"    # I
    .param p6, "nMax_MC"    # I
    .param p7, "nMax_DC"    # I

    move-object v1, p0

    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, "isSuccess":Z
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v0, :cond_0

    return v2

    .line 377
    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getContacts(Ljava/lang/String;ZIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v2, 0x1

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {v1, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public getContactsByPBAP(IIIIII)Z
    .locals 11
    .param p1, "memtype"    # I
    .param p2, "nMax_ME"    # I
    .param p3, "nMax_SM"    # I
    .param p4, "nMax_RC"    # I
    .param p5, "nMax_MC"    # I
    .param p6, "nMax_DC"    # I

    move-object v1, p0

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "isSuccess":Z
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v0, :cond_0

    return v2

    .line 501
    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getContactsByPBAP(Ljava/lang/String;IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v2, 0x1

    .line 505
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {v1, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public getMessage(ZI)Z
    .locals 3
    .param p1, "refresh"    # Z
    .param p2, "nMaxGet"    # I

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 541
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getMessage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v0, 0x1

    .line 545
    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getMicMaxVolume()I
    .locals 3

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 654
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getMicMaxVolume(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 657
    goto :goto_0

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getMicVolume()I
    .locals 3

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 612
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getMicVolume(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 615
    goto :goto_0

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 616
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getMissCallCount()I
    .locals 3

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "counts":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getMissCallCount(Ljava/lang/String;)I

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
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getSpeakerMaxVolume()I
    .locals 3

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 665
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getSpeakerMaxVolume(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 668
    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getSpeakerVolume()I
    .locals 3

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 643
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->getSpeakerVolume(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 646
    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 647
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public handleThreeWayCall(I)Z
    .locals 3
    .param p1, "type"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->handleThreeWayCall(Ljava/lang/String;I)Z

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
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public hangUpCall()Z
    .locals 3

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->hangUpCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 187
    :cond_0
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected initService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 2
    .param p1, "btService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;->getBtPhoneControlService()Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;->onBindSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isCurrentDownloading()Z
    .locals 3

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->isCurrentDownloading(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 154
    :cond_0
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isForDownLoad()Z
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v0, :cond_0

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->isForDownLoad(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 704
    :cond_0
    const-string v0, "PhoneControlBox"

    const-string v1, "changeDownloadFlag mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportTransferAudio()Z
    .locals 3

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 323
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->isSupportTransferAudio(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected onWorkDone()V
    .locals 0

    .line 50
    return-void
.end method

.method public queryCall([Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 11
    .param p1, "number1"    # [Ljava/lang/String;
    .param p2, "name1"    # [Ljava/lang/String;
    .param p3, "callStatus1"    # [I
    .param p4, "number2"    # [Ljava/lang/String;
    .param p5, "name2"    # [Ljava/lang/String;
    .param p6, "callStatus2"    # [I

    move-object v1, p0

    .line 275
    const/4 v2, 0x0

    .line 276
    .local v2, "isSuccess":Z
    iget-object v0, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v0, :cond_0

    return v2

    .line 278
    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->queryCall(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {v1, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public reDial()Z
    .locals 3

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->reDial(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public readBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imgName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return-object v0

    .line 448
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->readBitmap(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 451
    goto :goto_0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method protected release()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IPhoneServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 581
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 584
    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 585
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setDownloadPBAttr(I)Z
    .locals 3
    .param p1, "attribute"    # I

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 429
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->setDownloadPBAttr(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 432
    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 433
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setForDownLoad()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-eqz v0, :cond_0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->setForDownLoad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 692
    :cond_0
    const-string v0, "PhoneControlBox"

    const-string v1, "changeDownloadFlag mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_1
    return-void
.end method

.method public setMicVolume(I)Z
    .locals 3
    .param p1, "volume"    # I

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 601
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->setMicVolume(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 604
    goto :goto_0

    .line 602
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 605
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setSpeakerVolume(I)Z
    .locals 3
    .param p1, "volume"    # I

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 632
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->setSpeakerVolume(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 635
    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 636
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public transferAudio(Z)Z
    .locals 3
    .param p1, "flag"    # Z

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 304
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->transferAudio(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public unRegisterContactsByPBAP()Z
    .locals 3

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 519
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->unRegisterContactsByPBAP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    const/4 v0, 0x1

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 524
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public unRegisterContactsCallback()Z
    .locals 3

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 396
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->unRegisterContactsCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v0, 0x1

    .line 400
    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 401
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public unRegisterSMSCallback()Z
    .locals 3

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    if-nez v1, :cond_0

    return v0

    .line 559
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->unRegisterSMSCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    const/4 v0, 0x1

    .line 563
    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/PhoneControlBox;->printError(Ljava/lang/Exception;)V

    .line 564
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
