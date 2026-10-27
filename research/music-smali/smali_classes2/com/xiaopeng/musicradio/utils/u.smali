.class public Lcom/xiaopeng/musicradio/utils/u;
.super Ljava/lang/Object;
.source "DialogReferenceUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 23
    instance-of v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getDialogReference()Lcom/xiaopeng/musicradio/utils/t;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/utils/t;->a(Landroid/app/Dialog;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "DialogReferenceUtils"

    const-string v1, "context\u9700\u8981BaseActivity"

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 16
    instance-of v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 17
    check-cast p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->isDialogShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
