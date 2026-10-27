.class public Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"


# static fields
.field private static final CDU_CERT_SITE:Ljava/lang/String; = "100.64.254.1"

.field private static final RESPONSE_OK:Ljava/lang/String; = "ok"

.field private static final STEP_GET_ICCID:I = 0x3

.field private static final STEP_REQUEST_INSTALLED_BY_TBOX:I = 0x1

.field private static final STEP_REQUEST_VERIFIED_BY_TBOX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TestSecurityPresenter"

.field public static final V18KEY_CHECKING:I = 0x1

.field public static final V18KEY_CHECK_DEFAULT:I = -0x1

.field public static final V18KEY_CHECK_FAIL:I = 0x0

.field public static final V18KEY_CHECK_PASS:I = 0x2


# instance fields
.field private mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private final mHandler:Landroid/os/Handler;

.field private mPsuKeyModel:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

.field private mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

.field private mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

.field private mV18CdukeyView:Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

.field private mWifiAdmin:Lcom/xiaopeng/factory/model/security/WifiAdmin;

.field private mWifiKeyModel:Lcom/xiaopeng/factory/model/security/WifiKeyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "dmResponseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->init()V

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/security/ISecurityView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/factory/view/security/ISecurityView;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/security/IV18CdukeyView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mV18CdukeyView:Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/model/security/TboxKeyModel;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/model/security/PsuKeyModel;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mPsuKeyModel:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/IV18CdukeyView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mV18CdukeyView:Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;
    .param p1, "x1"    # Z

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 113
    new-instance v0, Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    .line 114
    new-instance v0, Lcom/xiaopeng/factory/model/security/WifiKeyModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/security/WifiKeyModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiKeyModel:Lcom/xiaopeng/factory/model/security/WifiKeyModel;

    .line 115
    new-instance v0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mPsuKeyModel:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    .line 116
    new-instance v0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    .line 117
    new-instance v0, Lcom/xiaopeng/factory/model/security/WifiAdmin;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/factory/model/security/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiAdmin:Lcom/xiaopeng/factory/model/security/WifiAdmin;

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static synthetic lambda$connectCertWifi$1(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->isCertWifiConnected()Z

    move-result v0

    .line 277
    .local v0, "connected":Z
    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiAdmin:Lcom/xiaopeng/factory/model/security/WifiAdmin;

    const-string v2, "xp-sec"

    const-string v3, "BHBAA69uAxIaTlKy72LL8N5thGcPU"

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->waitConnectToServerWifi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v1, v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiConnectionStatus(Z)V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_2
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 285
    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 288
    :cond_3
    return-void
.end method

.method public static synthetic lambda$getCduKey$10(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Ljava/lang/String;)V
    .locals 3
    .param p1, "hardwareId"    # Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->isCertWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiConnectionStatus(Z)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$mH8SUJEJEniIOQyvBAMcXu9_gnc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$mH8SUJEJEniIOQyvBAMcXu9_gnc;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->asyncGetKey(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 579
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$getCduKey$9(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateCduKeyView()V

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->getInputHardwareId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateCduKeyFileView()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->checkCduKey()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v1

    goto :goto_0

    .line 575
    :cond_1
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    .line 574
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 577
    :cond_2
    return-void
.end method

.method public static synthetic lambda$getPsuKey$2(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updatePsuKeyExistView()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->checkPsuKeyExist()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_03:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v1

    goto :goto_0

    .line 329
    :cond_1
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_03:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    .line 328
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 331
    :cond_2
    return-void
.end method

.method public static synthetic lambda$getPsuKey$3(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->isCertWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiConnectionStatus(Z)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_03:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mPsuKeyModel:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$5S8S0mTsgboShrrG27rWalb0jSA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$5S8S0mTsgboShrrG27rWalb0jSA;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->asyncGetKey(Ljava/lang/Runnable;)V

    .line 333
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$getWifiKey$4(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiKeyExistView()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->checkWifiKeyExist()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_02:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v1

    goto :goto_0

    .line 379
    :cond_1
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_02:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    .line 378
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 381
    :cond_2
    return-void
.end method

.method public static synthetic lambda$getWifiKey$5(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->isCertWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiConnectionStatus(Z)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_02:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiKeyModel:Lcom/xiaopeng/factory/model/security/WifiKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$G9wO9Dw8ZqzyW_Uz8o5_0EzlDgU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$G9wO9Dw8ZqzyW_Uz8o5_0EzlDgU;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/WifiKeyModel;->asyncGetKey(Ljava/lang/Runnable;)V

    .line 383
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tboxCertPath"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->copyTboxKeyToLocal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->verifyTboxCert(Lcom/xiaopeng/lib/http/ICallback;)V

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 251
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$saveCDUKey$6(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->saveCDUKey(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 452
    :cond_0
    :goto_0
    nop

    .line 453
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateCduKeyView()V

    .line 456
    :cond_1
    return-void
.end method

.method public static synthetic lambda$verifyCduKey$7(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 2

    .line 461
    const/16 v0, 0xe7

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->verifyCduKey(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 494
    return-void
.end method

.method public static synthetic lambda$verifyV18CduKey$8(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 2

    .line 512
    const/16 v0, 0xec

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->verifyV18CduKey(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 541
    return-void
.end method

.method private updateTboxView(Z)V
    .locals 1
    .param p1, "res"    # Z

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyView(Z)V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyVerifiedView(Z)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public changeV18CaCert()V
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->changeV18CaCert()Z

    move-result v0

    .line 500
    .local v0, "result":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_0

    .line 502
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_04:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 503
    :cond_0
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_04:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 501
    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 505
    :cond_1
    return-void
.end method

.method public checkCduKey()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->isCduKeyExist()Z

    move-result v0

    return v0
.end method

.method public checkCduKeyFile()Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->isCduKeyFileExist()Z

    move-result v0

    return v0
.end method

.method public checkPsuKeyExist()Z
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mPsuKeyModel:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->isPsuKeyExist()Z

    move-result v0

    .line 338
    .local v0, "res":Z
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPsuKeyExist res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    return v0
.end method

.method public checkWifiKeyExist()Z
    .locals 4

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiKeyModel:Lcom/xiaopeng/factory/model/security/WifiKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/WifiKeyModel;->isWifiKeyExist()Z

    move-result v0

    .line 388
    .local v0, "res":Z
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifiKeyExist res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    return v0
.end method

.method public connectCertWifi()V
    .locals 1

    .line 275
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$hiWC-5mQV24SnLIgl6sfWrMZGXs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$hiWC-5mQV24SnLIgl6sfWrMZGXs;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public disconnectCertWifi()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiAdmin:Lcom/xiaopeng/factory/model/security/WifiAdmin;

    const-string v1, "xp-sec"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->closeServerWifi(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public getCduKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "hardwareId"    # Ljava/lang/String;

    .line 557
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$afpgANb1C6hl738QFZTA3Mx0c5w;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$afpgANb1C6hl738QFZTA3Mx0c5w;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public getInputHardwareId()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->getInputHardwareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsuKey()V
    .locals 1

    .line 314
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$je8Dd3hzQUWDqU7fud4JPIE5uhU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$je8Dd3hzQUWDqU7fud4JPIE5uhU;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public getWifiKey()V
    .locals 1

    .line 364
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$fcOqa43iyIIFanlzGliaI2hJoKU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$fcOqa43iyIIFanlzGliaI2hJoKU;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public isCertWifiConnected()Z
    .locals 4

    .line 296
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 298
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mWifiAdmin:Lcom/xiaopeng/factory/model/security/WifiAdmin;

    const-string v3, "\"xp-sec\""

    .line 299
    invoke-virtual {v2, v3}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->isWifiConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 298
    :goto_0
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mCduKeyModel:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->onDestroy()V

    .line 126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101050

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 173
    :pswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "verifyRes":I
    const-string v1, "TestSecurityPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID_TBOX_CERT_VERIFY verifyRes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/16 v1, 0xe8

    if-nez v0, :cond_0

    .line 176
    const/16 v4, 0x50

    goto :goto_0

    :cond_0
    const/16 v4, 0x46

    .line 175
    :goto_0
    invoke-static {v1, v4}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-ltz v0, :cond_1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-interface {v1, v4}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyView(Z)V

    .line 179
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-interface {v1, v2}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyVerifiedView(Z)V

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_e

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-nez v0, :cond_4

    .line 183
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_3

    .line 184
    :cond_4
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 182
    :goto_3
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto/16 :goto_7

    .line 135
    .end local v0    # "verifyRes":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    .local v0, "installRes":I
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_TBOX_CERT_INSTALL installRes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_6

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-nez v0, :cond_5

    .line 139
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v4, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_01:[B

    invoke-static {v2, v4}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_4

    .line 140
    :cond_5
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v4, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_01:[B

    invoke-static {v2, v4}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 138
    :goto_4
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 142
    :cond_6
    packed-switch v0, :pswitch_data_1

    .line 169
    goto/16 :goto_7

    .line 165
    :pswitch_2
    sget-object v1, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    const v2, 0x7f060154

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 166
    invoke-direct {p0, v3}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 167
    goto/16 :goto_7

    .line 161
    :pswitch_3
    sget-object v1, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    const v2, 0x7f060151

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 162
    invoke-direct {p0, v3}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 163
    goto/16 :goto_7

    .line 157
    :pswitch_4
    sget-object v1, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    const v2, 0x7f060152

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 158
    invoke-direct {p0, v3}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 159
    goto/16 :goto_7

    .line 153
    :pswitch_5
    sget-object v1, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    const v2, 0x7f060150

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 154
    invoke-direct {p0, v3}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 155
    goto/16 :goto_7

    .line 149
    :pswitch_6
    sget-object v1, Lcom/xiaopeng/factory/MyApplication;->mApp:Lcom/xiaopeng/factory/MyApplication;

    const v2, 0x7f060153

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;I)V

    .line 150
    invoke-direct {p0, v3}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->updateTboxView(Z)V

    .line 151
    goto/16 :goto_7

    .line 144
    :pswitch_7
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_e

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->startTboxCertVerify()V

    goto/16 :goto_7

    .line 188
    .end local v0    # "installRes":I
    :cond_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v4, Lcom/xiaopeng/factory/bean/car/TboxBean;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/factory/bean/car/TboxBean;

    .line 189
    .local v0, "tboxBean":Lcom/xiaopeng/factory/bean/car/TboxBean;
    const-string v1, "TestSecurityPresenter"

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStatus()I

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStringValue1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_8

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v1, v3}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyView(Z)V

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v1, v3}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateTboxKeyVerifiedView(Z)V

    .line 197
    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getRequest()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_6

    .line 220
    :pswitch_8
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_9

    .line 221
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStringValue1()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "tboxCertPath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStringValue2()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "md5":Ljava/lang/String;
    new-instance v3, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$DMoIIKzhKxcoOAQyXDzGSfobfE4;

    invoke-direct {v3, p0, v1, v2}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$DMoIIKzhKxcoOAQyXDzGSfobfE4;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 252
    .end local v1    # "tboxCertPath":Ljava/lang/String;
    .end local v2    # "md5":Ljava/lang/String;
    goto/16 :goto_6

    .line 253
    :cond_9
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_d

    .line 254
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto :goto_6

    .line 210
    :pswitch_9
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_b

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStatus()I

    move-result v2

    if-nez v2, :cond_a

    .line 212
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_01:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_5

    .line 213
    :cond_a
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_02_01:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 211
    :goto_5
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 215
    :cond_b
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v1, :cond_d

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->requestGetTboxKey()V

    goto :goto_6

    .line 199
    :pswitch_a
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/TboxBean;->getStatus()I

    move-result v1

    if-nez v1, :cond_d

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 201
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->reqTboxKey(Landroid/content/Context;)V

    goto :goto_6

    .line 203
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mTboxKeyModel:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->requestGetTboxKey()V

    .line 261
    :cond_d
    :goto_6
    nop

    .line 265
    .end local v0    # "tboxBean":Lcom/xiaopeng/factory/bean/car/TboxBean;
    :cond_e
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2140100a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public saveCDUKey()V
    .locals 1

    .line 444
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$VypoxMHFs84TzAuCgx-jfG91gH4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$VypoxMHFs84TzAuCgx-jfG91gH4;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public startTboxCertInstall()V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    return-void
.end method

.method public startTboxCertVerify()V
    .locals 4

    .line 308
    const/16 v0, 0xe8

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 311
    return-void
.end method

.method public verifyCduKey()V
    .locals 1

    .line 460
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$HbFuDZ5EdfTFxvWRR7gWO1pbpJY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$HbFuDZ5EdfTFxvWRR7gWO1pbpJY;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method

.method public verifyPsuKey()V
    .locals 2

    .line 343
    const-string v0, "TestSecurityPresenter"

    const-string v1, "verifyPsuKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public verifyV18CduKey()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mV18CdukeyView:Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mV18CdukeyView:Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/IV18CdukeyView;->updateCheckView(I)V

    .line 511
    :cond_0
    new-instance v0, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$SIwUl3ib7oQ7I0qsHkq2yCDgzgg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/security/-$$Lambda$TestSecurityPresenter$SIwUl3ib7oQ7I0qsHkq2yCDgzgg;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 542
    return-void
.end method

.method public verifyWifiKey()V
    .locals 5

    .line 393
    const/16 v0, 0xe9

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 394
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->checkWifiKeyExist()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-gt v1, v3, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jCmX14gy4XLe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "password":Ljava/lang/String;
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyWifiKey password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    new-instance v1, Lcom/xiaopeng/factory/model/security/CertVerifyModel;

    const-string v2, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    const-string v3, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    const-string v4, "CHECK_WIFI_KEY"

    .line 408
    invoke-static {v4}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;-><init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V

    .line 409
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->verifyCert(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 441
    return-void

    .line 395
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mSecurityView:Lcom/xiaopeng/factory/view/security/ISecurityView;

    invoke-interface {v0, v2}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiKeyVerifiedView(Z)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_02:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 402
    :cond_3
    return-void
.end method
