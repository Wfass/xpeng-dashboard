.class public Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
.super Ljava/lang/Object;
.source "AppListOperationService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListOperationService"


# instance fields
.field private final listeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->notifyAppIconChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->setXpPackageInfo(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->notifyAppConfigChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private static appInfoEntityListToMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation

    .line 342
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 344
    .local v2, "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v2    # "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :cond_0
    goto :goto_0

    .line 348
    :cond_1
    return-object v0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 331
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 333
    .local v0, "success":Z
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "success"

    goto :goto_0

    :cond_0
    const-string v3, "fail"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v0    # "success":Z
    :cond_1
    return-void
.end method

.method private downloadConfig(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 3
    .param p1, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 294
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->configFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->enqueue(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V

    .line 309
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private downloadIcons(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 4
    .param p1, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "downloadItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->dockIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallNightIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    iget-object v3, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->enqueueAll(Ljava/util/ArrayList;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V

    .line 290
    :cond_3
    return-void
.end method

.method private entityToAppOperation(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;
    .locals 3
    .param p1, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;-><init>()V

    .line 356
    .local v0, "appOperation":Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;
    iget v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    iput v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->groupType:I

    .line 357
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->packageName:Ljava/lang/String;

    .line 358
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallIcon:Landroid/graphics/Bitmap;

    .line 361
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->dockIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->dockIcon:Landroid/graphics/Bitmap;

    .line 364
    :cond_2
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallNightIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->smallNightIcon:Landroid/graphics/Bitmap;

    .line 367
    :cond_3
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->configFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v1

    .line 369
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;->configFile:Ljava/io/File;

    .line 373
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    return-object v0
.end method

.method private handleGroup(Landroid/util/SparseArray;IZ)V
    .locals 7
    .param p2, "groupType"    # I
    .param p3, "deleteNotExist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 175
    .local p1, "appGroupData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 177
    .local v0, "listOfGroup":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==========> group="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz v0, :cond_1

    .line 179
    const/4 v1, 0x1

    .line 180
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 181
    .local v3, "entity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    const-string v4, "AppListOperationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    .local v6, "count":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "count":I
    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v3    # "entity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    nop

    .line 180
    move v1, v6

    goto :goto_0

    .line 183
    .end local v6    # "count":I
    :cond_0
    goto :goto_1

    .line 184
    :cond_1
    const-string v1, "AppListOperationService"

    const-string v2, "<EMPTY>"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    if-eqz v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/util/List;IZ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 259
    :cond_2
    return-void
.end method

.method private igON()V
    .locals 2

    .line 110
    const-string v0, "AppListOperationService"

    const-string v1, "receive igON, do sync after network ready"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    return-void
.end method

.method private static isValidIconUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 338
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$-Ubt9bjGvAHOgNhkg2XmGrSfHc0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->entityToAppOperation(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_NUIYm257qM0RviF5lFO06tPyzo(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->onNetworkReady()V

    return-void
.end method

.method public static synthetic lambda$fetchAppOperation$1(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;ILandroid/util/SparseArray;)V
    .locals 2
    .param p1, "groupType"    # I
    .param p2, "appGroupData"    # Landroid/util/SparseArray;

    .line 150
    if-nez p2, :cond_0

    .line 151
    const-string v0, "AppListOperationService"

    const-string v1, "syncApp failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->handleGroup(Landroid/util/SparseArray;IZ)V

    .line 155
    return-void
.end method

.method public static synthetic lambda$handleGroup$3(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/util/List;IZ)V
    .locals 17
    .param p1, "listOfGroup"    # Ljava/util/List;
    .param p2, "groupType"    # I
    .param p3, "deleteNotExist"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 191
    .local v2, "saveDBStartTime":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    move-result-object v4

    .line 193
    .local v4, "repository":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;
    const/4 v5, 0x0

    .line 194
    .local v5, "inserted":I
    const/4 v6, 0x0

    .line 195
    .local v6, "updated":I
    const/4 v7, 0x0

    .line 196
    .local v7, "deleted":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 197
    .local v9, "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    iget-object v12, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 198
    iget-object v12, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    move-result-object v12

    .line 200
    .local v12, "old":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    if-nez v12, :cond_0

    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    const-string v13, "AppListOperationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "new app operation: group="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", packageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-array v11, v11, [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    aput-object v9, v11, v10

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    goto/16 :goto_1

    .line 204
    :cond_0
    invoke-virtual {v9, v12}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    const-string v13, "AppListOperationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "update app operation: group="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", packageName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-array v11, v11, [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    aput-object v9, v11, v10

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    .line 210
    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    iget-object v11, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 211
    invoke-static {v12}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    .line 213
    :cond_1
    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    iget-object v11, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 214
    invoke-static {v12}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->dockIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    .line 216
    :cond_2
    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    iget-object v11, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 217
    invoke-static {v12}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallNightIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    .line 220
    :cond_3
    const-string v10, "AppListOperationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "same app operation: group="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", packageName="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_4
    :goto_1
    invoke-direct {v0, v9}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->downloadIcons(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    .line 224
    invoke-direct {v0, v9}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->downloadConfig(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    .line 226
    .end local v9    # "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .end local v12    # "old":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :cond_5
    goto/16 :goto_0

    .line 229
    :cond_6
    if-eqz p3, :cond_b

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->appInfoEntityListToMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v9

    .line 231
    .local v9, "mapOfGroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->queryByGroupType(I)Ljava/util/List;

    move-result-object v12

    .line 232
    .local v12, "listInDB":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 233
    .local v14, "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    iget-object v15, v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_9

    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 236
    const-string v15, "AppListOperationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete app operation: group="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", packageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v10, 0x1

    new-array v11, v10, [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    const/4 v15, 0x0

    aput-object v14, v11, v15

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->delete([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    .line 239
    iget-object v11, v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 240
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    .line 242
    :cond_7
    iget-object v11, v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 243
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->dockIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    .line 245
    :cond_8
    iget-object v11, v14, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    invoke-static {v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->isValidIconUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 246
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/applist/operation/file/AppOperationFiles;->smallNightIconFile(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->deleteFile(Ljava/io/File;)V

    .end local v14    # "appInfoEntity":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    goto :goto_3

    .line 249
    :cond_9
    move v15, v10

    move v10, v11

    .line 232
    :cond_a
    :goto_3
    move v11, v10

    move v10, v15

    goto :goto_2

    .line 252
    .end local v9    # "mapOfGroup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    .end local v12    # "listInDB":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    :cond_b
    const-string v9, "AppListOperationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save applist database finish, group= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", insert="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", update="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", delete="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", use: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 252
    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static synthetic lambda$jqNd7yeJX4S2UjGlut62t5tpj3I(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->igON()V

    return-void
.end method

.method public static synthetic lambda$onNetworkReady$0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V
    .locals 1

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/operation/AppListTypes;->ALL:[I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->syncAppList([I)V

    return-void
.end method

.method public static synthetic lambda$syncAppList$2(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;[ILandroid/util/SparseArray;)V
    .locals 4
    .param p1, "groupTypes"    # [I
    .param p2, "appGroupData"    # Landroid/util/SparseArray;

    .line 161
    if-nez p2, :cond_0

    .line 162
    const-string v0, "AppListOperationService"

    const-string v1, "syncAppList failed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    .line 167
    .local v3, "groupType":I
    invoke-direct {p0, p2, v3, v2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->handleGroup(Landroid/util/SparseArray;IZ)V

    .line 166
    .end local v3    # "groupType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method private loadBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private notifyAppConfigChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "groupType"    # I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 95
    :try_start_0
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppConfigChanged groupType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    .line 97
    .local v2, "listener":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;->onAppConfigChanged(Ljava/lang/String;I)V

    .line 98
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;
    goto :goto_0

    .line 99
    :cond_0
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyAppIconChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "groupType"    # I

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 86
    :try_start_0
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppIconChanged groupType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    .line 88
    .local v2, "listener":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;->onAppIconChanged(Ljava/lang/String;I)V

    .line 89
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;
    goto :goto_0

    .line 90
    :cond_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNetworkReady()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->syncDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "AppListOperationService"

    const-string v1, "onNetworkReady, sync already done"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    const-string v0, "AppListOperationService"

    const-string v1, "onNetworkReady, schedule sync"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$QoXEzo0fSJA3eUAL0-lRbzI09yY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$QoXEzo0fSJA3eUAL0-lRbzI09yY;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 122
    :goto_0
    return-void
.end method

.method private setXpPackageInfo(Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configFile"    # Ljava/io/File;

    .line 312
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 318
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_1

    .line 319
    return-void

    .line 323
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageManager;->setXpPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "AppListOperationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setXpPackageInfo packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AppListOperationService"

    const-string v4, "IPackageManager.setXpPackageInfo"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private syncAppList([I)V
    .locals 3
    .param p1, "groupTypes"    # [I

    .line 159
    const-string v0, "AppListOperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncAppList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$5mgos9_P82HBgovj9bUfkD2unQI;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$5mgos9_P82HBgovj9bUfkD2unQI;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;[I)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->appListOperationQuery([ILcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 172
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 132
    return-void
.end method

.method public fetchAppOperation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "groupType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .line 148
    const-string v0, "AppListOperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncApp: groupType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->get()Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper;->singleAppOperationQuery(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;)V

    .line 156
    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->queryAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getByGroupType(I)Ljava/util/List;
    .locals 2
    .param p1, "groupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->queryByGroupType(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getByPackageName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoRepository;->queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->entityToAppOperation(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "AppListOperationService"

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 104
    const-string v0, "AppListOperationService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;-><init>(Ljava/lang/Integer;)V

    const-string v2, "AppList-IgON"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionIG;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$jqNd7yeJX4S2UjGlut62t5tpj3I;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$jqNd7yeJX4S2UjGlut62t5tpj3I;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 106
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;-><init>(Ljava/lang/Boolean;)V

    const-string v1, "AppList-Network"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionNetwork;->setName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$_NUIYm257qM0RviF5lFO06tPyzo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$_NUIYm257qM0RviF5lFO06tPyzo;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionTools;->executeWhenMatch(Lcom/xiaopeng/xuiservice/smart/condition/Condition;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 107
    return-void
.end method

.method public registerOperationListener(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 60
    :try_start_0
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerOperationListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 126
    const-string v0, "AppListOperationService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public unregisterOperationListener(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationListener;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 67
    :try_start_0
    const-string v1, "AppListOperationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterOperationListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->listeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
