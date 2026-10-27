.class public Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;
.super Ljava/lang/Object;
.source "LegacyResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$ResourceManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyResourceManager"


# instance fields
.field private mOldExtraArray:Lorg/json/JSONArray;

.field private mSmartService:Lcom/xiaopeng/xuiservice/smart/SmartService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    move-result-object v0

    const-string v1, "smart"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/SmartService;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mSmartService:Lcom/xiaopeng/xuiservice/smart/SmartService;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$1;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$ResourceManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;

    move-result-object v0

    return-object v0
.end method

.method private getOldExtraArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 8
    .param p1, "dbList"    # Ljava/lang/String;
    .param p2, "oldList"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v0, "result":Lorg/json/JSONArray;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "dbArrayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "dbArray":Lorg/json/JSONArray;
    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 83
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 84
    .local v5, "dbItem":Lorg/json/JSONObject;
    const-string v6, "id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v5    # "dbItem":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "dbArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "oldArray":Lorg/json/JSONArray;
    nop

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 89
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 90
    .local v4, "oldItem":Lorg/json/JSONObject;
    const-string v5, "id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "oldItemId":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v4    # "oldItem":Lorg/json/JSONObject;
    .end local v5    # "oldItemId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "dbArrayIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "oldArray":Lorg/json/JSONArray;
    .end local v3    # "j":I
    :cond_2
    goto :goto_2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getDownLoadResourceList(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getDownloadResourceByType(I)Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/legacy/ResourceConvert;->toLegacyInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "dbDownloadResourceList":Ljava/lang/String;
    const-string v2, "LegacyResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbDownloadResourceList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const v2, 0xf69b5

    if-ne p1, v2, :cond_3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mOldExtraArray:Lorg/json/JSONArray;

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mSmartService:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartService;->getLluDownLoadEffectNameList()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "oldDownloadResourceList":Ljava/lang/String;
    const-string v3, "LegacyResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldDownloadFileSystemResourceList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->getOldExtraArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mOldExtraArray:Lorg/json/JSONArray;

    .line 54
    .end local v2    # "oldDownloadResourceList":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mOldExtraArray:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v2, :cond_3

    .line 56
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v2, "mergedArray":Lorg/json/JSONArray;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 60
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mOldExtraArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 61
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;->mOldExtraArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 64
    .end local v2    # "mergedArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 69
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LegacyResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeList exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    nop

    .line 72
    :goto_2
    return-object v1
.end method

.method public getLocalResourceList(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getLocalResourceByType(I)Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/legacy/ResourceConvert;->toPresetLegacyInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
