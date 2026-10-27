.class public Lcom/xiaopeng/musicradio/common/KeepLiveService;
.super Landroid/app/Service;
.source "KeepLiveService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 38
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "my_channel_01"

    const-string v2, "channel music service"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 42
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/common/KeepLiveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 44
    new-instance v0, Landroidx/core/app/h$c;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, ""

    .line 45
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x2800

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/common/KeepLiveService;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "KeepLiveService"

    const-string v1, "startForgroundInner: startforground"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "KeepLiveService"

    const-string v1, "startSerivce: ======"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/musicradio/common/KeepLiveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

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
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/KeepLiveService;->a()V

    const-string v0, "KeepLiveService"

    const-string v1, "onCreate: ======="

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const-string p1, "KeepLiveService"

    const-string p2, "onStartCommand ======="

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/KeepLiveService;->a()V

    const/4 p1, 0x1

    return p1
.end method
