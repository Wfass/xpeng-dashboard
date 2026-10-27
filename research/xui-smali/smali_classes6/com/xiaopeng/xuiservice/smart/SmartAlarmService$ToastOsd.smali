.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToastOsd"
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "channel_sr_warning"

.field private static final TAKEOVER_BRAKE:I = 0x1

.field private static final TAKEOVER_STEEL:I


# instance fields
.field private final context:Landroid/content/Context;

.field private manager:Landroid/app/NotificationManager;

.field private prevType:I

.field private status:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    .line 531
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->prevType:I

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->status:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;

    .line 525
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;

    .line 525
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->offVisibleView()V

    return-void
.end method

.method private getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 536
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getService()Landroid/app/NotificationManager;
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private declared-synchronized offVisibleView()V
    .locals 5

    monitor-enter p0

    .line 580
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->status:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->getService()Landroid/app/NotificationManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0xbb9

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 585
    const-string v1, "SmartAlarmService"

    const-string v2, "osd off"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->status:Z

    .line 587
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->prevType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offVisibleView failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    .end local v0    # "manager":Landroid/app/NotificationManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;
    throw v0
.end method


# virtual methods
.method public declared-synchronized onVisibleView(I)V
    .locals 11
    .param p1, "type"    # I

    monitor-enter p0

    .line 546
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->status:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->prevType:I

    if-eq v0, p1, :cond_4

    .line 547
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 548
    .local v2, "hasSteel":Z
    :goto_0
    if-eqz v2, :cond_2

    const v3, 0x7f0e00ac

    goto :goto_1

    :cond_2
    const v3, 0x7f0e00ab

    .line 549
    .local v3, "textId":I
    :goto_1
    if-eqz v2, :cond_3

    const-string v4, "sr_steeling"

    goto :goto_2

    :cond_3
    const-string v4, "sr_brake"

    .line 550
    .local v4, "name":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->getService()Landroid/app/NotificationManager;

    move-result-object v5

    .line 552
    .local v5, "manager":Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification$ViewStyle;

    invoke-direct {v6}, Landroid/app/Notification$ViewStyle;-><init>()V

    .line 553
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/app/Notification$ViewStyle;->setStyle(I)Landroid/app/Notification$ViewStyle;

    move-result-object v6

    const-string v8, "drawable"

    .line 554
    invoke-direct {p0, v4, v8}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "drawable-night"

    invoke-direct {p0, v4, v9}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$ViewStyle;->bigPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;

    move-result-object v6

    .line 556
    .local v6, "viewStyle":Landroid/app/Notification$ViewStyle;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    const-string v10, "channel_sr_warning"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    .local v8, "builder":Landroid/app/Notification$Builder;
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->context:Landroid/content/Context;

    .line 558
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, -0x1

    .line 559
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 560
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setMsgMajorPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v9, "default"

    .line 561
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setMajorType(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setViewStyle(Landroid/app/Notification$ViewStyle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v9, "warnCard"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v9, "channel_sr_warning"

    const-string v10, "sr_warning"

    invoke-direct {v0, v9, v10, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 569
    const/16 v0, 0xbb9

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 570
    const-string v0, "SmartAlarmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "osd on, type="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->status:Z

    .line 572
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;->prevType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    goto :goto_3

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SmartAlarmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onVisibleView failed, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "hasSteel":Z
    .end local v3    # "textId":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "manager":Landroid/app/NotificationManager;
    .end local v6    # "viewStyle":Landroid/app/Notification$ViewStyle;
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 545
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 545
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ToastOsd;
    throw p1
.end method
