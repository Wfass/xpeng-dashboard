.class public final Lcom/xiaopeng/lib/security/c;
.super Ljava/lang/Object;
.source "SecurityModuleFactory.java"


# direct methods
.method public static ok()Lcom/xiaopeng/lib/security/a;
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 15
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->oG()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/b/a;->or()Lcom/xiaopeng/lib/security/b/a;

    move-result-object v0

    return-object v0
.end method
