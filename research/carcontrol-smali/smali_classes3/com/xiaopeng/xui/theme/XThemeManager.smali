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
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getDayNightMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 90
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 91
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    .line 92
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->getThemeMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getThemeStyle()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.theme.style"

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/xui/theme/XThemeManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/xiaopeng/xui/theme/XThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNight(Landroid/content/res/Configuration;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 51
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeManager;->create(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/libtheme/ThemeManager;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Lcom/xiaopeng/libtheme/ThemeManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;
    .locals 0
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

    move-result-object p0

    return-object p0
.end method

.method public static setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    return-void
.end method

.method public static updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 0
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
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeManager;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    return-void
.end method
