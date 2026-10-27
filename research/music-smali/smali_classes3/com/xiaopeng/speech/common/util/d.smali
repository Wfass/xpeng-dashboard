.class public Lcom/xiaopeng/speech/common/util/d;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {}, Lcom/xiaopeng/speech/common/util/d;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/common/util/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
