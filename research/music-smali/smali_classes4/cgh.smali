.class public Lcgh;
.super Lcfz;
.source "MqttPingResp.java"


# direct methods
.method public constructor <init>(B[B)V
    .locals 0

    const/16 p1, 0xd

    .line 28
    invoke-direct {p0, p1}, Lcfz;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected A_()[B
    .locals 1

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [B

    return-object v0
.end method

.method public B_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Ping"

    return-object v0
.end method
