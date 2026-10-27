.class public Lcom/xiaopeng/xuimanager/access/AccessAppManager;
.super Ljava/lang/Object;
.source "AccessAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/access/AccessAppManager$AccessAppManagerHolder;
    }
.end annotation


# static fields
.field public static final APP_PAGE_HEADER:Ljava/lang/String; = "XPENG.ACCESS@"

.field public static final MODULE_NAME:Ljava/lang/String; = "AccessManager"

.field private static final TAG:Ljava/lang/String; = "AccessAppManager"

.field private static final busServiceName:Ljava/lang/String; = "xuiAccess"

.field private static pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "xuiAccess"

    .line 33
    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->createBusClient(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "access"

    .line 35
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->addLogTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/access/AccessAppManager$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/access/AccessAppManager;
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuimanager/access/AccessAppManager$AccessAppManagerHolder;->access$100()Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeAllApp()I
    .locals 4

    .line 137
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "AccessManager"

    const-string v2, "closeAll"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    return v0
.end method

.method public closeForegroundRunningWebApp()I
    .locals 4

    .line 174
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "AccessManager"

    const-string v2, "stopForegroundWebApp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    return v0
.end method

.method public doVoiceCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .line 204
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    .line 205
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 206
    sget-object p1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string p2, "AccessManager"

    const-string p3, "doVoiceCommand"

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public getAppList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 50
    sget-object v1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v2, "AccessManager"

    const-string v3, "getAppList"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_3

    .line 53
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 59
    check-cast v4, Lcom/xiaopeng/app/xpAppInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    const-string v1, "getAppList,no valid data"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppList,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v4
.end method

.method public getForegroundRunningWebApp()Lcom/xiaopeng/app/xpAppInfo;
    .locals 5

    .line 150
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 151
    sget-object v1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v2, "AccessManager"

    const-string v3, "getForegroundWebApp"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    aget-object v0, v0, v1

    check-cast v0, Lcom/xiaopeng/app/xpAppInfo;

    move-object v4, v0

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    const-string v1, "getForegroundRunningWebApp,no data"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_2
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getForegroundRunningWebApp,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v4
.end method

.method public getRunningApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 111
    sget-object v1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v2, "AccessManager"

    const-string v3, "getRunningApps"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_3

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 120
    check-cast v4, Lcom/xiaopeng/app/xpAppInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_2

    .line 116
    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    const-string v1, "getRunningApps,no data"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRunningApps,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v4
.end method

.method public goToWebAppHome()I
    .locals 4

    .line 187
    sget-object v0, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "AccessManager"

    const-string v2, "goToWebAppHome"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0

    return v0
.end method

.method public startApp(Lcom/xiaopeng/app/xpAppInfo;)I
    .locals 4

    .line 76
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/app/xpAppInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 77
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 79
    sget-object p1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string v1, "AccessManager"

    const-string v2, "startApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public startAppWithParam(Lcom/xiaopeng/app/xpAppInfo;Ljava/lang/String;)I
    .locals 4

    .line 93
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/xiaopeng/app/xpAppInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 94
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    new-array p1, v1, [Ljava/lang/String;

    aput-object p2, p1, v3

    .line 95
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setStringArray([Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const-string p2, "AccessManager"

    const-string v1, "startAppWithParam"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method
