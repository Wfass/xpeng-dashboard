.class public Lcom/xiaopeng/libtheme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;,
        Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;,
        Lcom/xiaopeng/libtheme/ThemeManager$ViewBuilder;,
        Lcom/xiaopeng/libtheme/ThemeManager$Logger;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final KEY_APPEND:Ljava/lang/String; = "extra_append"

.field public static final KEY_GLOBAL:Ljava/lang/String; = "extra_global"

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_YES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ThemeManager"

.field public static final THEME:Z

.field public static final THEME_ANIMATION_INTERVAL:J

.field public static final THEME_TIMEOUT_DELAY:J

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_THEME_CLEAR:I = 0x3f

.field public static final UI_MODE_THEME_MASK:I = 0xc0

.field public static final UI_MODE_THEME_UNDEFINED:I = 0x0

.field public static final VERSION:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThemeData:Lcom/xiaopeng/libtheme/ThemeData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-string v0, "persist.sys.theme.logger"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->THEME:Z

    .line 33
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->THEME:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    .line 49
    sget-wide v0, Landroid/app/UiModeManager;->THEME_ANIMATION_INTERVAL:J

    sput-wide v0, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_ANIMATION_INTERVAL:J

    .line 50
    sget-wide v0, Landroid/app/UiModeManager;->THEME_TIMEOUT_DELAY:J

    sput-wide v0, Lcom/xiaopeng/libtheme/ThemeManager;->THEME_TIMEOUT_DELAY:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeData;

    invoke-direct {v0}, Lcom/xiaopeng/libtheme/ThemeData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p3, v0, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p2, v0, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p4, v0, Lcom/xiaopeng/libtheme/ThemeData;->list:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static applyDayNightMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "daynightMode"    # I

    .line 121
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 122
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->applyDayNightMode(I)V

    .line 123
    return-void
.end method

.method public static applyThemeMode(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeMode"    # I

    .line 117
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 118
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->applyThemeMode(I)V

    .line 119
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/libtheme/ThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;)",
            "Lcom/xiaopeng/libtheme/ThemeManager;"
        }
    .end annotation

    .line 65
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/libtheme/ThemeManager;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static getDayNightAutoMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 89
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getDayNightAutoMode()I

    move-result v1

    return v1
.end method

.method public static getDayNightMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 85
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getDayNightMode()I

    move-result v1

    return v1
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 81
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getThemeMode()I

    move-result v1

    return v1
.end method

.method public static getUiMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 93
    .local v1, "ctx":Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    .line 94
    .local v0, "configuration":Landroid/content/res/Configuration;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static getUiModeManager()Landroid/app/IUiModeManager;
    .locals 2

    .line 125
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    return-object v1
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 98
    .local v1, "ctx":Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    .line 99
    .local v0, "configuration":Landroid/content/res/Configuration;
    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 100
    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2

    .line 102
    :cond_3
    return v2
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 71
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 73
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 v1, v1, 0xc0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 75
    :cond_1
    return v0
.end method

.method public static isThemeWorking(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 114
    .local v0, "uim":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->isThemeWorking()Z

    move-result v1

    return v1
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;
    .locals 2
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

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 148
    .local p4, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 151
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public static setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 143
    :cond_0
    :goto_0
    return-void
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "resId"    # I

    .line 129
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 135
    :cond_0
    :goto_0
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

    .line 154
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 68
    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->onConfigurationChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;Landroid/content/res/Configuration;)V

    .line 69
    return-void
.end method
