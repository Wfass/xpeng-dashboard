.class public final Lcom/xiaopeng/commonfunc/utils/a/b;
.super Ljava/lang/Object;
.source "IndivInternalFactory.java"


# direct methods
.method public static eI()Lcom/xiaopeng/commonfunc/utils/a/a;
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/a/c;->eJ()Lcom/xiaopeng/commonfunc/utils/a/c;

    move-result-object v0

    return-object v0
.end method
