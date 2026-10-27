.class public Lcom/xiaopeng/xuiservice/operation/OperationConfig;
.super Ljava/lang/Object;
.source "OperationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/OperationConfig$SingletonHolder;,
        Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "xui_operation.json"


# instance fields
.field private enableEncryption:Z

.field private resources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private secret:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;-><init>()V

    return-void
.end method

.method private findByType(I)Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .locals 3
    .param p1, "resourceType"    # I

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->resources:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    return-object v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->resources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationConfig$yKVr6wMYl3a96bzisqxnGgYebNk;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/operation/-$$Lambda$OperationConfig$yKVr6wMYl3a96bzisqxnGgYebNk;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    return-object v0
.end method

.method private static generateDefaultTypeFolder(I)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # I

    .line 111
    const-class v0, Lcom/xiaopeng/xuimanager/operation/OperationType;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 113
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 115
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v4, Lcom/xiaopeng/xuimanager/operation/OperationType;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 116
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 120
    :cond_0
    goto :goto_1

    .line 118
    :catch_0
    move-exception v4

    .line 113
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/OperationConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    return-object v0
.end method

.method private declared-synchronized getPathByType(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceType"    # I

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->findByType(I)Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v0, "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 82
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$300(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 77
    .end local v0    # "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .end local p1    # "resourceType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    throw p1
.end method

.method static synthetic lambda$findByType$0(ILcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)Z
    .locals 1
    .param p0, "resourceType"    # I
    .param p1, "r"    # Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    .line 107
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$200(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getEncryptedByType(I)Z
    .locals 2
    .param p1, "resourceType"    # I

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->findByType(I)Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v0, "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    if-nez v0, :cond_0

    .line 98
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 100
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$400(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 95
    .end local v0    # "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    .end local p1    # "resourceType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    throw p1
.end method

.method public getResourceDir(I)Ljava/lang/String;
    .locals 3
    .param p1, "resourceType"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getPathByType(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "folderName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->generateDefaultTypeFolder(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/operation/resource/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getSecret()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->secret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    throw v0
.end method

.method public declared-synchronized isEnableEncryption()Z
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->enableEncryption:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    throw v0
.end method

.method public declared-synchronized load()V
    .locals 9

    monitor-enter p0

    .line 47
    :try_start_0
    const-string/jumbo v0, "xui_operation.json"

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v0, "content":Ljava/lang/String;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "enableEncryption"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->enableEncryption:Z

    .line 51
    const-string v2, "secret"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->secret:Ljava/lang/String;

    .line 53
    const-string v2, "resources"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 54
    .local v2, "resourcesArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 55
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->resources:Ljava/util/ArrayList;

    .line 56
    nop

    .line 56
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 58
    .local v5, "resourceObj":Lorg/json/JSONObject;
    new-instance v6, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;-><init>(Lcom/xiaopeng/xuiservice/operation/OperationConfig$1;)V

    .line 59
    .local v6, "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$202(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;I)I

    .line 60
    const-string v7, "path"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$302(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    const-string v7, "encrypted"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;->access$402(Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;Z)Z

    .line 62
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->resources:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .end local v5    # "resourceObj":Lorg/json/JSONObject;
    .end local v6    # "resource":Lcom/xiaopeng/xuiservice/operation/OperationConfig$Resource;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "resourcesArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_0
    goto :goto_1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OperationHalService"

    const-string v3, "parse xui_operation.json error"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 46
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/operation/OperationConfig;
    throw v0
.end method
