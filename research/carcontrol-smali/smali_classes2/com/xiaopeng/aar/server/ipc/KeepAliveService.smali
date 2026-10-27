.class public Lcom/xiaopeng/aar/server/ipc/KeepAliveService;
.super Landroid/app/Service;
.source "KeepAliveService.java"


# static fields
.field private static final CRITICAL:Ljava/lang/String; = "Critical"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private buildForegroundNotification()Landroid/app/Notification;
    .locals 2

    .line 46
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "Critical"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "KeepAliveService"

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationChannel()V
    .locals 3

    .line 54
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Critical"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 56
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/aar/server/ipc/KeepAliveService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 57
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ipc/KeepAliveService;->createNotificationChannel()V

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/aar/server/ipc/KeepAliveService;->buildForegroundNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/aar/server/ipc/KeepAliveService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
