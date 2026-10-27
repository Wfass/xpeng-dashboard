.class public Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Landroid/app/NotificationManager$INtfCardStatusCallBack;


# static fields
.field public static final NOTIFICATION_STATE_BUTTON_ONE:I = 0x3

.field public static final NOTIFICATION_STATE_BUTTON_TWO:I = 0x6

.field public static final NOTIFICATION_STATE_HIDE:I = 0x4

.field public static final NOTIFICATION_STATE_LIVE:I = 0x5

.field public static final NOTIFICATION_STATE_REMOVE:I = 0x2

.field public static final NOTIFICATION_STATE_SHOWING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XUIService_NotificationController"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShowing:Z

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "XUIService_NotificationController"

    const-string v2, "XUIService_NotificationController"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->registerNotificationListener()V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mInstance:Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;

    return-object v0
.end method

.method private registerNotificationListener()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, p0}, Landroid/app/NotificationManager;->registerNtfCardStatusListener(Ljava/lang/String;Landroid/app/NotificationManager$INtfCardStatusCallBack;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onReceiveNtfCardStatus(Ljava/lang/String;JI)V
    .locals 3
    .param p1, "notificationArgs"    # Ljava/lang/String;
    .param p2, "notificationID"    # J
    .param p4, "status"    # I

    .line 97
    const-string v0, "XUIService_NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveNtfCardStatus notificationArgs\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notificationID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " status\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    long-to-int v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->shareEventCallback(ZLjava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mIsShowing:Z

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public sendShareConfirmEvent(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader;->getIconByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "icon":Landroid/graphics/Bitmap;
    const v1, 0x7f0e0082

    .line 68
    .local v1, "contentResId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 69
    const v1, 0x7f0e007a

    .line 71
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v4, "XUIService_NotificationController"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .local v2, "builder":Landroid/app/Notification$Builder;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setCallBackArgs(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0083

    .line 74
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTtsText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 77
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 78
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIconDiy(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSystemMsg(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v5, "default"

    .line 80
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Landroid/app/Notification$ViewStyle;

    invoke-direct {v5}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 81
    invoke-virtual {v5, v4}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f0e007b

    .line 82
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x4000000

    const/4 v9, 0x0

    invoke-static {v6, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v9, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 83
    const-string v3, "XUIService_NotificationController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendShareConfirmEvent packageName :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 85
    .local v3, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 86
    return-void
.end method
