.class public Lcom/xiaopeng/commonfunc/b/a/c;
.super Lcom/xiaopeng/commonfunc/b/a/b;
.source "IcmModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/b/a/b<",
        "Landroid/car/hardware/icm/CarIcmManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/a/b;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "xp_icm"

    return-object v0
.end method

.method public sendLogCompressRequest(Ljava/lang/String;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/c;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLogCompressRequest :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/a/c;->dD()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendLogCompressRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/a/c;->TAG:Ljava/lang/String;

    const-string v0, "sendLogCompressRequest error:mCarIcmManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :goto_1
    return-void
.end method
