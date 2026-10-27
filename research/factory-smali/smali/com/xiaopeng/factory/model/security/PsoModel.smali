.class public Lcom/xiaopeng/factory/model/security/PsoModel;
.super Ljava/lang/Object;
.source "PsoModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsoModel"


# instance fields
.field private mPsoCrypto:Landroid/pso/PsoCrypto;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/pso/XpPso;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/pso/XpPso;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    .line 23
    const/16 v0, 0x15

    :try_start_0
    const-string v1, "E28"

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    const/16 v2, 0x1c

    invoke-interface {v1, v2}, Landroid/pso/PsoCrypto;->set_carType(I)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1, v0}, Landroid/pso/PsoCrypto;->set_carType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v2, v0}, Landroid/pso/PsoCrypto;->set_carType(I)V

    .line 30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public getPsuId()Ljava/lang/String;
    .locals 5

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "psuid":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/pso/PsoCrypto;->GetPSUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 40
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PsoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetPSUID Failed... Descrition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "PsoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetPSUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public presetCertKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "certPath"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1, p1}, Landroid/pso/PsoCrypto;->CertKeyPreset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PsoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertKeyPreset Failed...Descrition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "PsoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetCertKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return v0
.end method

.method public presetMcuKey()Z
    .locals 5

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/pso/PsoCrypto;->McuKeyPreset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PsoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "McuKeyPreset Failed...Descrition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "PsoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetMcuKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return v0
.end method

.method public verifyCertKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 68
    const-string v0, "PsoModel"

    const-string v1, "verifyCertKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1, p1}, Landroid/pso/PsoCrypto;->CertKeyVerify(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PsoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CertKeyVerify Failed...Descrition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "PsoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyCertKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return v0
.end method
