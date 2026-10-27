.class public Lcom/xiaopeng/xuiservice/smart/SmartThemeService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartThemeService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final CURRENT_THEME:Ljava/lang/String; = "current_theme"

.field private static final KEY_NAPA_XSPORT:Ljava/lang/String; = "key_napa_xsport"

.field private static final TAG:Ljava/lang/String; = "SmartThemeService"

.field private static final THEME_BOOST:Ljava/lang/String; = "boost"

.field private static final THEME_XSPORT:Ljava/lang/String; = "xsport"

.field private static current_theme:Ljava/lang/String;

.field private static isBoost:Z

.field private static isSupportXPTheme:Z

.field private static isXsport:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->current_theme:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isSupportXPTheme:Z

    .line 46
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isXsport:Z

    .line 47
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isBoost:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartThemeService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService$1;

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->initSportSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->applyTheme()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->resetFeature()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->handleXsport()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->handleBoost()V

    return-void
.end method

.method private applyTheme()V
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->checkCurrentTheme()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "currentTheme":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->current_theme:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->current_theme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->current_theme:Ljava/lang/String;

    .line 174
    const-string v1, "SmartThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 176
    .local v1, "modeManager":Landroid/app/UiModeManager;
    invoke-virtual {v1, v0}, Landroid/app/UiModeManager;->applyThemeStyle(Ljava/lang/String;)V

    .line 178
    .end local v1    # "modeManager":Landroid/app/UiModeManager;
    :cond_0
    return-void
.end method

.method private checkCurrentTheme()Ljava/lang/String;
    .locals 5

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCurrentTheme failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private checkMode(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartThemeService;
    .locals 1

    .line 226
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$InstanceHolder;->access$500()Lcom/xiaopeng/xuiservice/smart/SmartThemeService;

    move-result-object v0

    return-object v0
.end method

.method private handleBoost()V
    .locals 5

    .line 161
    const-string v0, "boost"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->checkMode(Ljava/lang/String;)Z

    move-result v0

    .line 162
    .local v0, "boostMode":Z
    if-eqz v0, :cond_0

    const-string v1, "in"

    goto :goto_0

    :cond_0
    const-string v1, "out"

    .line 163
    .local v1, "res":Ljava/lang/String;
    :goto_0
    const-string v2, "SmartThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBoost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_theme"

    if-eqz v0, :cond_1

    const-string v4, "boost"

    goto :goto_1

    .line 165
    :cond_1
    const-string/jumbo v4, "xsport"

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->checkMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "xsport"

    goto :goto_1

    :cond_2
    const-string v4, ""

    .line 164
    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isBoost:Z

    .line 168
    return-void
.end method

.method private handleXsport()V
    .locals 5

    .line 151
    const-string/jumbo v0, "xsport"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->checkMode(Ljava/lang/String;)Z

    move-result v0

    .line 152
    .local v0, "xsportMode":Z
    if-eqz v0, :cond_0

    const-string v1, "in"

    goto :goto_0

    :cond_0
    const-string v1, "out"

    .line 153
    .local v1, "res":Ljava/lang/String;
    :goto_0
    const-string v2, "SmartThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleXsport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "boost"

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->checkMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_theme"

    if-eqz v0, :cond_1

    const-string/jumbo v4, "xsport"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    :cond_2
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isXsport:Z

    .line 158
    return-void
.end method

.method private initSportSettings()V
    .locals 5

    .line 81
    const-string v0, "1"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "xsport"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    .local v0, "bootCompleted":Z
    if-eqz v0, :cond_1

    .line 86
    const-string v1, "SmartThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bootCompleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isSupportXPTheme:Z

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "xsport"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_2
    :goto_0
    return-void
.end method

.method private registerProvider()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_theme"

    .line 102
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$3;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;Landroid/os/Handler;)V

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_napa_xsport"

    .line 111
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$4;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;Landroid/os/Handler;)V

    .line 110
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isSupportXPTheme:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->handleXsport()V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->handleBoost()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xsport"

    .line 124
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$5;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$5;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;Landroid/os/Handler;)V

    .line 123
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boost"

    .line 133
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$6;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService$6;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartThemeService;Landroid/os/Handler;)V

    .line 132
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    :cond_0
    return-void
.end method

.method private resetFeature()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_theme"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boost"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xsport"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->onInit()V

    .line 148
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "SmartThemeService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 206
    return-void
.end method

.method protected initXUIManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 216
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    .line 218
    .local v0, "xuiManager":Lcom/xiaopeng/xuimanager/XUIManager;
    if-nez v0, :cond_0

    .line 219
    const-string v1, "SmartThemeService"

    const-string/jumbo v2, "xuiManager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 210
    const-string v0, "SmartThemeService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method protected onInit()V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_napa_xsport"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isSupportXPTheme:Z

    .line 64
    const-string v0, "SmartThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportXPTheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->isSupportXPTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportXPTheme getInt e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->registerProvider()V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartThemeService;->initSportSettings()V

    .line 70
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 78
    return-void
.end method
