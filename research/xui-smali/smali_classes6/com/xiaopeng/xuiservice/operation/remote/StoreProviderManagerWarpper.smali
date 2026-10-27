.class public Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;
.super Ljava/lang/Object;
.source "StoreProviderManagerWarpper.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ActivityQueryResult;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SingletonHolder;,
        Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    }
.end annotation


# static fields
.field private static final KEY_OPERATION_RESOURCE:Ljava/lang/String; = "key_operation_resource"

.field private static final TAG:Ljava/lang/String; = "StoreProviderManagerWarpper"

.field private static final TASK_KEY:Ljava/lang/String; = "com.xiaopeng.xuiservice"

.field private static final USE_NEW_ASYNC_API:Z = true


# instance fields
.field private final mStoreProviderDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    .line 80
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->initialize(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    .line 61
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->toSparseArray(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private static activityQueryBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 762
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 763
    .local v0, "param":Lorg/json/JSONObject;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 765
    .end local v0    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static activitySaveMultipleBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 637
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 638
    .local v0, "row":Lorg/json/JSONObject;
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    :cond_0
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 645
    .local v1, "rows":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 646
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 647
    .local v2, "param":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 649
    .end local v0    # "row":Lorg/json/JSONObject;
    .end local v1    # "rows":Lorg/json/JSONArray;
    .end local v2    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static activitySaveSingleBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 704
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 705
    .local v0, "param":Lorg/json/JSONObject;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 711
    .end local v0    # "param":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static downloadedFilePath(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "assembleInfo"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 500
    const-string v0, "extra_key_params_file_path_out"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;
    .locals 1

    .line 84
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SingletonHolder;->instance:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    return-object v0
.end method

.method private getDownloadFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 329
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 330
    .local v0, "assembleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 332
    .local v2, "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->downloadedFilePath(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 335
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    return-object v4

    .line 341
    .end local v2    # "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 343
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDownloadStatusInfo(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .param p2, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 521
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;-><init>()V

    .line 523
    .local v0, "downloadStatusInfo":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceId(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceType(I)V

    .line 525
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setResourceName(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setProgress(F)V

    .line 528
    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setState(I)V

    .line 529
    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 531
    return-object v0
.end method

.method private static getDownloadUrl(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;
    .locals 1
    .param p0, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 306
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->isUseEncryption(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->toEncryptedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0
.end method

.method private static hasEncryptedFile(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z
    .locals 3
    .param p0, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 297
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "has_encrypted_file"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 299
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 302
    return v0
.end method

.method private static isUseEncryption(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z
    .locals 2
    .param p0, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 290
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->isEnableEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getEncryptedByType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->hasEncryptedFile(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0
.end method

.method private static jsonString2OperationResource(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;

    .line 513
    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonString2OperationResource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    return-object v0
.end method

.method static synthetic lambda$activityQuery$9(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 787
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "respBody":Ljava/lang/String;
    const-string v1, "StoreProviderManagerWarpper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xui/v1/config/query: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "respBody":Ljava/lang/String;
    goto :goto_1

    .line 789
    :cond_1
    :goto_0
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/insertOrUpdatel, resp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 796
    return-void
.end method

.method static synthetic lambda$activitySaveMultiple$7(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 3
    .param p0, "saveResult"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;
    .param p1, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 671
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;->success:Z

    goto :goto_1

    .line 673
    :cond_1
    :goto_0
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/saveAll, resp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 679
    return-void
.end method

.method static synthetic lambda$activitySaveSingle$8(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 3
    .param p0, "saveResult"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;
    .param p1, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 729
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;->success:Z

    goto :goto_1

    .line 731
    :cond_1
    :goto_0
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/insertOrUpdate, resp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 737
    return-void
.end method

.method static synthetic lambda$appListOperationQuery$3(I)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .locals 1
    .param p0, "groupType"    # I

    .line 540
    invoke-static {p0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->newBuilder(I)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$appListOperationQuery$4(I)[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .locals 1
    .param p0, "x$0"    # I

    .line 541
    new-array v0, p0, [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    return-object v0
.end method

.method static synthetic lambda$fetchPreLoadApps$0(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 2
    .param p0, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;
    .param p1, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 123
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;->onCompleted(ZLjava/lang/String;)V

    .line 132
    return-void

    .line 124
    :cond_1
    :goto_0
    const-string v0, "StoreProviderManagerWarpper"

    const-string v1, "fetchPreLoadApps resp is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;->onCompleted(ZLjava/lang/String;)V

    .line 127
    return-void
.end method

.method public static synthetic lambda$notifyOnDownloadCompleted$2(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;Ljava/lang/String;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 449
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/KmsUtil;->getDecryptedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".decrypted.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "decryptedFilePath":Ljava/lang/String;
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuiservice/operation/remote/DecryptUtil;->decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decrypt success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 456
    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadCompleted0(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "decryptedFilePath":Ljava/lang/String;
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "StoreProviderManagerWarpper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt file error, resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 461
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method static synthetic lambda$queryOperationApps_old$5(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)V
    .locals 1
    .param p0, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;
    .param p1, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    .line 561
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->toSparseArray(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;->onCallback(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic lambda$queryResource_new$1(ILjava/util/Map;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;Ljava/util/concurrent/CountDownLatch;Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "params"    # Ljava/util/Map;
    .param p2, "resourceResult"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;
    .param p3, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .line 164
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p4}, Lcom/xiaopeng/xuiservice/operation/remote/Parser;->parseQueryResponse(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v0

    .line 171
    .local v0, "respObj":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    const-string v1, "StoreProviderManagerWarpper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query remote resource success, respObj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iput-object v0, p2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;->resourceContainer:Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    .end local v0    # "respObj":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query remote resource fail, resp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_1
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 175
    return-void
.end method

.method static synthetic lambda$toSparseArray$6(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .locals 1
    .param p0, "appGroup"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;
    .param p1, "app"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;

    .line 607
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;->group_type:I

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->toAppInfoEntity(ILcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    move-result-object v0

    return-object v0
.end method

.method private notifyOnDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 486
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 487
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 488
    :cond_0
    monitor-exit v0

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
    .locals 1
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 446
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->isUseEncryption(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ktu9VpEmVQGgwCa-6Ytj2Iv10GM;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;Ljava/lang/String;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadCompleted0(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void
.end method

.method private notifyOnDownloadCompleted0(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 470
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V

    .line 471
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 472
    :cond_0
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "reason"    # I

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 494
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    .line 495
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 496
    :cond_0
    monitor-exit v0

    .line 497
    return-void

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "progress"    # F

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 440
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    .line 441
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 442
    :cond_0
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 478
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 479
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 480
    :cond_0
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 432
    .local v2, "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;->onDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 433
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;
    goto :goto_0

    .line 434
    :cond_0
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static operationResource2JsonString(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;
    .locals 1
    .param p0, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 508
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->toJson(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static operationResourceOf(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 1
    .param p0, "assembleInfo"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 504
    const-string v0, "key_operation_resource"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getExtraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->jsonString2OperationResource(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    return-object v0
.end method

.method private static queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 0
    .param p0, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    .line 554
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryOperationApps_new([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 558
    return-void
.end method

.method private static queryOperationApps_new([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 5
    .param p0, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .param p1, "appGroupCallback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 566
    .local v0, "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "params"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 585
    .local v1, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v2

    const-string v3, "app-store/v1/operation/query"

    .line 587
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 589
    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v3

    .line 591
    invoke-virtual {v3, v1}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v3

    .line 592
    invoke-virtual {v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v3

    .line 585
    invoke-virtual {v2, v3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 595
    return-void
.end method

.method private static queryOperationApps_old([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 2
    .param p0, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    .line 561
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$oT7bygDAirrWPalJRqmmG3UU_I4;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$oT7bygDAirrWPalJRqmmG3UU_I4;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryOperationAppsAsync(Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V

    .line 562
    return-void
.end method

.method private static queryResource(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 1
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;"
        }
    .end annotation

    .line 138
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryResource_new(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v0

    return-object v0
.end method

.method private static queryResource_new(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 8
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;"
        }
    .end annotation

    .line 147
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v0, "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "category"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string v1, "attrs"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    const-string v1, "size"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "current"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 160
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V

    .line 163
    .local v2, "resourceResult":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;

    .line 163
    .local v3, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    invoke-direct {v3, p0, p1, v2, v1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$m__U_o_CpjZbGXN5PfoB94iFKj8;-><init>(ILjava/util/Map;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string/jumbo v6, "xui/v2/data/queryByAttrs"

    .line 180
    invoke-static {v5, v6}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 182
    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 185
    invoke-virtual {v5}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v5

    .line 178
    invoke-virtual {v4, v5}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 189
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    const-string v4, "StoreProviderManagerWarpper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query remote resource countdown timeout 10s, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", params="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    goto :goto_0

    .line 192
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "StoreProviderManagerWarpper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query remote resource countdown interrupted, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v4, v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ResourceResult;->resourceContainer:Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    return-object v4
.end method

.method private static queryResource_old(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;"
        }
    .end annotation

    .line 199
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;

    const/16 v1, 0xfa0

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;-><init>(II)V

    const-string v1, "remote_res_type_key"

    .line 200
    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    move-result-object v0

    .line 203
    .local v0, "request":Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;->getExtra()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->query(Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v1

    return-object v1
.end method

.method private static toAppInfoEntity(ILcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .locals 2
    .param p0, "group_type"    # I
    .param p1, "app"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;

    .line 616
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;-><init>()V

    .line 618
    .local v0, "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    iput p0, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    .line 619
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->biz_uk_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    .line 621
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    .line 623
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->large_icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    .line 624
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->dock_icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    .line 625
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->app_icons:Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppIcons;->small_night_icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    .line 628
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$App;->config_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    .line 630
    return-object v0
.end method

.method private static toEncryptedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "rawUrl"    # Ljava/lang/String;

    .line 317
    if-eqz p0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".zip"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_encrypted.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    return-object p0
.end method

.method private static toSparseArray(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;)Landroid/util/SparseArray;
    .locals 6
    .param p0, "resp"    # Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;>;"
        }
    .end annotation

    .line 598
    if-nez p0, :cond_0

    .line 599
    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 602
    .local v0, "appGroupData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;>;"
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->data:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;

    .line 604
    .local v2, "appGroup":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;
    iget-object v3, v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;->apps:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    iget v3, v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;->group_type:I

    iget-object v4, v2, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;->apps:Ljava/util/List;

    .line 606
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$24oWlC8dweVgiYufDmFx90CxIfs;

    invoke-direct {v5, v2}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$24oWlC8dweVgiYufDmFx90CxIfs;-><init>(Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;)V

    .line 607
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 608
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 605
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    .end local v2    # "appGroup":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$AppGroup;
    :cond_1
    goto :goto_0

    .line 612
    :cond_2
    return-object v0
.end method


# virtual methods
.method public activityQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/query: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activityQueryBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 778
    const-string v1, "StoreProviderManagerWarpper"

    const-string v2, "activityQuery body is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 782
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 783
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ActivityQueryResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ActivityQueryResult;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V

    .line 786
    .local v2, "queryResult":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ActivityQueryResult;
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;

    .line 786
    .local v3, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    invoke-direct {v3, p1, v1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$odwiIdka_VIbZonEIkNhJSiYkTo;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    .line 799
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string/jumbo v6, "xui/v1/config/query"

    .line 801
    invoke-static {v5, v6}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 803
    invoke-virtual {v5, v0}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 805
    invoke-virtual {v5, v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 806
    invoke-virtual {v5}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v5

    .line 799
    invoke-virtual {v4, v5}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 810
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 811
    const-string v4, "StoreProviderManagerWarpper"

    const-string/jumbo v5, "xui/v1/config/insertOrUpdate timeout 10s"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :cond_1
    goto :goto_0

    .line 813
    :catch_0
    move-exception v4

    .line 814
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "StoreProviderManagerWarpper"

    const-string/jumbo v6, "xui/v1/config/insertOrUpdate countdown interrupted"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v4, v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$ActivityQueryResult;->list:Ljava/util/List;

    return-object v4
.end method

.method public activitySaveMultiple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 659
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/saveAll: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activitySaveMultipleBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 662
    const-string v1, "StoreProviderManagerWarpper"

    const-string v2, "activitySaveMultiple body=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v1, 0x0

    return v1

    .line 666
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 667
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V

    .line 670
    .local v2, "saveResult":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$g5bswu2TrwuwvPqW_F373BtSoL0;

    .line 670
    .local v3, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$g5bswu2TrwuwvPqW_F373BtSoL0;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 682
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string/jumbo v6, "xui/v1/config/save"

    .line 684
    invoke-static {v5, v6}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 686
    invoke-virtual {v5, v0}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 688
    invoke-virtual {v5, v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 689
    invoke-virtual {v5}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v5

    .line 682
    invoke-virtual {v4, v5}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 693
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 694
    const-string v4, "StoreProviderManagerWarpper"

    const-string/jumbo v5, "xui/v1/config/saveAll timeout 10s"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_1
    goto :goto_0

    .line 696
    :catch_0
    move-exception v4

    .line 697
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "StoreProviderManagerWarpper"

    const-string/jumbo v6, "xui/v1/config/saveAll countdown interrupted"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v4, v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;->success:Z

    return v4
.end method

.method public activitySaveSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 717
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xui/v1/config/insertOrUpdate: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->activitySaveSingleBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "body":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 720
    const-string v1, "StoreProviderManagerWarpper"

    const-string v2, "activitySaveSingle body=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v1, 0x0

    return v1

    .line 724
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 725
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$1;)V

    .line 728
    .local v2, "saveResult":Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;

    .line 728
    .local v3, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    invoke-direct {v3, v2, v1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dczhPHqpHSU5udGTNndWsHctges;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 740
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v4

    const/4 v5, 0x2

    const-string/jumbo v6, "xui/v1/config/insertOrUpdate"

    .line 742
    invoke-static {v5, v6}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 744
    invoke-virtual {v5, v0}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setBody(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 746
    invoke-virtual {v5, v3}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v5

    .line 747
    invoke-virtual {v5}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v5

    .line 740
    invoke-virtual {v4, v5}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 751
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 752
    const-string v4, "StoreProviderManagerWarpper"

    const-string/jumbo v5, "xui/v1/config/insertOrUpdate timeout 10s"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_1
    goto :goto_0

    .line 754
    :catch_0
    move-exception v4

    .line 755
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "StoreProviderManagerWarpper"

    const-string/jumbo v6, "xui/v1/config/insertOrUpdate countdown interrupted"

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v4, v2, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$SaveResult;->success:Z

    return v4
.end method

.method public appListOperationQuery([ILcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 2
    .param p1, "groupTypes"    # [I
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    .line 539
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$Ft9wNwhmbl_ThF1oYTF43zrMWxY;

    .line 540
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$VpcFePijT5rLgkNonYu5No2QLuQ;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$VpcFePijT5rLgkNonYu5No2QLuQ;

    .line 541
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    .line 542
    .local v0, "requests":[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 543
    return-void
.end method

.method public cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 347
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadUrl(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-static {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->cancel(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v0

    .line 349
    .local v0, "simpleRequest":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    .line 350
    return-void
.end method

.method public downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 6
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 258
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadOperationResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", useSystemTraffic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadUrl(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 263
    .local v1, "resourceFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 264
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download already completed, taskKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "taskName":Ljava/lang/String;
    :goto_0
    const/16 v3, 0xfa0

    .line 271
    invoke-static {v3, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->enqueue(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    const-string v4, "key_operation_resource"

    .line 272
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->operationResource2JsonString(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    .line 273
    invoke-virtual {v3, v0}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setDownloadUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    .line 274
    invoke-virtual {v3, p2}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setUseSystemUidDownload(Z)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v3

    .line 276
    .local v3, "requestContinuation":Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;
    if-eqz p3, :cond_2

    .line 277
    const-string v4, "extra_key_params_open_action_type"

    iget v5, p3, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionType:I

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 278
    const-string v4, "extra_key_params_open_action_component"

    iget-object v5, p3, Lcom/xiaopeng/xuimanager/operation/OpenAction;->openActionComponent:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 279
    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setNotificationVisibility(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 280
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 281
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setIconUrl(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    goto :goto_1

    .line 284
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->setNotificationVisibility(I)Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    .line 286
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->request()Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    .line 287
    return-void
.end method

.method public fetchPreLoadApps(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;

    .line 119
    const-string v0, "StoreProviderManagerWarpper"

    const-string v1, "fetchPreLoadApps"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    const-string v1, "app-store/v1/app/preloaded"

    .line 121
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->newBuilder(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dSxSe2h-JeCDSTahVhilHnt0Ej8;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/operation/remote/-$$Lambda$StoreProviderManagerWarpper$dSxSe2h-JeCDSTahVhilHnt0Ej8;-><init>(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$FetchPreLoadAppsCallback;)V

    .line 122
    invoke-virtual {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->setCallback(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I

    .line 135
    return-void
.end method

.method public getDownloadInfo(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 6
    .param p1, "type"    # I
    .param p2, "resourceId"    # Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, "assembleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 383
    return-object v2

    .line 385
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 386
    .local v3, "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->operationResourceOf(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v4

    .line 387
    .local v4, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadStatusInfo(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v1

    return-object v1

    .line 390
    .end local v3    # "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .end local v4    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_1
    goto :goto_0

    .line 391
    :cond_2
    return-object v2
.end method

.method public getDownloadInfoList(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "downloadStatusInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;>;"
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(I)Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "assembleInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 370
    .local v3, "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->operationResourceOf(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v4

    .line 371
    .local v4, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-eqz v4, :cond_0

    .line 372
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadStatusInfo(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;Lcom/xiaopeng/xuimanager/operation/OperationResource;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v5

    .line 373
    .local v5, "info":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v3    # "assembleInfo":Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .end local v4    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .end local v5    # "info":Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    return-object v0
.end method

.method public getRemoteResourceList(ILjava/util/Map;)Ljava/util/List;
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    .line 213
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteResourceList type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryResource(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v0

    .line 216
    .local v0, "container":Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "retry":I
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 220
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will retry getRemoteResourceList type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-wide/16 v2, 0x3e8

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 222
    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryResource(ILjava/util/Map;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v0

    goto :goto_0

    .line 226
    .end local v1    # "retry":I
    :cond_0
    if-nez v0, :cond_1

    .line 227
    const-string v1, "StoreProviderManagerWarpper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteResourceList type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed after retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    return-object v1

    .line 231
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "operationResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/operation/OperationResource;>;"
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemoteResourceList success: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->debugInfoOfResourceType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", container="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;->getResourceList()Ljava/util/List;

    move-result-object v2

    .line 234
    .local v2, "storeResources":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/Resource;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 235
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/appstore/storeprovider/Resource;

    .line 236
    .local v4, "resource":Lcom/xiaopeng/appstore/storeprovider/Resource;
    new-instance v5, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-direct {v5}, Lcom/xiaopeng/xuimanager/operation/OperationResource;-><init>()V

    .line 237
    .local v5, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getResType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceType(I)V

    .line 238
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getRscId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setId(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getRscName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceName(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getClientStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setStatus(I)V

    .line 241
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDownloadUrl(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getExpandContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExtraData(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setCreateTime(J)V

    .line 244
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setUpdateTime(J)V

    .line 245
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getExpandContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getExpireDate(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExpireTime(J)V

    .line 246
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getRscIcon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceIcon(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getDes()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDescription(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Lcom/xiaopeng/appstore/storeprovider/Resource;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setPrice(Ljava/lang/String;)V

    .line 249
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4    # "resource":Lcom/xiaopeng/appstore/storeprovider/Resource;
    .end local v5    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_1

    .line 252
    :cond_2
    return-object v1
.end method

.method public onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "assembleInfo"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;

    .line 396
    if-nez p2, :cond_0

    .line 397
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssembleEvent no assembleInfo, eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", assembleInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->operationResourceOf(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    .line 401
    .local v0, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-nez v0, :cond_1

    .line 402
    const-string v1, "StoreProviderManagerWarpper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download event no operation resource, eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", assembleInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 406
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getState()I

    move-result v1

    .line 408
    .local v1, "state":I
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_6

    .line 409
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isPreparing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadStart(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto/16 :goto_0

    .line 411
    :cond_2
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isPaused(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadPaused(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 413
    :cond_3
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadError(Lcom/xiaopeng/xuimanager/operation/OperationResource;I)V

    goto :goto_0

    .line 415
    :cond_4
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isCancelled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 416
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadCancel(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->downloadedFilePath(Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "resourcePath":Ljava/lang/String;
    const-string v3, "StoreProviderManagerWarpper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download completed, resource path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadCompleted(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)V

    .line 421
    .end local v2    # "resourcePath":Ljava/lang/String;
    goto :goto_0

    .line 422
    :cond_6
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_7

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isRunning(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 423
    invoke-virtual {p2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->getProgress()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->notifyOnDownloadInProgress(Lcom/xiaopeng/xuimanager/operation/OperationResource;F)V

    goto :goto_0

    .line 425
    :cond_7
    const-string v2, "StoreProviderManagerWarpper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown eventType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", assembleInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_8
    :goto_0
    return-void
.end method

.method public pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 353
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadUrl(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-static {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->pause(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v0

    .line 355
    .local v0, "simpleRequest":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    .line 356
    return-void
.end method

.method public registerDownloadListener(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2, p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->registerListener(ILcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    .line 95
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->startObserve()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 359
    const-string v0, "StoreProviderManagerWarpper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownloadResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadUrl(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-static {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;->resume(ILjava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    move-result-object v0

    .line 361
    .local v0, "simpleRequest":Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    .line 362
    return-void
.end method

.method public singleAppOperationQuery(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V
    .locals 3
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;

    .line 546
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;->newBuilder(I)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    move-result-object v0

    .line 547
    invoke-static {p2}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;->newBuilder(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->setVersionCode(Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->addAppRequest(Lcom/xiaopeng/appstore/storeprovider/bean/AppRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    move-result-object v0

    .line 549
    .local v0, "request":Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1, p4}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 550
    return-void
.end method

.method public unregisterDownloadListener(Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$StoreProviderDownloadListener;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->mStoreProviderDownloadListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->unregisterListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    .line 108
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->stopObserve()V

    .line 111
    :cond_0
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
