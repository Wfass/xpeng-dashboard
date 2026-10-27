.class public Lcom/xiaopeng/xui/utils/XDialogUtils;
.super Ljava/lang/Object;
.source "XDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThemeDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getScreenId(Landroid/app/Dialog;)I
    .locals 4
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 116
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/app/Dialog;

    .line 117
    .local v1, "cls":Ljava/lang/Class;
    const-string v2, "getScreenId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 118
    .local v2, "m":Ljava/lang/reflect/Method;
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 119
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static handleSoftInput(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public static requestFullScreen(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 109
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 112
    :cond_0
    return-void
.end method

.method public static setHorizontal(Landroid/app/Dialog;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "xOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 39
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 41
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800003

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
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

    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 25
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 27
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static setScreenId(Landroid/app/Dialog;I)V
    .locals 6
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "id"    # I

    .line 127
    :try_start_0
    const-class v0, Landroid/app/Dialog;

    .line 128
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/Dialog;>;"
    const-string v1, "setScreenId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/app/Dialog;>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setSystemDialog(Landroid/app/Dialog;I)V
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "type"    # I

    .line 96
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public static setVertical(Landroid/app/Dialog;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "yOffset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 69
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 70
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
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

    .line 51
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 56
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
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

    .line 79
    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 81
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 83
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 84
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 85
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
