.class public Lcom/xiaopeng/xuiservice/iot/IoTService;
.super Landroid/app/Service;
.source "IoTService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IoTService##"


# instance fields
.field private mIoTManagerService:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 59
    const-string v0, "dump IoTService##"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "opti":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 63
    aget-object v1, p3, v0

    .line 64
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 65
    goto :goto_3

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 68
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 70
    return-void

    .line 71
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

    .line 82
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

    .line 72
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_3
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 73
    aget-object v1, p3, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    if-eqz v1, :cond_4

    .line 77
    invoke-static {p2, v1, p3, v0}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 78
    return-void

    .line 84
    .end local v1    # "opt":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_0

    .line 85
    :cond_5
    :goto_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 29
    const-string v0, "IoTService##"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/IoTManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/IoTService;->mIoTManagerService:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    .line 33
    :try_start_0
    const-string v0, "IoTManagerService"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/IoTService;->mIoTManagerService:Lcom/xiaopeng/xuiservice/iot/IoTManagerService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IoTService##"

    const-string v2, "fail addService:IoTManagerService"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 42
    const-string v0, "IoTService##"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 49
    const/4 v0, 0x1

    return v0
.end method
