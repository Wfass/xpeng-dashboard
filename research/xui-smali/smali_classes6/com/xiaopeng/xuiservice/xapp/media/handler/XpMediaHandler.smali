.class public Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;
.super Ljava/lang/Object;
.source "XpMediaHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;


# static fields
.field private static final ACTION_MEDIA_PLAY_LIST:Ljava/lang/String; = "com.xiaopeng.music_MEDIA_PLAY_LIST"

.field private static final EXTRA_COMMAND:Ljava/lang/String; = "command"

.field private static final EXTRA_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "XpMediaHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 26
    return-void
.end method

.method private startPackageByDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 50
    const-string v0, "XpMediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPackageByDisplay displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setPackageScreenId(Ljava/lang/String;I)Z

    .line 52
    return-void
.end method


# virtual methods
.method public enterApp(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;->startPackageByDisplay(I)V

    .line 42
    return-void
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "com.xiaopeng.musicradio"

    return-object v0
.end method

.method public mediaPlay(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "commandType"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/media/Callback;

    .line 30
    const-string v0, "XpMediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlay displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &commandType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.music_MEDIA_PLAY_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "displayId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "command"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method
