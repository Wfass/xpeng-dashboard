.class public Lcom/xiaopeng/xuimanager/operation/OperationManager;
.super Ljava/lang/Object;
.source "OperationManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/operation/OperationManager$ServiceEventListener;,
        Lcom/xiaopeng/xuimanager/operation/OperationManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/operation/OperationManager$OperationManagerHolder;
    }
.end annotation


# static fields
.field public static final COMMON_RESOURCE_PATH:Ljava/lang/String; = "/data/operation/common/"

.field private static final MSG_WHAT_OPERATION_EVENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "OperationManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

.field private final registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    new-instance v1, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;)V

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p2, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/operation/OperationManager$1;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;)V

    invoke-direct {p2, v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;-><init>(Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    .line 102
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    .line 103
    new-instance p1, Lcom/xiaopeng/xuimanager/operation/OperationManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/operation/OperationManager$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/operation/OperationManager;)Lcom/xiaopeng/xuimanager/operation/IOperation;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/operation/OperationManager;IILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->dispatchEvent(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/operation/OperationManager;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->handleOperationErrorEvent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/operation/OperationManager;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->handleOperationEvent(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private dispatchEvent(IILjava/lang/String;)V
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEvent code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "OperationManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->getListeners(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 577
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 631
    :pswitch_0
    invoke-static {v0, p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadError(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 633
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onDownloadError(ILcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    goto/16 :goto_0

    .line 627
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onDownloadCancel(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto/16 :goto_0

    .line 623
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onDownloadPaused(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto/16 :goto_0

    .line 616
    :pswitch_3
    invoke-static {v0, p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 618
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onDownloadInProgress(ILcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    goto :goto_0

    .line 612
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onDownloadStart(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 604
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->getQueryRemoteError(ILjava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onRemoteSourceQueryFailed(II)V

    goto :goto_0

    .line 596
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationSourceSelectionChanged(I)V

    goto :goto_0

    .line 584
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationResourceUpdated(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 608
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->json2SyncResult(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationResourceSyncCompleted(ILcom/xiaopeng/xuimanager/operation/OperationSyncResult;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationSourceDelete(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onRemoteSourceQuerySuccess(ILjava/util/List;)V

    goto :goto_0

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationSourceExpire(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 580
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->onOperationSourceAdd(ILcom/xiaopeng/xuimanager/operation/OperationResource;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateGetResourceParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "xui_get_from"

    .line 311
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 314
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 322
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/operation/OperationManager;
    .locals 1

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/OperationManager$OperationManagerHolder;->access$200()Lcom/xiaopeng/xuimanager/operation/OperationManager;

    move-result-object v0

    return-object v0
.end method

.method private handleOperationErrorEvent(II)V
    .locals 0

    return-void
.end method

.method private handleOperationEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 567
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static syncParamJson(ZZZ)Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "doAdd"

    .line 265
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "doUpdate"

    .line 266
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "doDelete"

    .line 267
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "addNewResource"

    .line 446
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/IOperation;->addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 450
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addNewResource failed:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v1, p3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public cancelDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "cancel_download"

    .line 206
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 207
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    const-string v1, "cancelDownload"

    .line 208
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkResourceExist(ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "checkResourceExist"

    .line 499
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->checkResourceExist(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResourceExist failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public deleteResource(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "deleteResource"

    .line 519
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->deleteResource(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 523
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteResource failed:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v1, p3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public deleteResource(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "deleteResource"

    .line 534
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const-string v1, "delete_resource"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public downloadResource(ZLcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->downloadResource(ZLcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuimanager/operation/OpenAction;)V

    return-void
.end method

.method public downloadResource(ZLcom/xiaopeng/xuimanager/operation/OperationResource;Lcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "download_resource"

    .line 191
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 192
    invoke-static {p2, p1, p3}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJsonWithDownloadParams(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "OperationManager"

    const-string p3, "downloadResource"

    .line 193
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDownLoadResourceList(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "getDownLoadResourceList"

    .line 480
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getDownLoadResourceList(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownLoadResourceList failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getDownloadStatusList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "get_download_status_list"

    .line 423
    invoke-interface {v0, v2, p1, v1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadStatusList result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 429
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 432
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toDownloadStatusList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLocalResourceList(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    const-string v2, "getLocalResourceList"

    .line 463
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getLocalResourceList(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalResourceList failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRemoteResourceList(I)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->getRemoteResourceList(ILjava/util/Map;)V

    return-void
.end method

.method public getRemoteResourceList(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "get_remote"

    .line 300
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->generateGetResourceParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getResource(ILjava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x1

    const-string v0, "OperationManager"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteResourceList with type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getResourceList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const-string v1, ""

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 329
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->generateGetResourceParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceList result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 335
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedResource(I)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    :try_start_0
    const-string v3, "get_selected"

    .line 360
    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->generateGetResourceParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSelectedResource result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 363
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 367
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 368
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public getSelectedResourceList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "get_selected_list"

    const/4 v3, 0x0

    .line 347
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->generateGetResourceParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourceList result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 353
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 153
    sget-object v0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mServiceName:Ljava/lang/String;

    .line 156
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    .line 91
    new-instance p1, Lcom/xiaopeng/xuimanager/operation/OperationManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/operation/OperationManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/operation/OperationManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "OperationManager"

    const-string v2, "onServerDisconnected"

    .line 108
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "OperationManager"

    const-string v2, "onXUIConnected"

    .line 126
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 128
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/operation/IOperation;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->connect()V

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "OperationManager"

    const-string v2, "onXUIDisconnected"

    .line 117
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->disconnect()V

    return-void
.end method

.method public pauseDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "pause_download"

    .line 218
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 219
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    const-string v1, "pauseDownload"

    .line 220
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerListener(ILcom/xiaopeng/xuimanager/operation/IOperationListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->register(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeDownload(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "resume_download"

    .line 230
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 231
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    const-string v0, "OperationManager"

    const-string v1, "resumeDownload"

    .line 232
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public selectResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "set_resource"

    .line 398
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 399
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 402
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAutoSync(I)V
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->setAutoSync(IZZZ)V

    return-void
.end method

.method public setAutoSync(IZZZ)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "set_auto_sync"

    .line 254
    invoke-static {p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->syncParamJson(ZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    const-string p3, "OperationManager"

    .line 255
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAutoSync: type="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSelectMode(II)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid select mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "set_select_mode"

    .line 387
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "OperationManager"

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSelectMode: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", mode="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 390
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 145
    sput-object p1, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public showDownloadResourceDetail(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public syncResource(I)V
    .locals 1

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->syncResource(IZZZ)V

    return-void
.end method

.method public syncResource(IZZZ)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "sync_resource"

    .line 281
    invoke-static {p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/OperationManager;->syncParamJson(ZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    const-string p3, "OperationManager"

    .line 282
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncResource: type="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterListener(ILcom/xiaopeng/xuimanager/operation/IOperationListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->registerAndNotify:Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/operation/utils/OperationListenerRegisterAndNotify;->unregister(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public unselectResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/OperationManager;->mOperationService:Lcom/xiaopeng/xuimanager/operation/IOperation;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "unselect_resource"

    .line 410
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v2

    .line 411
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "OperationManager"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unselectResource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
