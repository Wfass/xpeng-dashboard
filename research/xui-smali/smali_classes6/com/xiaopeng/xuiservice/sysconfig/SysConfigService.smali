.class public Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;
.super Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;
.source "SysConfigService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$SingleInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SysConfigService"


# instance fields
.field private final listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->worker:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    const-string v1, "SysConfigService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->worker:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->handleConfigUpdate(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method

.method private dispatchSysConfigUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$UTuwzGIWxeGxBzGxHvUBavcYHkc;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$UTuwzGIWxeGxBzGxHvUBavcYHkc;-><init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    return-object v0
.end method

.method private getRelativeFileName(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "resourceBaseDir"    # Ljava/io/File;

    .line 180
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "dirPath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleConfigUpdate(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 7
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, "time":J
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getTargetPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, "resourceBaseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/xuiservice/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v2, v3}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->updateConfig(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 138
    const-string v3, "SysConfigService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle sync finished. use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static synthetic lambda$dispatchSysConfigUpdate$1(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;

    .line 192
    .local v1, "listener":Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;
    :try_start_0
    const-string v2, "SysConfigService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSysConfigUpdate fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;->onSysConfigChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_1

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SysConfigService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSysConfigChanged, user listener crash, listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v1    # "listener":Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    const v1, 0x107d18

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setAutoSync(I)V

    .line 91
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;-><init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 112
    return-void
.end method

.method private updateConfig(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "resourceBaseDir"    # Ljava/io/File;
    .param p3, "targetDir"    # Ljava/io/File;

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->getRelativeFileName(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {p1}, Lcom/xiaopeng/util/xpSysConfigUtil;->getFileVersion(Ljava/io/File;)Lcom/xiaopeng/util/xpSysConfigUtil$Version;

    move-result-object v2

    .line 148
    .local v2, "resourceVersion":Lcom/xiaopeng/util/xpSysConfigUtil$Version;
    invoke-static {v1}, Lcom/xiaopeng/util/xpSysConfigUtil;->getFileVersion(Ljava/io/File;)Lcom/xiaopeng/util/xpSysConfigUtil$Version;

    move-result-object v3

    .line 150
    .local v3, "targetVersion":Lcom/xiaopeng/util/xpSysConfigUtil$Version;
    invoke-virtual {v2, v3}, Lcom/xiaopeng/util/xpSysConfigUtil$Version;->compareTo(Lcom/xiaopeng/util/xpSysConfigUtil$Version;)I

    move-result v4

    if-lez v4, :cond_0

    .line 151
    const-string v4, "SysConfigService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update sysconfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "(version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "(version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p1, v1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 155
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->dispatchSysConfigUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    const-string v4, "SysConfigService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore sysconfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "(version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "(version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v2    # "resourceVersion":Lcom/xiaopeng/util/xpSysConfigUtil$Version;
    .end local v3    # "targetVersion":Lcom/xiaopeng/util/xpSysConfigUtil$Version;
    :goto_0
    goto :goto_1

    .line 163
    :cond_1
    const-string v2, "SysConfigService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update sysconfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "(not exist)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p1, v1}, Lcom/xiaopeng/xuiservice/utils/SafeCopyFileUtil;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 166
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->dispatchSysConfigUpdate(Ljava/lang/String;)V

    .line 169
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "targetFile":Ljava/io/File;
    :goto_1
    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 172
    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 173
    .local v3, "f":Ljava/io/File;
    invoke-direct {p0, v3, p2, p3}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->updateConfig(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 172
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    .end local v0    # "files":[Ljava/io/File;
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 125
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "SysConfigService"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 87
    const-string v0, "SysConfigService"

    const-string v1, "init SysConfigService"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$MFC4tEFDe7RPorSyywzldQtauOU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$MFC4tEFDe7RPorSyywzldQtauOU;-><init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "SysConfigService"

    .line 65
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    .line 70
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 75
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    nop

    .line 78
    return v2

    .line 75
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "SysConfigService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public registerSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 55
    return-void
.end method

.method public release()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 120
    return-void
.end method

.method public unregisterSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->listenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 60
    return-void
.end method
