.class public Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "ResourceManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceManagerServerHolder;,
        Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ResourceManagerServer"


# instance fields
.field private mActiveResourceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/car/opensdk/resourcemanager/CarResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/car/opensdk/resourcemanager/CarResourceManager;->moduleName:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceManagerServerHolder;->access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    move-result-object v0

    return-object v0
.end method

.method private handleResourceAcquire([Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    .line 196
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->fromJSONString(Ljava/lang/String;)Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    move-result-object v2

    .line 197
    .local v2, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    if-nez v2, :cond_0

    .line 198
    const-string v3, "ResourceManagerServer"

    const-string v4, "handleResourceAcquire,null info"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return v1

    .line 201
    :cond_0
    invoke-virtual {v2, p3}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->setCallPid(I)V

    .line 202
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;

    move-object v0, v4

    .line 204
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;->onResourceRequest(Lcom/car/opensdk/resourcemanager/CarResourceInfo;)I

    move-result v1

    .line 207
    .local v1, "ret":I
    const-string v3, "ResourceManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResourceAcquire,ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-nez v1, :cond_1

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->setStatus(I)V

    .line 210
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 211
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getResourceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 214
    :cond_1
    :goto_0
    return v1

    .line 216
    .end local v1    # "ret":I
    :cond_2
    const-string v3, "ResourceManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResourceAcquire,no handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v2    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    goto :goto_1

    .line 204
    .restart local v2    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 219
    .end local v2    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    :cond_3
    const-string v2, "ResourceManagerServer"

    const-string v3, "handleResourceAcquire, params null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_1
    return v1
.end method

.method private handleResourceRelease(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 228
    .local v1, "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;
    const/4 v2, 0x0

    .line 230
    .local v2, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "activeKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    move-object v2, v5

    .line 233
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 235
    if-nez v2, :cond_0

    .line 236
    const-string v4, "ResourceManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResourceRelease, no active resource for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v4, 0x0

    return v4

    .line 241
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 242
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;

    move-object v1, v4

    .line 243
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;->onResourceRelease(Ljava/lang/String;)I

    move-result v0

    .line 249
    .end local v0    # "ret":I
    .local v4, "ret":I
    :cond_1
    move v4, v0

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v6

    .line 250
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    monitor-exit v6

    .line 253
    return v4

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 243
    .end local v4    # "ret":I
    .restart local v0    # "ret":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 233
    :catchall_2
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 93
    const-string v0, "ResourceManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 95
    return-void
.end method

.method public addModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 110
    const-string v0, "dump:ResourceManagerServer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active resource size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/car/opensdk/vehicle/air/IAirConditioner;->MODULE_NAME:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->getActiveResources(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;"
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    .line 116
    .local v2, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  set status to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getResourceType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getCallPid()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->setResourceStatus(Ljava/lang/String;Ljava/lang/String;II)V

    .line 118
    .end local v2    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public getActiveResources(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/car/opensdk/resourcemanager/CarResourceInfo;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    .line 156
    .local v3, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    invoke-virtual {v3}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getResourceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    if-nez v0, :cond_1

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v3    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    :cond_2
    goto :goto_0

    .line 163
    :cond_3
    monitor-exit v1

    .line 165
    return-object v0

    .line 163
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 64
    const-string v0, "ResourceManagerServer"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 69
    const-string v0, "ResourceManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 75
    const/4 v0, -0x1

    .line 76
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1f8bd718

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x66d9f019

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "resourceRelease"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v1, "resourceAcquire"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 81
    :pswitch_0
    if-eqz p2, :cond_3

    .line 82
    aget-object v1, p2, v3

    aget-object v2, p2, v4

    invoke-direct {p0, v1, v2, p4}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->handleResourceRelease(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 78
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->handleResourceAcquire([Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    .line 79
    nop

    .line 88
    :cond_3
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClientDied(I)V
    .locals 5
    .param p1, "pid"    # I

    .line 124
    const-string v0, "ResourceManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientDied, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    .line 129
    .local v3, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    invoke-virtual {v3}, Lcom/car/opensdk/resourcemanager/CarResourceInfo;->getCallPid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 132
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;"
    .end local v3    # "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    :cond_0
    goto :goto_0

    .line 133
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/car/opensdk/resourcemanager/CarResourceInfo;>;>;"
    :cond_1
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener()V
    .locals 2

    .line 99
    const-string v0, "ResourceManagerServer"

    const-string v1, "remove listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 101
    return-void
.end method

.method public removeModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mModuleListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setResourceStatus(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pid"    # I

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "info":Lcom/car/opensdk/resourcemanager/CarResourceInfo;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mActiveResourceMap:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    move-object v0, v2

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 186
    .local v1, "events":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 187
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 188
    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "resourceStatus"

    invoke-interface {v2, v3, v4, v1, p4}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 191
    .end local v1    # "events":[Ljava/lang/String;
    :cond_0
    return-void

    .line 182
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
