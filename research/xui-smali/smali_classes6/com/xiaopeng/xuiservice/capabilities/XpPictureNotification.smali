.class public Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
.super Ljava/lang/Object;
.source "XpPictureNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;,
        Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;,
        Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "XpPictureNotification"


# instance fields
.field private NOTIFICATION_ID:I

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0xea

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->NOTIFICATION_ID:I

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$1;

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
    .locals 2

    .line 32
    const-string v0, "XpPictureNotification"

    const-string v1, "XpPictureNotification getInstance() called"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateBigPictureStyleNotification(I)V
    .locals 10
    .param p1, "vId"    # I

    .line 41
    const-string v0, "XpPictureNotification"

    const-string v1, "generateBigPictureStyleNotification()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 43
    const-string v0, "XpPictureNotification"

    const-string v1, ">= android.os.Build.VERSION_CODES.O"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "my_channel_01"

    .line 45
    .local v0, "CHANNEL_ID":Ljava/lang/String;
    const-string v1, "my_channel"

    .line 46
    .local v1, "name":Ljava/lang/CharSequence;
    const-string v2, "This is my channel"

    .line 47
    .local v2, "Description":Ljava/lang/String;
    const/4 v3, 0x4

    .line 48
    .local v3, "importance":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 49
    .local v4, "packageContext":Landroid/content/Context;
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v0, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 50
    .local v5, "mChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 51
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 52
    const/high16 v7, -0x10000

    invoke-virtual {v5, v7}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 53
    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 54
    const/16 v6, 0x9

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 55
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 56
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 58
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v7, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;->bigPicMap:Ljava/util/HashMap;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->getmBigContentTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;->bigPicMap:Ljava/util/HashMap;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->getmContentText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 61
    const v7, 0x7f08009e

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v8, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 64
    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v7

    .line 63
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 68
    .local v6, "notif":Landroid/app/Notification;
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;->NOTIFICATION_ID:I

    invoke-virtual {v7, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    .end local v0    # "CHANNEL_ID":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v2    # "Description":Ljava/lang/String;
    .end local v3    # "importance":I
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v5    # "mChannel":Landroid/app/NotificationChannel;
    .end local v6    # "notif":Landroid/app/Notification;
    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method
