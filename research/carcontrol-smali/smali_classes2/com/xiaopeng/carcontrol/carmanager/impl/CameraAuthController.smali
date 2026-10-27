.class public Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "CameraAuthController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/scu/CarScuManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraAuthController"


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setCameraAuthDate()V

    return-void
.end method

.method private createNotification()V
    .locals 5

    .line 242
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "xp_carcontrol_camera_auth_time_st"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 244
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 245
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->about_safe_privacy_authorization_content:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/xiaopeng/xvs/xid/utils/ResourceUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$AG7-npADTP2DsyEuENHBCtESAeg;

    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$AG7-npADTP2DsyEuENHBCtESAeg;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCameraAuthDistanceDays()J
    .locals 7

    .line 230
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_carcontrol_camera_auth_time_st"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--currentTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraAuthController"

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 233
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraAuthDistanceDays: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    int-to-long v0, v0

    return-wide v0
.end method

.method private getSettingsAuthState()I
    .locals 5

    const-string v0, "getCameraAuthState: "

    const-string v1, "CameraAuthController"

    const/4 v2, 0x0

    .line 181
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "xp_carcontrol_camera_auth_st"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    .line 185
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method private initCameraAuth()V
    .locals 7

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->getCameraAuthState()I

    move-result v0

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->getCameraAuthDistanceDays()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setFunctionOff()V

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1e

    cmp-long v0, v1, v5

    const-wide/16 v5, 0xf

    if-gtz v0, :cond_2

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    const-string/jumbo v0, "xp_carcontrol_camera_auth_first_count_st"

    .line 85
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->isCameraAuthCountState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->createNotification()V

    .line 88
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setCameraAuthCountState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    cmp-long v0, v1, v5

    const-wide/16 v5, 0x7

    if-gtz v0, :cond_3

    cmp-long v0, v1, v5

    if-lez v0, :cond_3

    const-string/jumbo v0, "xp_carcontrol_camera_auth_second_count_st"

    .line 89
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->isCameraAuthCountState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->createNotification()V

    .line 92
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setCameraAuthCountState(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    cmp-long v0, v1, v5

    const-wide/16 v5, 0x0

    if-gtz v0, :cond_4

    cmp-long v0, v1, v5

    if-ltz v0, :cond_4

    const-string/jumbo v0, "xp_carcontrol_camera_auth_third_count_st"

    .line 93
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->isCameraAuthCountState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->createNotification()V

    .line 96
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setCameraAuthCountState(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    cmp-long v0, v1, v5

    if-gez v0, :cond_5

    .line 99
    invoke-virtual {p0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setCameraAuthState(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private initObserver()V
    .locals 5

    const-string v0, "isSupportCameraAuthorize"

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_carcontrol_camera_auth_st"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;

    const/4 v3, 0x0

    .line 114
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;Landroid/os/Handler;)V

    .line 113
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private isCameraAuthCountState(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraAuthCountState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CameraAuthController"

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method static synthetic lambda$createNotification$2(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "content"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->about_safe_privacy_authorization_title:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/xiaopeng/xvs/xid/utils/ResourceUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->about_safe_privacy_authorization_again_title:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/xiaopeng/xvs/xid/utils/ResourceUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/carcontrol/CarControlService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.xiaopeng.carcontrol.intent.action.ACTION_CAMERA_AUTH_NOTIFY"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-static {v1, v2, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/16 v1, 0x68

    move-object v2, v3

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showStandardNotificationCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private setCameraAuthCountState(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 209
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setCameraAuthDate()V
    .locals 6

    .line 216
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 220
    invoke-virtual {v2, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 221
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCameraAuthDate: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAuthController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_carcontrol_camera_auth_time_st"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private setFunctionOff()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->mCarManager:Landroid/car/CarManagerBase;

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "xp_carcontrol_camera_auth_st"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "isSupportDsmCamera"

    .line 170
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$cioGDxMu6lYaavKatSK1ANO4LZg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$cioGDxMu6lYaavKatSK1ANO4LZg;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected disconnect()V
    .locals 0

    return-void
.end method

.method public getCameraAuthState()I
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->getSettingsAuthState()I

    move-result v0

    return v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "xp_scu"

    .line 44
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->mCarManager:Landroid/car/CarManagerBase;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->initObserver()V

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->initCameraAuth()V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "CameraAuthController"

    .line 48
    invoke-static {v2, v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$setDsmSw$0$CameraAuthController(ZLjava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "on",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p2, Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {p2, p1}, Landroid/car/hardware/scu/CarScuManager;->setDsmStatus(I)V

    return-void
.end method

.method public synthetic lambda$setFunctionOff$1$CameraAuthController(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->mCarManager:Landroid/car/CarManagerBase;

    check-cast p1, Landroid/car/hardware/scu/CarScuManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/car/hardware/scu/CarScuManager;->setDsmStatus(I)V

    return-void
.end method

.method public setCameraAuthState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraAuthState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAuthController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "isSupportCameraAuthorize"

    .line 135
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_carcontrol_camera_auth_st"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setDsmSw(Z)V

    :cond_0
    return-void
.end method

.method public setCameraAuthState(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "param"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraAuthState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", param: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraAuthController"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setFunctionOff()V

    return-void
.end method

.method public setDsmSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsmSw: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAuthController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->mCarManager:Landroid/car/CarManagerBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "isSupportDsmCamera"

    .line 155
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$VpPfZy3VPHgcqu-r8UTe31TWHOc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CameraAuthController$VpPfZy3VPHgcqu-r8UTe31TWHOc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->setValue(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;)V

    :cond_1
    return-void
.end method
