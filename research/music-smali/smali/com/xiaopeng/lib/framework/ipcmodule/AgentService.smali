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

    return-void

    :cond_0
    const-string v0, "AgentService"

    const-string v1, "startNotification"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "XPENG"

    const-string v3, "IPC"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 56
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 57
    new-instance v2, Landroidx/core/app/h$c;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lcom/xiaopeng/lib/framework/ipcmodule/R$mipmap;->icon_notification:I

    .line 58
    invoke-virtual {v2, v0}, Landroidx/core/app/h$c;->a(I)Landroidx/core/app/h$c;

    move-result-object v0

    const-string v2, "Xmart"

    .line 59
    invoke-virtual {v0, v2}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v0

    const-string v2, "IPC application is running"

    .line 60
    invoke-virtual {v0, v2}, Landroidx/core/app/h$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->b(I)Landroidx/core/app/h$c;

    move-result-object v0

    const-string v1, "service"

    .line 62
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->a(Ljava/lang/String;)Landroidx/core/app/h$c;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x64

    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->startForeground(ILandroid/app/Notification;)V

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

    const-string v0, "AgentService"

    const-string v1, "onCreate"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/ipcmodule/AgentService;->startNotification()V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tflgs:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->getInstance()Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcServiceImpl;->init()V

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
