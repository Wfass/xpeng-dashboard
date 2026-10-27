.class final Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
.super Ljava/lang/Object;
.source "OpenCarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field public listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

.field public moduleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
    .param p2, "listener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    .line 166
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    .line 167
    iput p3, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->pid:I

    .line 168
    iput p4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->uid:I

    .line 169
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 173
    const-string v0, "OpenCarManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$000(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$000(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$100(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Ljava/lang/String;)V

    .line 181
    .end local v1    # "m":Ljava/lang/String;
    goto :goto_0

    .line 184
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$200()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->access$200()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 186
    .local v2, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    iget v3, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->onClientDied(I)V

    .line 187
    .end local v2    # "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    goto :goto_1

    .line 188
    :cond_1
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 177
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
