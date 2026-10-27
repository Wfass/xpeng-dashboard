.class public final Lcom/xiaopeng/lib/security/SecurityModuleFactory;
.super Ljava/lang/Object;
.source "SecurityModuleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityModule()Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 15
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->getInstance()Lcom/xiaopeng/lib/security/none/NoneSecurity;

    move-result-object v0

    return-object v0
.end method
