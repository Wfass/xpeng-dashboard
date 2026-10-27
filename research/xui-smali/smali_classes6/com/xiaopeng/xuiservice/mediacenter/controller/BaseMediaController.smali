.class public abstract Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;
.super Ljava/lang/Object;
.source "BaseMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/IMediaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMediaController"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field protected mContext:Landroid/content/Context;

.field protected mMediaController:Landroid/media/session/MediaController;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mXAppService:Lcom/xiaopeng/xuiservice/xapp/XAppService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mActivityManager:Landroid/app/ActivityManager;

    .line 52
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/PendingIntent;
    .param p3, "x3"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->executeAsyncScreen(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;I)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->getExtraIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private executeAsyncScreen(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sessionIntent"    # Landroid/app/PendingIntent;
    .param p3, "screenId"    # I

    .line 234
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setPackageScreenId(Ljava/lang/String;I)Z

    .line 235
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Landroid/app/PendingIntent;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method

.method private getExtraIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "screenId"    # I

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setScreenId(I)V

    .line 294
    return-object v0
.end method

.method private getSessionActivity(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getHookSessionUI(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 224
    .local v0, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 225
    return-object v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 230
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSupportMultiUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetOnCurrentDisplay(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "targetPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getSharedId(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 79
    :cond_1
    return v2
.end method

.method private moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ltz v0, :cond_0

    .line 105
    :try_start_0
    const-string v0, "BaseMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am moveTaskToFront package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mActivityManager:Landroid/app/ActivityManager;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 112
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const v1, 0x104000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    goto :goto_1

    .line 118
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "BaseMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch running task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method private queryApplicationTask(Ljava/lang/String;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    .local v1, "numTasks":I
    const/4 v2, 0x0

    .line 128
    .local v2, "infoMusic":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 130
    .local v4, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    move-object v2, v4

    .line 133
    goto :goto_1

    .line 128
    .end local v4    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v2
.end method

.method private sendStartPackageBroadcast(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 256
    const-string v0, "BaseMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStartPackageBroadcast pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on Display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.media.session.START_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "displayId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 261
    return-void
.end method

.method private startPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "BaseMediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPackage pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 145
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_0
    const-string v2, "BaseMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send start broadcast for pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->sendStartPackageBroadcast(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    goto :goto_1

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "BaseMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPackage not found activity for pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v0
.end method

.method private startPackageByAppListManager(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 248
    const-string v0, "BaseMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPackageByAppListManager pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "extra":Landroid/os/Bundle;
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "startType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 253
    return-void
.end method

.method private startPackageByDisplay(Ljava/lang/String;I)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 158
    const-string v0, "BaseMediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPackageByDisplay pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 160
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->getSessionActivity(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 161
    .local v1, "sessionIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 163
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 164
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartMultiScreenStatus(ILjava/lang/String;)Z

    move-result v2

    .line 165
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 166
    const-string v3, "BaseMediaController"

    const-string v4, "startPackageByDisplay send pendingIntent setPackageScreenId only"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->executeAsyncScreen(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 169
    :cond_0
    const-string v4, "BaseMediaController"

    const-string v5, "startPackageByDisplay send pendingIntent showDialog"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;

    invoke-direct {v5, p0, p1, v1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    invoke-virtual {v4, v3, p2, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 183
    .end local v2    # "result":Z
    :goto_0
    goto :goto_1

    .line 184
    :cond_1
    const-string v3, "BaseMediaController"

    const-string v4, "startPackageByDisplay do--"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->getExtraIntent(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_1
    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_2
    return-void

    .line 194
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->isSupportMultiUser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/mediacenter/utils/ScreenUtils;->getScreenId(Landroid/media/session/MediaController;)I

    move-result v4

    .line 196
    .local v4, "controlScreenId":I
    if-eq v4, p2, :cond_4

    .line 197
    if-nez v4, :cond_3

    const v3, 0x7f0e00b1

    goto :goto_3

    .line 198
    :cond_3
    const v3, 0x7f0e00b2

    .line 197
    :goto_3
    invoke-static {v0, v3, v2, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 199
    return-void

    .line 203
    .end local v4    # "controlScreenId":I
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_7

    .line 204
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPrimaryPackage(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "topPrimaryPkg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    const-string v3, "BaseMediaController"

    const-string v4, "package is top"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 210
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_6

    .line 212
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v5

    invoke-virtual {v5, v0, v4, p2, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 213
    :catch_1
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BaseMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startPackageByDisplay failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v2    # "topPrimaryPkg":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_4
    goto :goto_5

    .line 217
    .restart local v2    # "topPrimaryPkg":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->sendStartPackageBroadcast(Ljava/lang/String;I)V

    .line 220
    .end local v2    # "topPrimaryPkg":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_5
    return-void
.end method

.method private startXpMusic()V
    .locals 3

    .line 265
    :try_start_0
    const-string v0, "BaseMediaController"

    const-string v1, "startXpMusic by music radio main action"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.xiaopeng.musicradio"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "BaseMediaController"

    const-string v2, "startXpMusic not found activity"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public enterApp(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "currentMediaPackage":Ljava/lang/String;
    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v0, "com.xiaopeng.musicradio"

    .line 99
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->startPackageByDisplay(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public abstract getTargetPackage()Ljava/lang/String;
.end method

.method public playbackControl(III)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "param"    # I

    .line 62
    const/4 v0, 0x1

    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->enterApp(I)V

    .line 64
    return v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->isTargetOnCurrentDisplay(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->enterApp(I)V

    .line 69
    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "position"    # J

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    .line 281
    .local v0, "transportControls":Landroid/media/session/MediaController$TransportControls;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 285
    .end local v0    # "transportControls":Landroid/media/session/MediaController$TransportControls;
    :cond_0
    return-void
.end method

.method public setFavorite(ZLjava/lang/String;)V
    .locals 0
    .param p1, "favorite"    # Z
    .param p2, "id"    # Ljava/lang/String;

    .line 90
    return-void
.end method

.method public switchSource(I)V
    .locals 0
    .param p1, "source"    # I

    .line 85
    return-void
.end method

.method public updateMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/BaseMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 58
    return-void
.end method
