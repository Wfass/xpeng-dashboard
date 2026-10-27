.class public Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;
.super Ljava/lang/Object;
.source "InfoUtil.java"


# static fields
.field private static mHookSessionUI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->mHookSessionUI:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo(Z)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultMediaInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string v0, "com.xiaopeng.musicradio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo(Z)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    const-string v0, "com.android.bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo(Z)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getThirdDefaultMediaInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0

    .line 100
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultMediaInfo(Z)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 3
    .param p0, "bluetooth"    # Z

    .line 31
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>()V

    .line 32
    .local v0, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0e0073

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setArtist(Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 35
    const-string v1, "com.xiaopeng.musicradio"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setPackageName(Ljava/lang/String;)V

    .line 36
    if-eqz p0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setSource(I)V

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getDefaultMediaIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    return-object v0
.end method

.method public static getHookSessionUI(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->mHookSessionUI:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static getMediaInfoMode(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 71
    const-string v0, "playMode"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "playMode":Ljava/lang/String;
    return-object v0
.end method

.method public static getPlayMode(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 84
    if-eqz p0, :cond_0

    .line 85
    const-string v0, "playMode"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "playMode":Ljava/lang/String;
    return-object v0

    .line 88
    .end local v0    # "playMode":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static getThirdDefaultMediaInfo(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>()V

    .line 105
    .local v0, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setTitle(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setArtist(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setXpMusic(Z)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setPackageName(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setSource(I)V

    .line 111
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    return-object v0
.end method

.method public static isBluetoothMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 2
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 42
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDefaultContent(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 5
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 58
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    const-string v1, "isDefaultContent"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "contentString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 65
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0e0074

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0e0073

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 2
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 46
    const-string v0, "isDefault"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "isDefaultString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 50
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isDefaultStatus(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 1
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultContent(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v0

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

.method public static isVideoPlayMode(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z
    .locals 2
    .param p0, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 76
    if-eqz p0, :cond_0

    .line 77
    const-string v0, "playMode"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "playMode":Ljava/lang/String;
    const-string v1, "Video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 80
    .end local v0    # "playMode":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putHookSessionUI(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 19
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->mHookSessionUI:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method
