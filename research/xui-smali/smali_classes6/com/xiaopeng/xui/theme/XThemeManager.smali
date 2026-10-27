.class public Lcom/xiaopeng/xui/theme/XThemeManager;
.super Ljava/lang/Object;
.source "XThemeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatNightMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getDayNightMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 91
    .local v1, "cls":Ljava/lang/Class;
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "m":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 93
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getThemeMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getThemeStyle()Ljava/lang/String;
    .locals 2

    .line 74
    const-string v0, "persist.sys.theme.style"

    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "style":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNight(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 51
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 53
    :cond_1
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 70
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 33
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

    .line 37
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeManager;->create(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/libtheme/ThemeManager;

    move-result-object v0

    .line 38
    .local v0, "theme":Lcom/xiaopeng/libtheme/ThemeManager;
    invoke-virtual {v0, p0}, Lcom/xiaopeng/libtheme/ThemeManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 39
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

    .line 58
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeManager;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "resId"    # I

    .line 25
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    .line 26
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

    .line 62
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 63
    return-void
.end method
