.class public final Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;,
        Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$ServiceImplHolder;
    }
.end annotation


# static fields
.field private static final INTERVAL_MS_OF_MAKE_UPDATE_LOG:I = 0xea60

.field private static final INTERVAL_MS_OF_OUTPUT_UPDATE_LOG:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "LocationService"

.field private static sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList; = null

.field private static volatile sLastMakeLogTime:J = -0x1L

.field private static volatile sLastTimeOutputUpdateLog:J = -0x1L

.field private static sUpdateLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasCreateNtf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sUpdateLogList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->mHasCreateNtf:Z

    return-void
.end method

.method static synthetic access$100(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->makeLocationUpdateLog(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sUpdateLogList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->checkAndOutputUpdateLog()V

    return-void
.end method

.method private static checkAndMakeUpdateLog(J)V
    .locals 4

    .line 192
    sget-wide v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastMakeLogTime:J

    sub-long v0, p0, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 196
    :cond_0
    sput-wide p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastMakeLogTime:J

    .line 197
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$1;-><init>(J)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkAndOutputUpdateLog()V
    .locals 6

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    sget-wide v2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastTimeOutputUpdateLog:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 212
    sput-wide v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastTimeOutputUpdateLog:J

    .line 215
    :cond_0
    sget-wide v2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastTimeOutputUpdateLog:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 216
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->checkAndMakeUpdateLog(J)V

    return-void

    .line 220
    :cond_1
    sput-wide v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastMakeLogTime:J

    .line 221
    sput-wide v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sLastTimeOutputUpdateLog:J

    .line 222
    new-instance v2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$2;

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$2;-><init>(J)V

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createNotificationIfNeed()V
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->mHasCreateNtf:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->createNotificationOnForeground()V

    :cond_1
    return-void
.end method

.method private createNotificationOnForeground()V
    .locals 4

    .line 66
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Xmart Location Service"

    const-string v2, "xp_location_service"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "notification"

    .line 72
    invoke-virtual {p0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 73
    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 76
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Location Service is running"

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "service"

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/lib/framework/locationmodule/R$mipmap;->location_service_ntf_icon:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->startForeground(ILandroid/app/Notification;)V

    .line 83
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->mHasCreateNtf:Z

    return-void
.end method

.method private getClientPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "client_pkg"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "unknown"

    :cond_1
    return-object p1
.end method

.method private getClientPid(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "client_pid"

    const/4 v1, -0x1

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private static makeLocationUpdateLog(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " update time: "

    .line 169
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "  subscribed clients (pid/pkg): [ "

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    sget-object p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->getSubscribedClientMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object p2, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->findBindingClientPkgName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " ]"

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onClientBind(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->getClientPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->getClientPid(Landroid/content/Intent;)I

    move-result p1

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget-object v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->onBind(ILjava/lang/String;)V

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocationService"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "onBind"

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->onClientBind(Landroid/content/Intent;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$ServiceImplHolder;->access$000()Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "LocationService"

    const-string v1, "LocationService is creating..."

    .line 90
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LocationService"

    const-string v1, "LocationService is onDestroy..."

    .line 146
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->clearSubscribedCallback()V

    .line 150
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const-string v0, "onRebind"

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->onClientBind(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "LocationService"

    const-string p2, "LocationService is onStartCommand..."

    .line 112
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->createNotificationIfNeed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 136
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->getClientPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->sCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->onUnbind(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationService is onUnbind --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
