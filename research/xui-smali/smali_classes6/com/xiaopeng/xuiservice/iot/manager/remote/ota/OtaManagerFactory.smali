.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/OtaManagerFactory;
.super Ljava/lang/Object;
.source "OtaManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;
    .locals 2
    .param p0, "vender"    # Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x344be215    # -2.3608278E7f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "telink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 11
    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    move-result-object v0

    return-object v0
.end method
