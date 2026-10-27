.class public Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$ResourceManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field private final mPathArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPresetFileProcessor:Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;

.field private final mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPathArray:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPresetFileProcessor:Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$1;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;-><init>()V

    return-void
.end method

.method private createAndSetPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "targetDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 86
    .local v1, "targetDirParent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setOperationResourcePermission(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method private generateResourceInfo(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 3
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 172
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 175
    iput-object p2, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 178
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getEffectTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 180
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getCreateTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getUpdateTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    .line 182
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getPrice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 189
    iget v1, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    const v2, 0xf69b5

    if-ne v1, v2, :cond_0

    .line 190
    const-string v1, "ResourceManager"

    const-string v2, "getLegacyContent for LLU Type Operation Resources"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->generateExtraData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "moduleData":Ljava/lang/String;
    nop

    .line 193
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/operation/legacy/ResourceConvert;->getLegacyContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/operation/utils/DataBuild;->appendMetaData(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 195
    .end local v1    # "moduleData":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private generateTargetPath(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;
    .locals 6
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 199
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceType()I

    move-result v0

    .line 200
    .local v0, "resourceType":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPathArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "targetFolder":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/operation/OperationConfig;->getResourceDir(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVersion(Lcom/xiaopeng/xuimanager/operation/OperationResource;)I

    move-result v2

    .line 205
    .local v2, "version":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$ResourceManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 222
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->addBinding(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 5
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "resourcePath"    # Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->generateTargetPath(Lcom/xiaopeng/xuimanager/operation/OperationResource;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "targetPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->createAndSetPermission(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    const-string v2, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNewResource targetPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, "zipFile":Ljava/io/File;
    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->unZip(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setOperationResourcePermission(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->generateResourceInfo(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v2

    .line 69
    .local v2, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v2

    .line 75
    .end local v0    # "targetPath":Ljava/lang/String;
    .end local v1    # "zipFile":Ljava/io/File;
    .end local v2    # "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x4

    const-string v2, "ResourceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNewResource error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->cancelDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 132
    return-void
.end method

.method public deleteBinding(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 227
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->deleteBinding(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public deleteOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 93
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 94
    .local v0, "targetPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 95
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->deleteResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 98
    :cond_0
    return-void
.end method

.method public deleteResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 1
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 213
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->deleteResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 214
    return-void
.end method

.method public downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .param p2, "useSystemTraffic"    # Z
    .param p3, "openAction"    # Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->downloadOperationResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 128
    return-void
.end method

.method public getAllResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->queryAllResourceInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadResourceByType(I)Ljava/util/List;
    .locals 1
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->queryDownloadResourceInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStatus(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
    .locals 1
    .param p1, "type"    # I
    .param p2, "resourceId"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadInfo(ILjava/lang/String;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStatusList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getDownloadInfoList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalResourceByType(I)Ljava/util/List;
    .locals 1
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->queryLocalResourceInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteResources(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/operation/OperationResource;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getRemoteResourceList(ILjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteResources(ILjava/util/Map;)Ljava/util/List;
    .locals 1
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

    .line 115
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->getRemoteResourceList(ILjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 167
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getResourceInfoById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesByType(I)Ljava/util/List;
    .locals 1
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->queryResourceInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedResourceListByType(I)Ljava/util/List;
    .locals 1
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->querySelectedResourceInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->pauseDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 136
    return-void
.end method

.method public processPresetFile()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPresetFileProcessor:Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->start()V

    .line 49
    return-void
.end method

.method public queryBinding(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .line 217
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->queryBinding(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    .locals 1
    .param p1, "resourceType"    # I

    .line 236
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    move-result-object v0

    return-object v0
.end method

.method public resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "resource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mStoreProviderManagerWarpper:Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->resumeDownloadResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 140
    return-void
.end method

.method public saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 1
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 209
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 210
    return-void
.end method

.method public saveSelectTime(IJ)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "time"    # J

    .line 232
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->saveSelectTime(IJ)V

    .line 233
    return-void
.end method

.method public selectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;I)Z
    .locals 1
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .param p2, "selectMode"    # I

    .line 101
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->selectResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;I)Z

    move-result v0

    .line 101
    return v0
.end method

.method public setDownloadPath(ILjava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPathArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->mPathArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unselectOperationResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z
    .locals 1
    .param p1, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->unselectResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Z

    move-result v0

    .line 106
    return v0
.end method

.method public updateResourceStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "newStatus"    # I

    .line 163
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceRepository;->updateResourceInfoStatus(Ljava/lang/String;I)V

    .line 164
    return-void
.end method
