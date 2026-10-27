.class public Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;
.super Ljava/lang/Object;
.source "ResourceRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceRepository"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;


# instance fields
.field private final mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

.field private final mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

.field private final resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    move-result-object v0

    .line 28
    .local v0, "resourceDatabase":Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->resourceDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    .line 29
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->selectedDao()Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    .line 30
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->resourceAccountBindingDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    return-object v0
.end method

.method private static parseResourceIdList(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)Ljava/util/List;
    .locals 5
    .param p0, "info"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 210
    return-object v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    return-object v0

    .line 215
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 219
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method private saveSelection(ILjava/util/List;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p2, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v0, "jsonArray":Lorg/json/JSONArray;
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;-><init>(ILjava/lang/String;)V

    .line 175
    .local v1, "info":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->insertSelectInfo(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ResourceRepository"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedDao.insertSelectInfo info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public addBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;-><init>()V

    .line 250
    .local v0, "binding":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->key(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->timestamp:J

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;->insert(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourceRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resourceAccountBindingDao.insert resourceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 261
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;-><init>()V

    .line 262
    .local v0, "binding":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->key(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;->delete(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourceRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resourceAccountBindingDao.delete resourceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 101
    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->deleteResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.deleteResource info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.queryResourceById id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryAllResourceInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryAllResource()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    const-string v2, "mResourceDao.queryAllResourceInfo"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryBinding(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    .locals 5
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 238
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->key(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "key":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;->query(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourceRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resourceAccountBindingDao.query resourceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x0

    return-object v2
.end method

.method public queryDownloadResourceInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    const-string v1, "download_resource"

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryResourceByTypeAndFrom(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.queryResourceByTypeAndFrom type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resourceFrom=SourceType.DOWNLOAD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryLocalResourceInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    const-string v1, "preset_resource"

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryResourceByTypeAndFrom(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.queryResourceByTypeAndFrom type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resourceFrom=SourceType.PRESET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryResourceInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryResourceByType(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.queryResourceByType type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    .locals 4
    .param p1, "resourceType"    # I

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySelectTimeByType: resourceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    const/4 v1, 0x0

    return-object v1
.end method

.method public querySelectedResourceInfo(I)Ljava/util/List;
    .locals 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    move-object v1, v0

    .line 184
    .local v1, "info":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->querySelectedByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ResourceRepository"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedDao.querySelectedByType type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->parseResourceIdList(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->sizeOf(Ljava/util/Collection;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v3, "selectedList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, "resourceId":Ljava/lang/String;
    move-object v6, v0

    .line 197
    .local v6, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :try_start_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v7, v5}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->queryResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 200
    goto :goto_2

    .line 198
    :catch_1
    move-exception v7

    .line 199
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "ResourceRepository"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mResourceDao.queryResourceById resourceId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v5    # "resourceId":Ljava/lang/String;
    .end local v6    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_1
    goto :goto_1

    .line 205
    :cond_2
    return-object v3
.end method

.method public saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v0, "ResourceRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveResourceInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->insertResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.insertResource info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public saveSelectTime(IJ)V
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "time"    # J

    .line 273
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;-><init>()V

    .line 274
    .local v0, "selectTime":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    iput p1, v0, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->resourceType:I

    .line 275
    iput-wide p2, v0, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->lastSelectTime:J

    .line 276
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->insertSelectTime(Lcom/xiaopeng/xuiservice/operation/db/SelectTime;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "selectTime":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSelectTime resourceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public selectResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;I)Z
    .locals 5
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .param p2, "selectMode"    # I

    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, "info":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->querySelectedByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourceRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedDao.querySelectedByType type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->parseResourceIdList(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 128
    return v3

    .line 131
    :cond_0
    if-nez v1, :cond_1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 135
    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 137
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_2
    if-ne p2, v2, :cond_3

    .line 139
    iget-object v3, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_1
    iget v3, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->saveSelection(ILjava/util/List;)V

    .line 146
    return v2

    .line 141
    :cond_3
    return v3
.end method

.method public unselectResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 5
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "info":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mSelectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;->querySelectedByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourceRepository"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedDao.querySelectedByType type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->parseResourceIdList(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/CollectionUtil;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    const/4 v2, 0x0

    return v2

    .line 163
    :cond_0
    iget-object v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    iget v2, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->saveSelection(ILjava/util/List;)V

    .line 167
    const/4 v2, 0x1

    return v2
.end method

.method public updateResourceInfoStatus(Ljava/lang/String;I)V
    .locals 4
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->mResourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;->updateResourceStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResourceDao.updateResourceStatus resourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
