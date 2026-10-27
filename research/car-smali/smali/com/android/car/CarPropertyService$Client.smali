.class Lcom/android/car/CarPropertyService$Client;
.super Ljava/lang/Object;
.source "CarPropertyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final isAutopilotClient:Z

.field private final mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mListenerBinder:Landroid/os/IBinder;

.field private final mRateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final pid:I

.field final processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/car/CarPropertyService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1236
    iput-object p1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    .line 1237
    iput-object p2, p0, Lcom/android/car/CarPropertyService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1238
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 1239
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarPropertyService$Client;->uid:I

    .line 1241
    invoke-static {p1}, Lcom/android/car/CarPropertyService;->access$300(Lcom/android/car/CarPropertyService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    iget v2, p0, Lcom/android/car/CarPropertyService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    .line 1242
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/car/CarPropertyService;->access$400(Lcom/android/car/CarPropertyService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarPropertyService$Client;->isAutopilotClient:Z

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    nop

    .line 1250
    invoke-static {p1}, Lcom/android/car/CarPropertyService;->access$500(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    return-void

    .line 1246
    :catch_0
    move-exception p1

    .line 1247
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/android/car/CarPropertyService;Landroid/car/hardware/property/ICarPropertyEventListener;II)V
    .locals 3
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;
    .param p3, "_pid"    # I
    .param p4, "_uid"    # I

    .line 1253
    iput-object p1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    .line 1254
    iput-object p2, p0, Lcom/android/car/CarPropertyService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 1255
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 1256
    iput p3, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    .line 1257
    iput p4, p0, Lcom/android/car/CarPropertyService$Client;->uid:I

    .line 1258
    invoke-static {p1}, Lcom/android/car/CarPropertyService;->access$300(Lcom/android/car/CarPropertyService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    iget v2, p0, Lcom/android/car/CarPropertyService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/car/CarPropertyService;->access$400(Lcom/android/car/CarPropertyService;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarPropertyService$Client;->isAutopilotClient:Z

    .line 1262
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    nop

    .line 1267
    invoke-static {p1}, Lcom/android/car/CarPropertyService;->access$500(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    return-void

    .line 1263
    :catch_0
    move-exception p1

    .line 1264
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/car/CarPropertyService$Client;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService$Client;

    .line 1227
    iget-boolean v0, p0, Lcom/android/car/CarPropertyService$Client;->isAutopilotClient:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/car/CarPropertyService$Client;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService$Client;

    .line 1227
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic lambda$addProperty$0(Ljava/lang/Integer;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 1273
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method private rateMapToString()Ljava/lang/String;
    .locals 6

    .line 1351
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$700(Lcom/android/car/CarPropertyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1352
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1353
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 1354
    const-string v2, "{}"

    monitor-exit v0

    return-object v2

    .line 1357
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1358
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1359
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1360
    if-lez v3, :cond_1

    .line 1361
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_1
    iget-object v4, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1364
    .local v4, "key":I
    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    iget-object v5, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1359
    .end local v4    # "key":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1368
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1370
    .end local v1    # "size":I
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addProperty(IF)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 1271
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1272
    iget-boolean v0, p0, Lcom/android/car/CarPropertyService$Client;->isAutopilotClient:Z

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$600(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;->INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 4

    .line 1283
    const-string v0, "Property.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/CarPropertyService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1287
    .local v0, "propId":I
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->access$700(Lcom/android/car/CarPropertyService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1288
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    iget-object v3, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v2, v0, v3}, Lcom/android/car/CarPropertyService;->access$800(Lcom/android/car/CarPropertyService;ILandroid/os/IBinder;)V

    .line 1289
    monitor-exit v1

    .line 1290
    .end local v0    # "propId":I
    goto :goto_0

    .line 1289
    .restart local v0    # "propId":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1292
    .end local v0    # "propId":I
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$900(Lcom/android/car/CarPropertyService;)Lcom/android/car/CallbackStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    iget v2, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    iget-object v3, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CallbackStatistics;->removeProcess(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 1293
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    .line 1339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Pid:"

    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") mListenerBinder:"

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRateMap:"

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/CarPropertyService$Client;->rateMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1343
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    return-void
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 2

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getListener()Landroid/car/hardware/property/ICarPropertyEventListener;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    return-object v0
.end method

.method getListenerBinder()Landroid/os/IBinder;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method getRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 1305
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method release()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1310
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$500(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    return-void
.end method

.method removeProperty(I)V
    .locals 4
    .param p1, "propId"    # I

    .line 1314
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1315
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/android/car/CarPropertyService$Client;->release()V

    .line 1320
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/CarPropertyService$Client;->isAutopilotClient:Z

    if-eqz v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    .line 1322
    invoke-static {v0}, Lcom/android/car/CarPropertyService;->access$600(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1323
    .local v0, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 1324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1325
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->access$600(Lcom/android/car/CarPropertyService;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_1
    const v1, 0x21401409

    if-ne p1, v1, :cond_2

    .line 1331
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->access$1000(Lcom/android/car/CarPropertyService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/android/car/CarPropertyService$Client;->pid:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1332
    iget-object v1, p0, Lcom/android/car/CarPropertyService$Client;->this$0:Lcom/android/car/CarPropertyService;

    invoke-static {v1}, Lcom/android/car/CarPropertyService;->access$1100(Lcom/android/car/CarPropertyService;)Lcom/android/car/CarPropertyService$PropertyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/car/CarPropertyService$PropertyHandler;->removeMessages(I)V

    .line 1335
    .end local v0    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method
