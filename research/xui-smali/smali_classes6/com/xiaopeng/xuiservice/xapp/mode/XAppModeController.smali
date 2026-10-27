.class public Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;
.super Ljava/lang/Object;
.source "XAppModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;
    }
.end annotation


# static fields
.field private static final GAME_CONTROL_TOUCH:Ljava/lang/String; = "touch"

.field private static final GAME_CONTROL_WHEEL:Ljava/lang/String; = "wheelSteering"

.field private static final KEY_GAME_CONTROL_WAY:Ljava/lang/String; = "key_sp_game_control_way"

.field private static final SHARE_APP_REAR_LOCK_DENIED:I = 0x33

.field private static final SHARE_APP_USER_DENIED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "XAppModeController"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mControlListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mActivityManager:Landroid/app/ActivityManager;

    .line 59
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 62
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->startAppOnScreen(ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;
    .locals 2

    .line 66
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    return-object v0

    .line 70
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getStartLimitMessage(II)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .param p2, "screenId"    # I

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "resId":I
    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 305
    :pswitch_0
    const v0, 0x7f0e0100

    goto :goto_1

    .line 302
    :pswitch_1
    const v0, 0x7f0e00f1

    .line 303
    goto :goto_1

    .line 287
    :cond_0
    const v0, 0x7f0e00ed

    .line 288
    goto :goto_1

    .line 291
    :cond_1
    if-nez p2, :cond_3

    .line 292
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 293
    const v0, 0x7f0e00ee

    goto :goto_1

    .line 295
    :cond_2
    const v0, 0x7f0e00f0

    goto :goto_1

    .line 297
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 298
    const v0, 0x7f0e00ef

    goto :goto_1

    .line 282
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isSupportRemoveGearLimit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 283
    const v1, 0x7f0e0102

    goto :goto_0

    .line 284
    :cond_5
    const v1, 0x7f0e0105

    :goto_0
    move v0, v1

    .line 285
    nop

    .line 308
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 309
    const/4 v1, 0x0

    return-object v1

    .line 311
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$shareEventCallback$0(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;)V
    .locals 5
    .param p1, "appInfo"    # Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    .line 256
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "transferEvent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 259
    const-string v1, "XAppModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareEventCallback, show share loading Dialog ,screenId 0, transfer Activity :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static synthetic lambda$shareEventCallback$1(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->startAppOnScreen(ILjava/lang/String;)V

    return-void
.end method

.method private notifyListeners(Z)V
    .locals 3
    .param p1, "useWheelSteering"    # Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    .line 140
    .local v2, "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;->onControlWayChanged(Z)V

    .line 141
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;
    goto :goto_0

    .line 142
    :cond_0
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showPrompt(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "screenId"    # I

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getStartLimitMessage(II)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    const-string v1, "XAppModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrompt msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, p2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 276
    :cond_0
    return-void
.end method

.method private startAppOnScreen(ILjava/lang/String;)V
    .locals 7
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    move-result-object v0

    .line 212
    .local v0, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "transferEvent"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p1, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 216
    const-string v2, "XAppModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleShareEvent, show share loading Dialog ,subScreenId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", transfer Activity :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v1    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 219
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    move-result-object v1

    .line 220
    .local v1, "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    const-string v2, "XAppModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleShareEvent, appListManager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getRunningApp()Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v2

    .line 223
    .local v2, "specialApp":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const-string v3, "XAppModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##startAppOnScreen, specialApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v2, :cond_1

    .line 225
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "screenId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 228
    const-string v4, "XAppModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShareEvent startApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 230
    :cond_1
    const-string v3, "XAppModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShareEvent specialApp null,pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v1    # "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    .end local v2    # "specialApp":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addControlChangedListener(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAppData(ILjava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->exitCurrentApp(ILjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public exitCurrentApp(ILjava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->goSharedDesktop(I)V

    .line 76
    return-void
.end method

.method public forceStopApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->closeApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public goAppHome(ILcom/xiaopeng/app/xpPackageInfo;)V
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 83
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    move-result-object v0

    .line 84
    .local v0, "appManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->goAppHome(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "ret":I
    if-eqz v1, :cond_0

    .line 87
    const-string v2, "XAppModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goAppHome failed ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "ret":I
    :cond_0
    return-void
.end method

.method public goBack(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 128
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(II)V

    .line 129
    return-void
.end method

.method public goBack(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "windowRect"    # Landroid/graphics/Rect;

    .line 120
    const-string v0, "XAppModeController"

    const-string v1, "goBack to do"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchTouchEvent(II)V

    .line 124
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 125
    return-void
.end method

.method public goHome()V
    .locals 4

    .line 102
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XAppModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goHome exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public goHome(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public goSharedDesktop(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->goSharedDesktop(I)V

    .line 94
    return-void
.end method

.method public handleShareEvent(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 177
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v0

    .line 178
    .local v0, "subScreenId":I
    if-nez p2, :cond_0

    .line 179
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 181
    .local v1, "targetScreenId":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartStatus(Ljava/lang/String;ZIZZ)I

    move-result v2

    .line 182
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 183
    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->showPrompt(II)V

    .line 184
    return-void

    .line 187
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setScreenOpened(I)I

    move-result v3

    .line 188
    .local v3, "openScreenResult":I
    if-nez v3, :cond_2

    .line 189
    const/16 v4, 0x33

    invoke-direct {p0, v4, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->showPrompt(II)V

    .line 190
    return-void

    .line 192
    :cond_2
    if-ne v1, v0, :cond_3

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showShareLoading(I)V

    .line 194
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;ILjava/lang/String;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 201
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->isInPGearLevel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    const-string v4, "XAppModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current is P gear level ,transfer to screenId ivi directly. packageName :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->shareEventCallback(ZLjava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->sendShareConfirmNotification(Ljava/lang/String;)V

    .line 208
    :goto_1
    return-void
.end method

.method public handleTransferConfirm(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I

    .line 315
    const-string v0, "XAppModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTransferConfirm intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", screenId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    if-eqz p1, :cond_0

    .line 317
    const-string v0, "transferEvent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 319
    const-string v0, "XAppModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTransferConfirm,show share loading Dialog ,screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", transfer Activity :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method public isWSControlEnable()Z
    .locals 3

    .line 149
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_sp_game_control_way"

    const-string v2, "touch"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "controlWay":Ljava/lang/String;
    const-string/jumbo v1, "wheelSteering"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 326
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 327
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method public removeControlChangedListener(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$GameControlListener;

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mControlListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendShareConfirmNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 240
    const-string v0, "XAppModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendShareConfirmNotification packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public setWSControlStatus(Z)V
    .locals 3
    .param p1, "useWheelSteering"    # Z

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->notifyListeners(Z)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_sp_game_control_way"

    .line 134
    if-eqz p1, :cond_0

    const-string/jumbo v2, "wheelSteering"

    goto :goto_0

    :cond_0
    const-string v2, "touch"

    .line 133
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public shareEventCallback(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isAllowedByUser"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 250
    const-string v0, "XAppModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareEventCallback : isAllowedByUser :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", packagename :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    move-result-object v0

    .line 253
    .local v0, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showShareLoading(I)V

    .line 255
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$Ffyff5FAQW2SyTNfDxi95e_UPYU;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$Ffyff5FAQW2SyTNfDxi95e_UPYU;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;

    invoke-direct {v2, p0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppModeController$3YbZi2HPdYhxMjOIHlVtd4d4aPo;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    .end local v0    # "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    :goto_0
    goto :goto_1

    .line 266
    :cond_1
    const/16 v0, 0x32

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->showPrompt(II)V

    .line 268
    :goto_1
    return-void
.end method
