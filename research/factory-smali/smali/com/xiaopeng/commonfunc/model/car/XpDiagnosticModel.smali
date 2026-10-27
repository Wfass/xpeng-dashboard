.class public Lcom/xiaopeng/commonfunc/model/car/XpDiagnosticModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "XpDiagnosticModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/diagnostic/XpDiagnosticManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XpDiagnosticModel"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "xp_diagnostic"

    return-object v0
.end method

.method public sendMcuDiagCmdAck([B)Z
    .locals 4
    .param p1, "msg"    # [B

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "res":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/XpDiagnosticModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager;

    .line 25
    .local v1, "xpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1, p1}, Landroid/car/diagnostic/XpDiagnosticManager;->sendMcuDiagCmdAck([B)V

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    const-string v2, "XpDiagnosticModel"

    const-string v3, "sendMcuDiagCmdAck fail xpDiagnosticManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "xpDiagnosticManager":Landroid/car/diagnostic/XpDiagnosticManager;
    :goto_0
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method
