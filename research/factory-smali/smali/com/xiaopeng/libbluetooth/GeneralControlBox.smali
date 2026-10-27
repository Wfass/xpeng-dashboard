.class public Lcom/xiaopeng/libbluetooth/GeneralControlBox;
.super Lcom/xiaopeng/libbluetooth/AbsControlBox;
.source "GeneralControlBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralControlBox"


# instance fields
.field private mCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

.field private mContext:Landroid/content/Context;

.field private mOnInquiryStopListener:Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

.field private mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

.field private mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;-><init>()V

    .line 63
    new-instance v0, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox$1;-><init>(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/libbluetooth/GeneralControlBox;)Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mOnInquiryStopListener:Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/libbluetooth/GeneralControlBox;Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;)Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox;
    .param p1, "x1"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mOnInquiryStopListener:Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    return-object p1
.end method

.method private printError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 891
    const-string v0, "GeneralControlBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method


# virtual methods
.method public acceptConnect(II)Z
    .locals 3
    .param p1, "profileType"    # I
    .param p2, "index"    # I

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 645
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->acceptConnect(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 649
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public acceptPair(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "ssp"    # Z

    .line 508
    const/4 v0, 0x0

    .line 510
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->acceptPair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 516
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public actionDisconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->actionDisconnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :cond_0
    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected clearService()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    .line 45
    return-void
.end method

.method public closeSpp()Z
    .locals 3

    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 804
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->closeSpp(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 807
    goto :goto_0

    .line 805
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 808
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public connectA2DP(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 705
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->connectA2DP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 708
    goto :goto_0

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 709
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public connectDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 685
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->connectDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 688
    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 689
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public connectSpp(Ljava/lang/String;[B)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "GUID"    # [B

    .line 819
    const/4 v0, -0x1

    .line 820
    .local v0, "indexId":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 822
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->connectSpp(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 825
    goto :goto_0

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 826
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public disconnectA2DP()Z
    .locals 3

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 744
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->disconnectA2DP(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 747
    goto :goto_0

    .line 745
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 748
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public disconnectDevice()Z
    .locals 3

    .line 721
    const/4 v0, 0x0

    .line 722
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 724
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->disconnectDevice(Ljava/lang/String;)Z

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
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 728
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public disconnectSpp(I)Z
    .locals 3
    .param p1, "index"    # I

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 842
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->disconnectSpp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 845
    goto :goto_0

    .line 843
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getBtPowerStatus()I
    .locals 3

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "status":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getBtPowerStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 202
    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getConnectStatus(II)Z
    .locals 3
    .param p1, "profileType"    # I
    .param p2, "index"    # I

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getConnectStatus(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 583
    :cond_0
    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 584
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getConnectedDeviceInfo(I[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileType"    # I
    .param p2, "deviceAddress"    # [Ljava/lang/String;
    .param p3, "deviceName"    # [Ljava/lang/String;

    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getConnectedDeviceInfo(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 627
    :cond_0
    goto :goto_0

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 628
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 236
    :cond_0
    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 3

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "address":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getLocalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 254
    :cond_0
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 255
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getPairedList([I[Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 8
    .param p1, "count"    # [I
    .param p2, "name"    # [Ljava/lang/String;
    .param p3, "address"    # [Ljava/lang/String;
    .param p4, "cod"    # [I

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 557
    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getPairedList(Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 561
    :cond_0
    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 562
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getRemoteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 274
    :cond_0
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 275
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getWillConnect()Ljava/lang/String;
    .locals 2

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->getWillConnect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 915
    :cond_0
    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 916
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasConnected()Z
    .locals 3

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->hasConnected(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 603
    :cond_0
    goto :goto_0

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 604
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected initService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 2
    .param p1, "btService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;->getBtGeneralControlService()Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mCallback:Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsGeneralControlCallback;->onBindSuccess()V
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
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public initSpp([B)Z
    .locals 3
    .param p1, "serviceGUID"    # [B

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 785
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->initSpp(Ljava/lang/String;[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 788
    goto :goto_0

    .line 786
    :catch_0
    move-exception v1

    .line 787
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 789
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCurrentConnecting()Z
    .locals 3

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isCurrentConnecting(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 316
    :cond_0
    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCurrentPairing()Z
    .locals 3

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isCurrentPairing(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 295
    :cond_0
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCurrentScanning()Z
    .locals 3

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isCurrentScanning(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 386
    :cond_0
    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 387
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isDisConnecting()Z
    .locals 2

    .line 931
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isDisConnecting(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 936
    :cond_0
    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 937
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloading()Z
    .locals 3

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isDownloading(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 337
    :cond_0
    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isFirstConnect()Z
    .locals 2

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->isFirstConnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 958
    :cond_0
    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 959
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onWorkDone()V
    .locals 0

    .line 50
    return-void
.end method

.method public pairDevice(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "cod"    # I

    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->pairDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 471
    :cond_0
    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public powerOffBluetooth()Z
    .locals 3

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->powerOffBluetooth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public powerOnBluetooth()Z
    .locals 3

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->powerOnBluetooth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v0, 0x1

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public readRSSI(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 764
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->readRSSI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 768
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public rebootBT()Z
    .locals 2

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->rebootBT(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 947
    :cond_0
    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 948
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public refuseConnect(II)Z
    .locals 3
    .param p1, "profileType"    # I
    .param p2, "index"    # I

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 665
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->refuseConnect(Ljava/lang/String;II)Z

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
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public refusePair(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "ssp"    # Z

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "isSucess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->refusePair(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 537
    :cond_0
    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 538
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public registerSppDataCallback()V
    .locals 2

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->registerSppDataCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 877
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mServiceCallback:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendHCICommand([BI)Z
    .locals 1
    .param p1, "cmd"    # [B
    .param p2, "length"    # I

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->sendHCICommand([BI)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 969
    :cond_0
    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 970
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->setDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 224
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setDiscoveryMode(I)Z
    .locals 3
    .param p1, "mask"    # I

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->setDiscoveryMode(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 365
    :cond_0
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public setHCITestMode(Z)Z
    .locals 1
    .param p1, "flag"    # Z

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->setHCITestMode(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 980
    :cond_0
    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 981
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWillConnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->setWillConnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :cond_0
    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 906
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startScanDevice()Z
    .locals 3

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 400
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->startScanDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v0, 0x1

    .line 404
    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 405
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public startScanDeviceEx()Z
    .locals 3

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "isSuccess":Z
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 417
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->startScanDeviceEx(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v0, 0x1

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public stopScanDevice(Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    .line 435
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mOnInquiryStopListener:Lcom/xiaopeng/libbluetooth/GeneralControlBox$OnInquiryStopListener;

    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->stopScanDevice(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 443
    :cond_0
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public unRegisterSppDataCallback()V
    .locals 2

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->unRegisterSppDataCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 888
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unpairDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, "isSuccess":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->unpairDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 492
    :cond_0
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 493
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public writeSpp(I[BI)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "dataSize"    # I

    .line 858
    const/4 v0, 0x0

    .line 859
    .local v0, "dataLength":I
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-nez v1, :cond_0

    return v0

    .line 861
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->mService:Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->writeSpp(Ljava/lang/String;I[BI)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 864
    goto :goto_0

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/GeneralControlBox;->printError(Ljava/lang/Exception;)V

    .line 865
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
