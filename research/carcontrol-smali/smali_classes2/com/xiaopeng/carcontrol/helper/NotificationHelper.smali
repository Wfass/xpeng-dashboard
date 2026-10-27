.class public final Lcom/xiaopeng/carcontrol/helper/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;,
        Lcom/xiaopeng/carcontrol/helper/NotificationHelper$SingleHolder;
    }
.end annotation


# static fields
.field private static final BIZTYPE:I = 0x23

.field private static final CHANNEL_ID:Ljava/lang/String; = "CarControl_channel_01"

.field private static final CHANNEL_ID_OSD:Ljava/lang/String; = "channel_id_osd"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "CarControl_channel_name"

.field public static final D21_SCENE_100_KM:I = 0x138d

.field public static final D21_SCENE_30_KM:I = 0x138a

.field public static final D21_SCENE_60_KM:I = 0x1389

.field public static final D21_SCENE_OUTSIDE_AIR_QUALITY:I = 0x1f42

.field public static final D21_SCENE_XFREE_BREATH:I = 0x1f41

.field private static final DEFAULT_MESSAGE_VALID_TIME:J = 0x1b7740L

.field public static final NOTIFY_ID_HVAC_AQ:I = 0x201

.field private static final NOTIFY_ID_INVALID:I = -0x1

.field public static final NOTIFY_ID_SHOW_EPB:I = 0x301

.field public static final NOTIFY_ID_SHOW_REMIND_WARNINGS:I = 0x401

.field public static final SCENE_100_KM:I = 0x88bb

.field public static final SCENE_30_KM:I = 0x88ba

.field public static final SCENE_60_KM:I = 0x88b9

.field public static final SCENE_CAPSULE_SLEEP_OVER_TIME:I = 0x410

.field public static final SCENE_CNGP_MAP_DOWNLOAD:I = 0x9d6

.field public static final SCENE_OUTSIDE_AIR_QUALITY:I = 0x88be

.field public static final SCENE_REMIND_WARNING:I = 0x8ca1

.field public static final SCENE_SMART_DRIVE_SCORE:I = 0x88c1

.field public static final SCENE_XFREE_BREATH:I = 0x88bc

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"

.field public static final TOAST_AIR_BED:Ljava/lang/String; = "airbed"

.field public static final TOAST_CAR_CONTROL_MODULE:Ljava/lang/String; = "c_c"

.field public static final TOAST_HVAC_MODULE:Ljava/lang/String; = "hvac"

.field public static final TOAST_SEAT_ADJUST:Ljava/lang/String; = "seat_adjust"

.field public static final TOAST_SEAT_MASSAGE_MODULE:Ljava/lang/String; = "seat_massage"


# instance fields
.field private final isSupportDualScreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mSharedIdMap:Ljava/util/Map;

    .line 102
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mHandler:Landroid/os/Handler;

    const-string v1, "notification"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 107
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->createNotificationChannel(Landroid/content/Context;)V

    const-string v0, "isSupportDualScreen"

    .line 108
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)Landroid/util/SparseArray;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->trimListeners(I)V

    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 554
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->channel_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->channel_description:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "CarControl_channel_01"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 558
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 562
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendMessageToMessageCenter$0(Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "callback",
            "content"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 189
    invoke-interface {p0, p1}, Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;->onCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showConfirmDialog$1(Lcom/xiaopeng/xui/app/XDialog;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialogView",
            "which"
        }
    .end annotation

    const/4 p1, 0x1

    .line 222
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    return p1
.end method

.method static synthetic lambda$showOsd$5(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "contentId",
            "sharedId",
            "iconId"
        }
    .end annotation

    .line 409
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic lambda$showToast$2(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 352
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic lambda$showToastLong$3(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    const/4 v0, 0x1

    .line 360
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic lambda$showToastLonger$4(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    const/4 v0, 0x2

    .line 368
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private registerBroadcastIfNeeded()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;-><init>(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 534
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/carcontrol/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static showOsd(Landroid/content/Context;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "titleId",
            "iconId",
            "contentId"
        }
    .end annotation

    const/4 v0, -0x1

    .line 373
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showOsd(Landroid/content/Context;IIII)V

    return-void
.end method

.method public static showOsd(Landroid/content/Context;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "titleId",
            "iconId",
            "contentId",
            "sharedId"
        }
    .end annotation

    .line 408
    new-instance p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;

    invoke-direct {p0, p3, p4, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;-><init>(III)V

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trimListeners(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 543
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 545
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 547
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancelInfoflowCard(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelInfoflowCard id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationHelper"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelNotificationByID(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 500
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 501
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public getSharedId(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleName"
        }
    .end annotation

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mSharedIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return v1

    .line 344
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public onScreenSwiped(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "sharedId"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mSharedIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "c_c"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mSharedIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "title",
            "subTitle",
            "promptTts",
            "wakeWords",
            "responseTts",
            "buttonTitle",
            "realTime",
            "validTime",
            "callback"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v12, p11

    .line 150
    invoke-virtual/range {v0 .. v12}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    return-void
.end method

.method public sendMessageToMessageCenter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scene",
            "title",
            "subTitle",
            "promptTts",
            "wakeWords",
            "responseTts",
            "buttonTitle",
            "realTime",
            "validTime",
            "permanent",
            "callback"
        }
    .end annotation

    move v0, p1

    move-object/from16 v1, p12

    .line 157
    invoke-static {}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->createContent()Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-result-object v2

    const/4 v3, 0x1

    .line 158
    invoke-virtual {v2, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->setType(I)V

    const-wide/16 v4, 0x0

    .line 159
    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->setValidTime(J)V

    move-object v6, p2

    .line 160
    invoke-virtual {v2, p2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->addTitle(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-object v6, p3

    .line 161
    invoke-virtual {v2, p3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->addTitle(Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    move-object v6, p4

    .line 162
    invoke-virtual {v2, p4}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->setTts(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p7

    .line 163
    invoke-static {v8, v6, v7}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    move-result-object v6

    .line 165
    invoke-virtual {v6, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->setSpeechResponse(Z)V

    move-object v7, p5

    .line 166
    invoke-virtual {v6, p5}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->setResponseWord(Ljava/lang/String;)V

    move-object v7, p6

    .line 167
    invoke-virtual {v6, p6}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->setResponseTTS(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v6}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->addButton(Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, p9, v4

    if-gtz v4, :cond_0

    const-wide/32 v4, 0x1b7740

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p9

    :goto_0
    add-long/2addr v4, v6

    if-nez p8, :cond_1

    .line 175
    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->setValidTime(J)V

    :cond_1
    if-eqz p11, :cond_2

    .line 178
    invoke-virtual {v2, v3}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;->setPermanent(I)V

    :cond_2
    const/16 v3, 0x23

    .line 180
    invoke-static {v3, v2}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->create(ILcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;)Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;

    move-result-object v2

    .line 181
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setScene(I)V

    .line 182
    invoke-virtual {v2, v6, v7}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidStartTs(J)V

    .line 183
    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;->setValidEndTs(J)V

    const-string v3, "isSupportIpcModule"

    .line 184
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;

    .line 186
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;->send(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$wN4Bv_bx_fCS-6W0RFOoG5jNZ4A;

    invoke-direct {v2, v1}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$wN4Bv_bx_fCS-6W0RFOoG5jNZ4A;-><init>(Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotification;->setOnNotificationCallback(Lcom/xiaopeng/lib/framework/moduleinterface/aiassistantmodule/notification/INotificationCallback;)V

    goto :goto_1

    .line 193
    :cond_3
    invoke-static {p1, v2, v1}, Lcom/xiaopeng/carcontrol/IpcRouterService;->sendMessageToMessageCenter(ILcom/xiaopeng/libconfig/ipc/bean/MessageCenterBean;Lcom/xiaopeng/carcontrol/IpcRouterService$ICallback;)V

    :goto_1
    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;I)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "sceneId",
            "countDownSceconds"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 216
    invoke-virtual {p1, p3, p4}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p5, p6}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/16 p2, 0x7d8

    .line 218
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 219
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 p2, 0x0

    .line 220
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 221
    sget-object p3, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;->INSTANCE:Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$ojUD4_6OFaipzZ10aFjMlMupUjw;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/app/XDialog;->setOnCountDownListener(Lcom/xiaopeng/xui/app/XDialogInterface$OnCountDownListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 225
    invoke-virtual {p1, p8, p2}, Lcom/xiaopeng/xui/app/XDialog;->show(II)V

    .line 226
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p7}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;Ljava/lang/String;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "negative",
            "negativeListener",
            "positive",
            "positiveListener",
            "sceneId"
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 201
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p3, p4}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p5, p6}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/16 p2, 0x7d8

    .line 204
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 205
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 207
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p7}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method public showInfoCard(ILcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "listener"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->registerBroadcastIfNeeded()V

    .line 430
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    .line 431
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "CarControl_channel_01"

    invoke-direct {p2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "My notification"

    .line 432
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const-string v0, "Much longer text that cannot fit one line..."

    .line 433
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 434
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cardType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cardId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    .line 427
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 421
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must not use -1 as your notification\'s id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showInfoCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cardType",
            "ticker",
            "title",
            "content",
            "jumpAction",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "CarControl_channel_01"

    invoke-direct {v1, v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_launcher:I

    .line 571
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 573
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 574
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/16 p3, 0x20

    .line 575
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 576
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setClearFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 577
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 578
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cardType"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cardJumpAction"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 580
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 581
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 582
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showPicNotificationCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "content",
            "actionName",
            "pendingIntent",
            "drawableId"
        }
    .end annotation

    .line 481
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 482
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "CarControl_channel_01"

    const-string v3, "CarControl_channel_name"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 485
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 486
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 487
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 489
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_card_car_control:I

    .line 490
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string p3, "default"

    .line 491
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$ViewStyle;

    invoke-direct {p3}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 492
    invoke-virtual {p3, v4}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p3, p6}, Landroid/app/Notification$ViewStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 493
    invoke-virtual {p2, p3, p4, p5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 494
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 495
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 496
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showSelfCheckCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "title",
            "content",
            "extraData"
        }
    .end annotation

    .line 590
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "CarControl_channel_01"

    invoke-direct {v1, v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_launcher:I

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 595
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/16 p3, 0x20

    .line 596
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 597
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 598
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "cardType"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "extraData"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "showSelfCheckCard extraData="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationHelper"

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 601
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showStandardNotificationCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "content",
            "actionName",
            "pendingIntent"
        }
    .end annotation

    .line 441
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 442
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "CarControl_channel_01"

    const-string v3, "CarControl_channel_name"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 443
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 445
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 446
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 447
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 448
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, -0x1

    .line 449
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string p3, "default"

    .line 450
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 451
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v1, Landroid/app/Notification$ViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 452
    invoke-virtual {v1, p3}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 453
    invoke-virtual {p2, p3, p4, p5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 454
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 455
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showStandardNotificationCardWithTts(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "content",
            "tts",
            "actionName",
            "pendingIntent"
        }
    .end annotation

    .line 459
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 460
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "CarControl_channel_01"

    const-string v3, "CarControl_channel_name"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 463
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0x20

    .line 464
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 466
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p4, 0x1

    .line 467
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setTtsOpen(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 468
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, -0x1

    .line 469
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string p3, "default"

    .line 470
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 471
    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$ViewStyle;

    invoke-direct {p3}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 472
    invoke-virtual {p3, p4}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 473
    invoke-virtual {p2, p3, p5, p6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 474
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 475
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showToast(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgResId"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "c_c"

    .line 240
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZLjava/lang/String;)V

    return-void
.end method

.method public showToast(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "screenId"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public showToast(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 244
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZLjava/lang/String;)V

    return-void
.end method

.method public showToast(IZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 248
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "c_c"

    .line 256
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$db_MzNlFofaq_Oh54frfh54lRAI;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$db_MzNlFofaq_Oh54frfh54lRAI;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 260
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 264
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 265
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public showToastLong(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgResId"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "c_c"

    .line 272
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(IZLjava/lang/String;)V

    return-void
.end method

.method public showToastLong(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "screenId"
        }
    .end annotation

    .line 356
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(Ljava/lang/String;I)V

    return-void
.end method

.method public showToastLong(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(IZLjava/lang/String;)V

    return-void
.end method

.method public showToastLong(IZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(II)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(II)V

    :goto_0
    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "c_c"

    .line 288
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showToastLong(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToastLong(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showToastLong(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 296
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLong(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public showToastLonger(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgResId"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "c_c"

    .line 304
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(IZLjava/lang/String;)V

    return-void
.end method

.method public showToastLonger(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "screenId"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(Ljava/lang/String;I)V

    return-void
.end method

.method public showToastLonger(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 308
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(IZLjava/lang/String;)V

    return-void
.end method

.method public showToastLonger(IZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msgResId",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 312
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(II)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(II)V

    :goto_0
    return-void
.end method

.method public showToastLonger(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(Ljava/lang/String;Z)V

    return-void
.end method

.method public showToastLonger(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "screenId"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$-XzPDS_l5kW4EeDOSdxr_kfGxqI;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$-XzPDS_l5kW4EeDOSdxr_kfGxqI;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToastLonger(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId"
        }
    .end annotation

    const-string v0, "c_c"

    .line 324
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public showToastLonger(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "showByScreenId",
            "moduleName"
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->isSupportDualScreen:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 329
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getSharedId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToastLonger(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
