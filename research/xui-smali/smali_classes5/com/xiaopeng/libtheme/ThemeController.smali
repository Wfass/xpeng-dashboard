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

    .line 28
    const-string v0, "key_theme_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_MODE:Landroid/net/Uri;

    .line 29
    const-string v0, "key_theme_type"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_THEME_STATE:Landroid/net/Uri;

    .line 30
    const-string v0, "ui_night_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->URI_DAYNIGHT_MODE:Landroid/net/Uri;

    .line 42
    const-string v0, "persist.sys.theme.settings.delay"

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_DELAY:J

    .line 43
    const-string v0, "persist.sys.theme.settings.timeout"

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_TIMEOUT:J

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeMode:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    .line 49
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/libtheme/ThemeController$1;-><init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;-><init>(Lcom/xiaopeng/libtheme/ThemeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeObserver:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeObserver:Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;

    invoke-virtual {v0}, Lcom/xiaopeng/libtheme/ThemeController$ThemeObserver;->registerThemeObserver()V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->readThemeSettings()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/libtheme/ThemeController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeController;
    .param p1, "x1"    # Z

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeController;->onStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/libtheme/ThemeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeController;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->handleStateEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/libtheme/ThemeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeController;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeController;->readThemeSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Uri;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->performStateChanged(ZLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/libtheme/ThemeController;ZLandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Uri;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->performThemeChanged(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/libtheme/ThemeController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

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
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeController;->sThemeController:Lcom/xiaopeng/libtheme/ThemeController;

    return-object v0
.end method

.method private handleStateEvent()V
    .locals 10

    .line 106
    iget v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 107
    .local v0, "auto":Z
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/libtheme/ThemeController;->isThemeWorking()Z

    move-result v3

    .line 108
    .local v3, "isThemeWorking":Z
    move v4, v3

    .line 112
    .local v4, "disable":Z
    if-eqz v4, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    sget-wide v5, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_DELAY:J

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x3e8

    .line 114
    .local v5, "delay":J
    :goto_1
    iget-object v7, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v7, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v9, v8, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v7, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    if-eqz v4, :cond_4

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mHandler:Landroid/os/Handler;

    sget-wide v7, Lcom/xiaopeng/libtheme/ThemeController;->DEFAULT_STATE_TIMEOUT:J

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "handleStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " auto="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isThemeWorking="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " disable="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " delay="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " themeState="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " daynightMode="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v2, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private onStateChanged(Z)V
    .locals 3
    .param p1, "disableView"    # Z

    .line 141
    const-string v0, "ThemeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged disableView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    xor-int/lit8 v0, p1, 0x1

    .line 143
    .local v0, "state":I
    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    if-ne v0, v1, :cond_0

    .line 144
    const-string v1, "ThemeController"

    const-string v2, "onStateChanged same state not to listeners"

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/libtheme/ThemeController;->setViewState(Z)V

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    .line 150
    .local v2, "listener":Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;
    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v2, p1}, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;->onStateChanged(Z)V

    .line 153
    .end local v2    # "listener":Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    return-void
.end method

.method private onThemeChanged(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    .line 159
    .local v1, "listener":Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;->onThemeChanged(ZLandroid/net/Uri;)V

    .line 162
    .end local v1    # "listener":Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method private declared-synchronized performStateChanged(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

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

    .line 166
    .end local p1    # "selfChange":Z
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/libtheme/ThemeController;
    throw p1
.end method

.method private declared-synchronized performThemeChanged(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeController;->onThemeChanged(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 170
    .end local p1    # "selfChange":Z
    .end local p2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/libtheme/ThemeController;
    throw p1
.end method

.method private readThemeSettings()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "key_theme_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeMode:I

    .line 176
    const-string v1, "key_theme_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    .line 177
    const-string v1, "ui_night_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    .line 178
    const-string v1, "ThemeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readThemeSettings themeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " daynightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/libtheme/ThemeController;->mDaynightMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private resetViewStateIfNeed(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 133
    const-string v0, "ThemeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetViewStateIfNeed uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "ui_night_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "URI":Landroid/net/Uri;
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    .line 138
    :cond_0
    return-void
.end method

.method private setViewState(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 103
    xor-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mViewState:I

    .line 104
    return-void
.end method


# virtual methods
.method public isThemeWorking()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeWorking(Landroid/content/Context;)Z

    move-result v0

    .line 99
    .local v0, "isThemeWorking":Z
    if-nez v0, :cond_1

    iget v1, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeState:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public register(Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    .line 87
    const-string v0, "ThemeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public unregister(Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/libtheme/ThemeController$OnThemeListener;

    .line 91
    const-string v0, "ThemeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeController;->mThemeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method
