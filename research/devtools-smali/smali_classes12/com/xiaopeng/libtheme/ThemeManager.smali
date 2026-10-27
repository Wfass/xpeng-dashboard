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
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance p1, Lcom/xiaopeng/libtheme/ThemeData;

    invoke-direct {p1}, Lcom/xiaopeng/libtheme/ThemeData;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p3, p1, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p2, p1, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    iput-object p4, p1, Lcom/xiaopeng/libtheme/ThemeData;->list:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static applyDayNightMode(Landroid/content/Context;I)V
    .locals 1

    .line 121
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->applyDayNightMode(I)V

    .line 123
    return-void
.end method

.method public static applyThemeMode(Landroid/content/Context;I)V
    .locals 1

    .line 117
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->applyThemeMode(I)V

    .line 119
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/xiaopeng/libtheme/ThemeManager;
    .locals 1
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
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/libtheme/ThemeManager;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static getDayNightAutoMode(Landroid/content/Context;)I
    .locals 1

    .line 88
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 89
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getDayNightAutoMode()I

    move-result p0

    return p0
.end method

.method public static getDayNightMode(Landroid/content/Context;)I
    .locals 1

    .line 84
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 85
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getDayNightMode()I

    move-result p0

    return p0
.end method

.method public static getThemeMode(Landroid/content/Context;)I
    .locals 1

    .line 80
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 81
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getThemeMode()I

    move-result p0

    return p0
.end method

.method public static getUiMode(Landroid/content/Context;)I
    .locals 1

    .line 92
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    iget p0, v0, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getUiModeManager()Landroid/app/IUiModeManager;
    .locals 1

    .line 125
    const-string v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    return-object v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 2

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    .line 99
    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_3

    .line 100
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    const/4 p0, 0x1

    nop

    :cond_2
    return p0

    .line 102
    :cond_3
    return p0
.end method

.method public static isThemeChanged(Landroid/content/res/Configuration;)Z
    .locals 1

    .line 71
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 73
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit16 p0, p0, 0xc0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 75
    :cond_1
    return v0
.end method

.method public static isThemeWorking(Landroid/content/Context;)Z
    .locals 1

    .line 113
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 114
    invoke-virtual {p0}, Landroid/app/UiModeManager;->isThemeWorking()Z

    move-result p0

    return p0
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/HashMap;
    .locals 2
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

    move-result-object p0

    return-object p0
.end method

.method public static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
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
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0
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
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 152
    return-void
.end method

.method public static setWindowBackgroundDrawable(Landroid/content/res/Configuration;Landroid/view/Window;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

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
    move-exception p0

    .line 143
    :cond_0
    :goto_0
    return-void
.end method

.method public static setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

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
    move-exception p0

    .line 135
    :cond_0
    :goto_0
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

    .line 154
    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeManager;->mThemeData:Lcom/xiaopeng/libtheme/ThemeData;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->onConfigurationChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;Landroid/content/res/Configuration;)V

    .line 69
    return-void
.end method
