.class Lcom/android/car/XpDiagnosticService$Client;
.super Ljava/lang/Object;
.source "XpDiagnosticService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/android/car/XpDiagnosticService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/car/XpDiagnosticService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 2177
    iput-object p1, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    .line 2178
    iput-object p2, p0, Lcom/android/car/XpDiagnosticService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 2179
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 2180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    .line 2181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/car/XpDiagnosticService$Client;->uid:I

    .line 2182
    invoke-static {p1}, Lcom/android/car/XpDiagnosticService;->access$500(Lcom/android/car/XpDiagnosticService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    iget v2, p0, Lcom/android/car/XpDiagnosticService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    nop

    .line 2190
    invoke-static {p1}, Lcom/android/car/XpDiagnosticService;->access$600(Lcom/android/car/XpDiagnosticService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    return-void

    .line 2186
    :catch_0
    move-exception p1

    .line 2187
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpDiagnosticService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$400(Lcom/android/car/XpDiagnosticService$Client;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpDiagnosticService$Client;

    .line 2169
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private rateMapToString()Ljava/lang/String;
    .locals 6

    .line 2257
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v0}, Lcom/android/car/XpDiagnosticService;->access$700(Lcom/android/car/XpDiagnosticService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2258
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2259
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 2260
    const-string v2, "{}"

    monitor-exit v0

    return-object v2

    .line 2263
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2264
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2265
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2266
    if-lez v3, :cond_1

    .line 2267
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    :cond_1
    iget-object v4, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2270
    .local v4, "key":I
    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    iget-object v5, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2265
    .end local v4    # "key":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2274
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2276
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
    .locals 2
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 2194
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2195
    return-void
.end method

.method public binderDied()V
    .locals 4

    .line 2204
    const-string v0, "XpDiagnosticService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :goto_0
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2209
    .local v0, "propId":I
    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v1}, Lcom/android/car/XpDiagnosticService;->access$700(Lcom/android/car/XpDiagnosticService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2210
    :try_start_0
    iget-object v2, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v2, v0, v3}, Lcom/android/car/XpDiagnosticService;->access$800(Lcom/android/car/XpDiagnosticService;ILandroid/os/IBinder;)V

    .line 2212
    monitor-exit v1

    .line 2213
    .end local v0    # "propId":I
    goto :goto_0

    .line 2212
    .restart local v0    # "propId":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2214
    .end local v0    # "propId":I
    :cond_0
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v0}, Lcom/android/car/XpDiagnosticService;->access$900(Lcom/android/car/XpDiagnosticService;)Lcom/android/car/CallbackStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    iget v2, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    iget-object v3, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CallbackStatistics;->removeProcess(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 2215
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    .line 2245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Pid:"

    .line 2246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") mListenerBinder:"

    .line 2247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRateMap:"

    .line 2248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/XpDiagnosticService$Client;->rateMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2249
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2250
    return-void
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 2

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/XpDiagnosticService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getListener()Landroid/car/hardware/property/ICarPropertyEventListener;
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    return-object v0
.end method

.method getListenerBinder()Landroid/os/IBinder;
    .locals 1

    .line 2222
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method getRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 2227
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

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

    .line 2231
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2232
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->this$0:Lcom/android/car/XpDiagnosticService;

    invoke-static {v0}, Lcom/android/car/XpDiagnosticService;->access$600(Lcom/android/car/XpDiagnosticService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/XpDiagnosticService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    return-void
.end method

.method removeProperty(I)V
    .locals 1
    .param p1, "propId"    # I

    .line 2236
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2237
    iget-object v0, p0, Lcom/android/car/XpDiagnosticService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    invoke-virtual {p0}, Lcom/android/car/XpDiagnosticService$Client;->release()V

    .line 2241
    :cond_0
    return-void
.end method
