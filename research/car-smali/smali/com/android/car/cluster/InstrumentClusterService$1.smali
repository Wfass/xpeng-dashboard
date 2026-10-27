.class Lcom/android/car/cluster/InstrumentClusterService$1;
.super Ljava/lang/Object;
.source "InstrumentClusterService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/cluster/InstrumentClusterService;

    .line 103
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 106
    invoke-static {}, Lcom/android/car/cluster/InstrumentClusterService;->access$200()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "CAR.CLUSTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-static {p2}, Landroid/car/cluster/renderer/IInstrumentCluster$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/cluster/renderer/IInstrumentCluster;

    move-result-object v0

    .line 111
    .local v0, "service":Landroid/car/cluster/renderer/IInstrumentCluster;
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$300(Lcom/android/car/cluster/InstrumentClusterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v2, v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$402(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/renderer/IInstrumentCluster;)Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 113
    iget-object v2, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v2}, Lcom/android/car/cluster/InstrumentClusterService;->access$500(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;

    move-result-object v2

    .line 114
    .local v2, "navContextOwner":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 116
    iget v1, v2, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->uid:I

    iget v3, v2, Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;->pid:I

    invoke-static {v0, v1, v3}, Lcom/android/car/cluster/InstrumentClusterService;->access$600(Landroid/car/cluster/renderer/IInstrumentCluster;II)V

    .line 118
    :cond_1
    return-void

    .line 114
    .end local v2    # "navContextOwner":Lcom/android/car/cluster/InstrumentClusterService$ContextOwner;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 122
    const-string v0, "CAR.CLUSTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$702(Lcom/android/car/cluster/InstrumentClusterService;Z)Z

    .line 125
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$300(Lcom/android/car/cluster/InstrumentClusterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/cluster/InstrumentClusterService;->access$402(Lcom/android/car/cluster/InstrumentClusterService;Landroid/car/cluster/renderer/IInstrumentCluster;)Landroid/car/cluster/renderer/IInstrumentCluster;

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$800(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    new-instance v1, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    iget-object v3, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {v1, v3, v2}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;-><init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V

    invoke-static {v0, v1}, Lcom/android/car/cluster/InstrumentClusterService;->access$802(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/car/cluster/InstrumentClusterService$1;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-static {v0}, Lcom/android/car/cluster/InstrumentClusterService;->access$800(Lcom/android/car/cluster/InstrumentClusterService;)Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/cluster/InstrumentClusterService$DeferredRebinder;->rebind()V

    .line 133
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
