.class public Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;
.super Landroid/app/Service;
.source "OpenCarService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCarService"

.field private static mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 78
    const-string v0, "dump OpenCarService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "opti":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 82
    aget-object v1, p3, v0

    .line 83
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 84
    goto :goto_3

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 87
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 89
    return-void

    .line 90
    :cond_1
    const-string v2, "-m"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "-module"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "opt":Ljava/lang/String;
    goto :goto_2

    .line 91
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_3
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 92
    aget-object v1, p3, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    if-eqz v1, :cond_4

    .line 96
    invoke-static {p2, v1, p3, v0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 97
    return-void

    .line 103
    .end local v1    # "opt":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_0

    .line 104
    :cond_5
    :goto_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    const-string v0, "OpenCarService"

    const-string v1, "on bind enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    monitor-enter v0

    .line 66
    :try_start_0
    const-class v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "OpenCarService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on bind wait,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 72
    :cond_0
    :goto_2
    const-string v0, "OpenCarService"

    const-string v1, "on bind,service ready"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 31
    const-string v0, "OpenCarService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    const-string v1, "OpenCarManager"

    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;->mOpenCarManagerService:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OpenCarService"

    const-string v3, "fail addService:OpenCarManager"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 50
    const-string v0, "OpenCarService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 57
    const/4 v0, 0x1

    return v0
.end method
