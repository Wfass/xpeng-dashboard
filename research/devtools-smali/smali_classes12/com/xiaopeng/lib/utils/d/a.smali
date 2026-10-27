.class public Lcom/xiaopeng/lib/utils/d/a;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static Xg:Landroid/widget/Toast;


# direct methods
.method public static b(Landroid/content/Context;I)V
    .locals 1

    .line 14
    if-nez p0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/d/a;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 17
    :cond_1
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/lib/utils/d/a;->Xg:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/utils/d/a;->Xg:Landroid/widget/Toast;

    goto :goto_0

    .line 24
    :cond_0
    sget-object p0, Lcom/xiaopeng/lib/utils/d/a;->Xg:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    sget-object p0, Lcom/xiaopeng/lib/utils/d/a;->Xg:Landroid/widget/Toast;

    return-object p0
.end method
