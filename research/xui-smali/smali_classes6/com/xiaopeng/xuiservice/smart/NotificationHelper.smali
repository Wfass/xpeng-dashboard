.class public final Lcom/xiaopeng/xuiservice/smart/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/NotificationHelper$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/NotificationHelper$OnNotificationListener;
    }
.end annotation


# static fields
.field private static final CARD_TYPE_CAR_EGG:I = 0x1c

.field private static final CHANNEL_ID:Ljava/lang/String; = "CarEgg Service"

.field public static final NOTIFY_ID_CAR_EGG:I = 0x101

.field private static final NOTIFY_ID_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"

.field private static final XP_CAR_EGG_LLU_INTENT:Ljava/lang/String; = "com.xiaopeng.intent.action.caregg.llu"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, "context":Landroid/content/Context;
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 42
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->createNotificationChannel(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;-><init>()V

    return-void
.end method

.method private createNotificationChannel(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const v0, 0x7f0e0108

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/CharSequence;
    const v1, 0x7f0e0107

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "description":Ljava/lang/String;
    const/4 v2, 0x3

    .line 71
    .local v2, "importance":I
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "CarEgg Service"

    invoke-direct {v3, v4, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 72
    .local v3, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/NotificationHelper;
    .locals 1

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/smart/NotificationHelper;

    move-result-object v0

    return-object v0
.end method

.method private registerBroadcastIfNeeded()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper$1;-><init>(Lcom/xiaopeng/xuiservice/smart/NotificationHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method


# virtual methods
.method public cancelInfoflowCard(I)V
    .locals 3
    .param p1, "id"    # I

    .line 98
    const-string v0, "NotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelInfoflowCard id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 100
    return-void
.end method

.method public dismissEggInfoCard()V
    .locals 1

    .line 111
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->cancelInfoflowCard(I)V

    .line 112
    return-void
.end method

.method public showEggInfoCard()V
    .locals 9

    .line 103
    nop

    .line 104
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0109

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.xiaopeng.intent.action.caregg.llu"

    .line 103
    const/16 v3, 0x1c

    const/16 v4, 0x101

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->showInfoCard(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public showInfoCard(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cardType"    # I
    .param p2, "cardId"    # I
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "jumpAction"    # Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "CarEgg Service"

    invoke-direct {v1, v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 85
    const v3, 0x7f0801c1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2, p4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 88
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 89
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDisplayFlag(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setClearFlag(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 92
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cardType"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cardJumpAction"

    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/NotificationHelper;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    return-void
.end method
