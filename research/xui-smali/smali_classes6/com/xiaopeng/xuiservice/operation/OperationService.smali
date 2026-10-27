.class public Lcom/xiaopeng/xuiservice/operation/OperationService;
.super Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;
.source "OperationService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/OperationService$SingleInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OperationService"


# instance fields
.field private final mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;-><init>()V

    .line 37
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;

    const-string v1, "OperationService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationService$1;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationService$1;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/operation/OperationService;)Lcom/xiaopeng/xuiservice/operation/OperationHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationService;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    return-object v0
.end method

.method private cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 347
    return-void
.end method

.method private deleteOperationResource(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->deleteOperationResource(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 343
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/OperationService;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/OperationService$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationService;

    return-object v0
.end method

.method private pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 351
    return-void
.end method

.method private resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 355
    return-void
.end method

.method private selectOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->selectOperationResource(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private setAutoSync(IZZZ)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "doAdd"    # Z
    .param p3, "doUpdate"    # Z
    .param p4, "doDelete"    # Z

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setAutoSync(IZZZ)V

    .line 363
    return-void
.end method

.method private syncResource(IZZZ)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "doAdd"    # Z
    .param p3, "doUpdate"    # Z
    .param p4, "doDelete"    # Z

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->syncResource(IZZZ)V

    .line 367
    return-void
.end method

.method private unselectOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->unselectOperationResource(Ljava/lang/String;)V

    .line 339
    return-void
.end method


# virtual methods
.method public addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "rsc_name"    # Ljava/lang/String;
    .param p4, "rsc_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    const-string v5, ""

    const-string v6, "aidl_resource"

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public checkResourceExist(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "rsc_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public deleteResource(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "rsc_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public downloadResource(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 155
    .local v0, "pid":I
    const-string v1, "OperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadResource type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pendingIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "useSystemTraffic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 163
    .local v2, "useSystemTraffic":Z
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v3

    .line 164
    .local v3, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/xiaopeng/xuiservice/operation/OperationService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "useSystemTraffic":Z
    .end local v3    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 169
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 94
    return-void
.end method

.method public getDownLoadResourceList(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    const-string v0, ""

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 297
    .local v0, "pid":I
    const-string v1, "OperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7dde0723

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "get_download_status_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 306
    const-string v1, ""

    return-object v1

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getDownloadStatusList(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocalResourceList(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public getResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "OperationService"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 83
    const-string v0, "OperationService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onError(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    .line 326
    .local v1, "l":Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;->onError(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    goto :goto_1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OperationService"

    const-string v4, "notify onError"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 311
    const-string v0, "OperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

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

    check-cast v1, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    .line 315
    .local v1, "l":Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;->onEvent(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OperationService"

    const-string v4, "notify onEvent"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .end local v1    # "l":Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const-string v0, "OperationService"

    .line 64
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

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    .line 69
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    return v2

    .line 76
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "OperationService"

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

    .line 72
    const-string v4, "OperationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[\\t\\n\\r]"

    const-string v8, "##"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public operateResource(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 174
    .local v0, "pid":I
    const-string v1, "OperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operateResource cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "set_select_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_1
    const-string v1, "pause_download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "sync_resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "unselect_resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "cancel_download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "resume_download"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "download_resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "set_resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_8
    const-string v1, "set_auto_sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v1, "delete_resource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    .line 282
    :pswitch_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 283
    .local v1, "mode":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationHalService:Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    invoke-virtual {v2, p2, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->setSelectMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "mode":I
    goto/16 :goto_a

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OperationService"

    const-string v3, "SET_SELECT_MODE"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    goto/16 :goto_a

    .line 262
    :pswitch_1
    const/4 v1, 0x1

    .line 263
    .local v1, "doAdd":Z
    const/4 v2, 0x1

    .line 264
    .local v2, "doUpdate":Z
    move v4, v3

    .line 266
    .local v4, "doDelete":Z
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "doAdd"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v1, v6

    .line 268
    const-string v6, "doUpdate"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move v2, v6

    .line 269
    const-string v6, "doDelete"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v3

    .line 272
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_2

    .line 270
    :catch_1
    move-exception v3

    .line 273
    :goto_2
    const-string v3, "set_auto_sync"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-direct {p0, p2, v1, v2, v4}, Lcom/xiaopeng/xuiservice/operation/OperationService;->setAutoSync(IZZZ)V

    goto/16 :goto_a

    .line 276
    :cond_1
    invoke-direct {p0, p2, v1, v2, v4}, Lcom/xiaopeng/xuiservice/operation/OperationService;->syncResource(IZZZ)V

    .line 278
    goto/16 :goto_a

    .line 249
    .end local v1    # "doAdd":Z
    .end local v2    # "doUpdate":Z
    .end local v4    # "doDelete":Z
    :pswitch_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 253
    .local v2, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationService;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_3

    .line 254
    :catch_2
    move-exception v1

    .line 255
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_3
    goto/16 :goto_a

    .line 237
    :pswitch_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 241
    .restart local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationService;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_4

    .line 242
    :catch_3
    move-exception v1

    .line 243
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 244
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4
    goto/16 :goto_a

    .line 225
    :pswitch_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 227
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 229
    .restart local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationService;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_5

    .line 230
    :catch_4
    move-exception v1

    .line 231
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_5
    goto/16 :goto_a

    .line 219
    :pswitch_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/operation/OperationService;->deleteOperationResource(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 204
    :pswitch_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "useSystemTraffic"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 208
    .local v2, "useSystemTraffic":Z
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v3

    .line 209
    .local v3, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    const-string v4, "openAction"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 210
    .local v4, "openActionJson":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    const/4 v5, 0x0

    goto :goto_6

    :cond_2
    invoke-static {v4}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->json2OpenAction(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OpenAction;

    move-result-object v5

    .line 211
    .local v5, "openAction":Lcom/xiaopeng/xuimanager/operation/OpenAction;
    :goto_6
    invoke-direct {p0, v3, v2, v5}, Lcom/xiaopeng/xuiservice/operation/OperationService;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "useSystemTraffic":Z
    .end local v3    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v4    # "openActionJson":Lorg/json/JSONObject;
    .end local v5    # "openAction":Lcom/xiaopeng/xuimanager/operation/OpenAction;
    goto :goto_7

    .line 212
    :catch_5
    move-exception v1

    .line 213
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 214
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_7
    goto :goto_a

    .line 191
    :pswitch_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 195
    .local v2, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationService;->unselectOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_8

    .line 196
    :catch_6
    move-exception v1

    .line 197
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "OperationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unselectOperationResource failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 199
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_8
    goto :goto_a

    .line 178
    :pswitch_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 182
    .restart local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/operation/OperationService;->selectOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_9

    .line 183
    :catch_7
    move-exception v1

    .line 184
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "OperationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOperationResource failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_9
    nop

    .line 292
    :cond_3
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57c15fde -> :sswitch_9
        -0x5026b072 -> :sswitch_8
        -0x2a9ff8b5 -> :sswitch_7
        -0x1f64ba1b -> :sswitch_6
        -0x15e3eba6 -> :sswitch_5
        -0xd668b53 -> :sswitch_4
        0x23876838 -> :sswitch_3
        0x2b8f9932 -> :sswitch_2
        0x531428b1 -> :sswitch_1
        0x753112a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    .line 103
    const-string v0, "OperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 105
    return-void
.end method

.method public release()V
    .locals 0

    .line 89
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;

    .line 109
    const-string v0, "OperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService;->mOperationEventListener:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 111
    return-void
.end method
