.class public Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;
.super Ljava/lang/Object;
.source "ThemeWatcher.java"

# interfaces
.implements Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;,
        Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EXTRA_THEME_TYPE:Ljava/lang/String; = "extra_theme_type"

.field private static final META_DATA_XP_THEME_DAY:Ljava/lang/String; = "xp_theme_day"

.field private static final META_DATA_XP_THEME_NIGHT:Ljava/lang/String; = "xp_theme_night"

.field private static final TAG:Ljava/lang/String; = "ThemeWatcher"

.field public static final THEME_TYPE_AUTO:I = 0x3

.field public static final THEME_TYPE_DAY:I = 0x1

.field public static final THEME_TYPE_NIGHT:I = 0x2

.field public static final THEME_TYPE_NULL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPageThemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTheme:I

.field private mDayStyle:I

.field private mNextThemeWaitingForSwitch:I

.field private mNightStyle:I

.field private mThemeSwitchListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNextThemeWaitingForSwitch:I

    .line 48
    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mDayStyle:I

    .line 52
    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNightStyle:I

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/content/Context;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentSystemTheme(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->switchTheme(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mCurrentPageThemeMap:Ljava/util/Map;

    return-object p1
.end method

.method private getCurrentSystemTheme(Landroid/content/Context;)I
    .locals 0

    .line 304
    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;
    .locals 1

    .line 91
    sget-object v0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$SingletonHolder;->sInstance:Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;

    return-object v0
.end method

.method private loadThemeSettings(Landroid/content/Context;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$2;-><init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private observeThemeChange(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "ui_night_mode"

    .line 113
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$1;-><init>(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/Context;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setAppStartingWindow()V
    .locals 3

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 181
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "xp_theme_day"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mDayStyle:I

    .line 184
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "xp_theme_night"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNightStyle:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 191
    :cond_0
    :goto_0
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNightStyle:I

    if-nez v0, :cond_1

    .line 192
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mDayStyle:I

    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNightStyle:I

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppStartingWindow mDayStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mDayStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mNightStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNightStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchTheme(I)V
    .locals 5

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<< JTry to switch Theme  current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; is switching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->isSwitching()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentTheme()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNextThemeWaitingForSwitch:I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< current theme has been target type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->isSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNextThemeWaitingForSwitch:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< waiting for switchTheme to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne p1, v0, :cond_5

    .line 257
    :cond_2
    iput p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mCurrentTheme:I

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<< JTry to switch Theme do switchTheme to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switch2Night()V

    goto :goto_0

    .line 261
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->switch2Day()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public addThemeSwitchListener(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentTheme()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mCurrentTheme:I

    return v0
.end method

.method public getPageTheme(Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mCurrentPageThemeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs init(Landroid/content/Context;[I)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->addNewThemeResource([I)V

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {p2, p0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->setOnSwitchFinishListener(Lcom/xiaopeng/lib/themeswitch/Switcher$OnSwitchFinishListener;)V

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->setAppStartingWindow()V

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->loadThemeSettings(Landroid/content/Context;)V

    .line 109
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->observeThemeChange(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public isNight()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newThemeNameForRepeatView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->newThemeNameForRepeatView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "ThemeWatcher"

    const-string v1, "<<< on Configuration changed."

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentSystemTheme(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->switchTheme(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentSystemTheme(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->switchTheme(I)V

    return-void
.end method

.method public onSwitchFinish()V
    .locals 7

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify listeners: current theme is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeWatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;

    .line 74
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->getCurrentTheme()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;->onSwitchTheme(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNextThemeWaitingForSwitch:I

    if-eqz v0, :cond_1

    .line 80
    iput v2, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mNextThemeWaitingForSwitch:I

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JTry to switch Theme onSwitchFinish to switchTheme to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->switchTheme(I)V

    :cond_1
    return-void
.end method

.method public register(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->register(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public registerWithoutRepeat(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/Switcher;->registerWithoutRepeat(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public removeThemeListener(Lcom/xiaopeng/lib/themeswitch/ThemeWatcher$OnThemeSwitchListener;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitchListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/ThemeWatcher;->mThemeSwitcher:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->unregister(Ljava/lang/String;)V

    return-void
.end method
