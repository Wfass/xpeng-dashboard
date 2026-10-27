.class public Lbon;
.super Ljava/lang/Object;
.source "SearchDialogUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 34
    new-instance v0, Lbny;

    invoke-direct {v0, p0}, Lbny;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0, p1}, Lbny;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lbny;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x7f6

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 39
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, -0x2

    .line 41
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p1, 0x11

    .line 43
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 46
    :cond_0
    invoke-virtual {v0}, Lbny;->show()V

    return-void
.end method
