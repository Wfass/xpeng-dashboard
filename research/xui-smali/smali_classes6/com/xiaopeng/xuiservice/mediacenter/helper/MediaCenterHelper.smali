.class public Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;
.super Ljava/lang/Object;
.source "MediaCenterHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCenterHelper"

.field private static mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;


# instance fields
.field private SoundBootTrigger:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mCmdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastStoreMediaPackageName:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mThirdAppLastIgOffStatus:I

.field private needCheckMediaProcess:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->SoundBootTrigger:Z

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mCmdKeyMap:Ljava/util/Map;

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 57
    return-void
.end method

.method private broadcastMediaResume()V
    .locals 2

    .line 206
    const-string v0, "MediaCenterHelper"

    const-string v1, "broadcastMediaResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xui.RESUME_MEDIA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 209
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;
    .locals 2

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mInstance:Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;

    return-object v0
.end method


# virtual methods
.method public controlSessionByXUIBroadcast(I)V
    .locals 3
    .param p1, "cmd"    # I

    .line 71
    const-string v0, "MediaCenterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlSessionByXUIBroadcast cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xui.media.PLAY_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 75
    return-void
.end method

.method public dispatchMediaButton(I)V
    .locals 2
    .param p1, "cmd"    # I

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mCmdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mCmdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public isCurrentThirdAppPlay()Z
    .locals 3

    .line 149
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 151
    .local v0, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public declared-synchronized isNeedCheckMediaProcess()Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->needCheckMediaProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;
    throw v0
.end method

.method public isProcessExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 182
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "runningAppProcessInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 184
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v1, 0x1

    return v1

    .line 187
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public notifyIgStatus(Z)V
    .locals 3
    .param p1, "igOff"    # Z

    .line 78
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->SoundBootTrigger:Z

    .line 79
    sget v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MediaLaunchPolicy:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isCurrentThirdAppPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mThirdAppLastIgOffStatus:I

    .line 103
    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mThirdAppLastIgOffStatus:I

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    goto :goto_0

    .line 92
    :pswitch_1
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->setCheckMediaProcess(Z)V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isCurrentThirdAppPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->setCheckMediaProcess(Z)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mThirdAppLastIgOffStatus:I

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const-string v1, "igOff"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->stopAllMedia(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 116
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifySoundComplete()V
    .locals 4

    .line 119
    const-string v0, "MediaCenterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySoundComplete SoundBootTrigger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->SoundBootTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const-string v1, "igOff"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->stopAllMedia(ZLjava/lang/String;Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->broadcastMediaResume()V

    .line 122
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->SoundBootTrigger:Z

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    sget v0, Lcom/xiaopeng/xuiservice/mediacenter/Config;->MediaLaunchPolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isCurrentThirdAppPlay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mThirdAppLastIgOffStatus:I

    if-nez v0, :cond_3

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControl(III)I

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->isCurrentThirdAppPlay()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mThirdAppLastIgOffStatus:I

    if-nez v0, :cond_3

    .line 129
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->controlSessionByXUIBroadcast(I)V

    .line 145
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->SoundBootTrigger:Z

    .line 146
    return-void
.end method

.method public preLaunchThirdAppService(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 158
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 159
    .local v1, "serviceInfo":[Landroid/content/pm/ServiceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 160
    .local v4, "service":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const-string v6, "MediaCenterHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preLaunchThirdAppService pkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " &serviceName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v4    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "serviceInfo":[Landroid/content/pm/ServiceInfo;
    :cond_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public saveMediaPackageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mLastStoreMediaPackageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->mLastStoreMediaPackageName:Ljava/lang/String;

    .line 194
    const-string v0, "MediaCenterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMediaPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "persist.sys.media.launch.packageName"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public declared-synchronized setCheckMediaProcess(Z)V
    .locals 3
    .param p1, "needCheck"    # Z

    monitor-enter p0

    .line 172
    :try_start_0
    const-string v0, "MediaCenterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCheckMediaProcess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;->needCheckMediaProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 171
    .end local p1    # "needCheck":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/mediacenter/helper/MediaCenterHelper;
    throw p1
.end method
