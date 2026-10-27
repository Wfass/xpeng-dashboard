.class public Lcom/xiaopeng/xui/d/d;
.super Ljava/lang/Object;
.source "XDialogUtils.java"


# direct methods
.method public static a(Landroid/app/Dialog;)V
    .locals 1

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 110
    :cond_0
    return-void
.end method
