.class public Lcom/xiaopeng/libtheme/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;,
        Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATE_DELAY:J

.field public static final DEFAULT_STATE_TIMEOUT:J

.field private static final KEY_DAYNIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field private static final KEY_THEME_MODE:Ljava/lang/String; = "key_theme_mode"

.field private static final KEY_THEME_STATE:Ljava/lang/String; = "key_theme_type"

.field private static final MSG_STATE_NOTIFY:I = 0x3e9

.field private static final MSG_STATE_TIMEOUT:I = 0x3ea

.field public static final STATE_THEME_CHANGED:I = 0x2

.field public static final STATE_THEME_PREPARE:I = 0x1

.field public static final STATE_THEME_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThemeController"

.field public static final URI_DAYNIGHT_MODE:Landroid/net/Uri;

.field public static final URI_THEME_MODE:Landroid/net/Uri;

.field public static final URI_THEME_STATE:Landroid/net/Uri;

.field private static final VIEW_DISABLE:I = 0x0

.field private static final VIEW_ENABLED:I = 0x1

.field private static final VIEW_UNKNOWN:I = -0x1

.field private static sThemeController:Lcom/xiaopeng/libtheme/ThemeController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaynightMode:I

.field private final mHandler:Landroid/os/Handler;

.field private mThemeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeMode:I

.field private final mThemeObserver:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

.field private mThemeState:I

.field private mViewState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "key_theme_mode"

    .line 28
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_MODE:Landroid/net/Uri;

    const-string v0, "key_theme_type"

    .line 29
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_STATE:Landroid/net/Uri;

    const-string v0, "ui_night_mode"

    .line 30
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_DAYNIGHT_MODE:Landroid/net/Uri;

    const-string v0, "persist.sys.theme.settings.delay"

    const-wide/16 v1, 0xbb8

    .line 42
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_DELAY:J

    const-string v0, "persist.sys.theme.settings.timeout"

    .line 43
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_TIMEOUT:J

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeMode:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    .line 49
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/libtheme/ThemeController$1;-><init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    .line 82
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;-><init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeObserver:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    .line 83
    invoke-virtual {v1}, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->registerThemeObserver()V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->readThemeSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libtheme/ThemeController;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeController;->onStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/libtheme/ThemeController;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->handleStateEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/libtheme/ThemeController;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->readThemeSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->performStateChanged(ZLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->performThemeChanged(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeController;
    .locals 2

    .line 71
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/xiaopeng/libtheme/ThemeController;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeController;

    invoke-direct {v1, p0}, Lcom/xiaopeng/libtheme/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    return-object p0
.end method

.method private handleStateEvent()V
    .locals 8

    .line 106
    iget v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/libtheme/ThemeController;->isThemeWorking()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 112
    sget-wide v3, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_DELAY:J

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x3e8

    .line 114
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v5, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v2, :cond_3

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    sget-wide v6, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_TIMEOUT:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "handleStateChanged"

    .line 123
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " auto="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isThemeWorking="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " disable="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " themeState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " daynightMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeController"

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStateChanged(Z)V
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged disableView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeController"

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    .line 143
    iget v2, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    if-ne v0, v2, :cond_0

    const-string p1, "onStateChanged same state not to listeners"

    .line 144
    invoke-static {v1, p1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeController;->setViewState(Z)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1, p1}, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;->onStateChanged(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onThemeChanged(ZLandroid/net/Uri;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;->onThemeChanged(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized performStateChanged(ZLandroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->resetViewStateIfNeed(ZLandroid/net/Uri;)V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->handleStateEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized performThemeChanged(ZLandroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->onThemeChanged(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readThemeSettings()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_theme_mode"

    const/4 v2, 0x0

    .line 175
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeMode:I

    const-string v1, "key_theme_type"

    .line 176
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    const-string v1, "ui_night_mode"

    .line 177
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readThemeSettings themeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " daynightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeController"

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetViewStateIfNeed(ZLandroid/net/Uri;)V
    .locals 1

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetViewStateIfNeed uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThemeController"

    invoke-static {v0, p1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ui_night_mode"

    .line 134
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    :cond_0
    return-void
.end method

.method private setViewState(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 103
    iput p1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    return-void
.end method


# virtual methods
.method public isThemeWorking()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeWorking(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public register(Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeController"

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeController"

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
