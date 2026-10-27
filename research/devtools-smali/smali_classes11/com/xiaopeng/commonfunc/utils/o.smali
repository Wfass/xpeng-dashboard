.class public Lcom/xiaopeng/commonfunc/utils/o;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# direct methods
.method public static eG()Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, "VIN"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 2

    .line 124
    const-string v0, "HARDWARE_ID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
