.class public Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;
.super Landroid/app/Service;
.source "AgentService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "XPENG"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "IPC"

.field private static final CONTENT:Ljava/lang/String; = "IPC application is running"

.field private static final TAG:Ljava/lang/String; = "AgentService"

.field private static final TITLE:Ljava/lang/String; = "Xmart"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private startNotification()V
    .locals 4

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const-string v0, "AgentService"

    const-string v1, "startNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "XPENG"

    const-string v2, "IPC"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 57
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lcom/xiaopeng/lib/framework/ipcmodule/R$mipmap;->icon_notification:I

    .line 58
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "Xmart"

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "IPC application is running"

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "service"

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 64
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->startForeground(ILandroid/app/Notification;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 34
    const-string v0, "AgentService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->startNotification()V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 41
    const-string v0, "AgentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tflgs:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->getInstance()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->init()V

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
