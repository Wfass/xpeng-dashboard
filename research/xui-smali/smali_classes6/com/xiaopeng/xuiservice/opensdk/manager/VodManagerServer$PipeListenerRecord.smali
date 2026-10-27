.class final Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;
.super Ljava/lang/Object;
.source "VodManagerServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V
    .locals 0
    .param p2, "listener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    .line 48
    iput p3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    .line 49
    iput p4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->uid:I

    .line 50
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 54
    const-string v0, "VodManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$PipeListenerRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void

    .line 57
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
