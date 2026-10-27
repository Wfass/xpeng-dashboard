.class public Lcom/xiaopeng/xui/utils/XDialogUtils;
.super Ljava/lang/Object;
.source "XDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThemeDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static handleSoftInput(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public static requestFullScreen(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 110
    :cond_0
    return-void
.end method

.method public static setHorizontal(Landroid/app/Dialog;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "xOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 37
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 39
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800003

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 40
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setHorizontalCenter(Landroid/app/Dialog;)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 23
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 25
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setSystemDialog(Landroid/app/Dialog;I)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "type"    # I

    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public static setVertical(Landroid/app/Dialog;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "yOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 67
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 68
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setVerticalCenter(Landroid/app/Dialog;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "yOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 53
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 54
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setVerticalHorizontal(Landroid/app/Dialog;II)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 79
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 81
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 82
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 83
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
