.class public Lcom/xiaopeng/commonfunc/model/security/PsoModel;
.super Ljava/lang/Object;
.source "PsoModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsoModel"


# instance fields
.field private final mPsoCrypto:Landroid/pso/PsoCrypto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/pso/XpPso;

    invoke-direct {v0, p1}, Landroid/pso/XpPso;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    const-string v1, "PSO_CAR_TYPE"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Feature;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/pso/PsoCrypto;->set_carType(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public checkIfPreseted()Z
    .locals 5

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1}, Landroid/pso/PsoCrypto;->checkIfPreseted()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PsoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfPreseted Failed...Descrition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "PsoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfPreseted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    return v0
.end method

.method public getPsuId()Ljava/lang/String;
    .locals 5

    .line 26
    const/4 v0, 0x0

    .line 28
    .local v0, "psuid":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/pso/PsoCrypto;->GetPSUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
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

    .line 32
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

    .line 33
    return-object v0
.end method

.method public presetCertKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "certPath"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1, p1}, Landroid/pso/PsoCrypto;->CertKeyPreset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
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

    .line 43
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

    .line 44
    return v0
.end method

.method public presetMcuKey()Z
    .locals 5

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/pso/PsoCrypto;->McuKeyPreset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
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

    .line 54
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

    .line 55
    return v0
.end method

.method public verifyCertKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 59
    const-string v0, "PsoModel"

    const-string v1, "verifyCertKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "res":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->mPsoCrypto:Landroid/pso/PsoCrypto;

    invoke-interface {v1, p1}, Landroid/pso/PsoCrypto;->CertKeyVerify(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
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

    .line 66
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

    .line 67
    return v0
.end method
