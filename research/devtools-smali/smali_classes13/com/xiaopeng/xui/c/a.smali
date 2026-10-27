.class public Lcom/xiaopeng/xui/c/a;
.super Ljava/lang/Object;
.source "XThemeManager.java"


# direct methods
.method public static a(Landroid/content/res/Configuration;)Z
    .locals 2

    .line 48
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 49
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 51
    :cond_1
    return v0
.end method

.method public static aF(Landroid/content/Context;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/xui/c/a;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 24
    return-void
.end method
