.class public Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;
.super Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.source "XAppAudioFocusModeEngine.java"


# static fields
.field private static final PACKAGE_KYBC:Ljava/lang/String; = "com.aligames.kuang.kybc.aligames"

.field private static final TAG:Ljava/lang/String; = "XAppNavigationModeEngine"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 32
    :cond_0
    return-void
.end method

.method private requireOrReleaseAudioFocus()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "XAppNavigationModeEngine"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->isCurrentModeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "XAppNavigationModeEngine"

    const-string v1, "require audio focus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized handleAppInfoChange()V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->requireOrReleaseAudioFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;
    throw v0
.end method

.method protected isCurrentModeEnable()Z
    .locals 3

    .line 40
    const-string v0, "com.aligames.kuang.kybc.aligames"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 41
    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 44
    return v2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->requestAudioFocus:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method protected onInit()V
    .locals 0

    .line 51
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 56
    return-void
.end method
