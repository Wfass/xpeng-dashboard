.class public Lcom/xiaopeng/commonfunc/model/security/SecurityModel;
.super Ljava/lang/Object;
.source "SecurityModel.java"


# static fields
.field private static final RESPONSE_OK:Ljava/lang/String; = "ok"

.field private static final TAG:Ljava/lang/String; = "TestSecurityPresenter"


# instance fields
.field private mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

.field private mContext:Landroid/content/Context;

.field private mPsuKeyModel:Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

.field private mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

.field private mWifiKeyModel:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/callback/SecurityCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    .line 29
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    .line 30
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mWifiKeyModel:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    .line 31
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mPsuKeyModel:Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/SecurityModel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->responseSecurityResult(II)V

    return-void
.end method

.method public static synthetic lambda$verifyCduKey$1(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->verifyCduKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->verifyV18CduKey()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    .line 95
    :cond_1
    const/4 v2, 0x2

    .line 94
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->responseSecurityResult(II)V

    .line 96
    return-void
.end method

.method public static synthetic lambda$verifyPsuKey$0(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mPsuKeyModel:Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->verifyPsuKey()Z

    move-result v0

    .line 50
    .local v0, "result":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    nop

    .line 50
    move v2, v1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->responseSecurityResult(II)V

    .line 52
    return-void
.end method

.method public static synthetic lambda$verifyV18CduKey$2(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->verifyV18CduKey()Z

    move-result v0

    .line 103
    .local v0, "result":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v2, 0x2

    .line 103
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->responseSecurityResult(II)V

    .line 105
    return-void
.end method

.method private responseSecurityResult(II)V
    .locals 1
    .param p1, "keytype"    # I
    .param p2, "result"    # I

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/commonfunc/callback/SecurityCallback;->onReceiveResult(II)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public changeChnCaCert()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->changeChnCaCert()Z

    move-result v0

    return v0
.end method

.method public changeV18CaCert()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->changeV18CaCert()Z

    move-result v0

    return v0
.end method

.method public checkCduKey()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->isCduKeyExist()Z

    move-result v0

    return v0
.end method

.method public checkPsuKeyExist()Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mPsuKeyModel:Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->isPsuKeyExist()Z

    move-result v0

    .line 42
    .local v0, "res":Z
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPsuKeyExist res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return v0
.end method

.method public checkWifiKeyExist()Z
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mWifiKeyModel:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->isWifiKeyExist()Z

    move-result v0

    .line 57
    .local v0, "res":Z
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifiKeyExist res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mCduKeyModel:Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->onDestroy()V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mWifiKeyModel:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mPsuKeyModel:Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->onDestroy()V

    .line 38
    return-void
.end method

.method public verifyCduKey()V
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$1aqpYZ-5GTDIxY_rMM9dIb7vVok;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$1aqpYZ-5GTDIxY_rMM9dIb7vVok;-><init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public verifyPsuKey()V
    .locals 2

    .line 47
    const-string v0, "TestSecurityPresenter"

    const-string v1, "verifyPsuKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$F5x6XBxJfOO90W_bnqklvnrQA0M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$F5x6XBxJfOO90W_bnqklvnrQA0M;-><init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public verifyV18CduKey()V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$zqU7w9SKqS_nipvKLBDbmRASRdw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$SecurityModel$zqU7w9SKqS_nipvKLBDbmRASRdw;-><init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public verifyWifiKey()V
    .locals 8

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->checkWifiKeyExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->responseSecurityResult(II)V

    .line 64
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jCmX14gy4XLe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "password":Ljava/lang/String;
    const-string v1, "TestSecurityPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyWifiKey password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/security/SecurityModel;->mContext:Landroid/content/Context;

    const-string v4, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    const-string v5, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    const-string v2, "CHECK_WIFI_KEY"

    .line 70
    invoke-static {v2}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/commonfunc/model/security/SecurityModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/security/SecurityModel;)V

    .line 71
    invoke-virtual {v1, v2}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->verifyCert(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 89
    return-void
.end method
