.class public Lcom/xiaopeng/xui/theme/XThemeManager;
.super Ljava/lang/Object;
.source "XThemeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatNightMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getDayNightMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNight(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 48
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 49
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 51
    :cond_1
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeManager;->create(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/libtheme/ThemeManager;

    move-result-object v0

    .line 36
    .local v0, "theme":Lcom/xiaopeng/libtheme/ThemeManager;
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    return-void
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "resId"    # I

    .line 23
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 24
    return-void
.end method

.method public static updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 61
    return-void
.end method
