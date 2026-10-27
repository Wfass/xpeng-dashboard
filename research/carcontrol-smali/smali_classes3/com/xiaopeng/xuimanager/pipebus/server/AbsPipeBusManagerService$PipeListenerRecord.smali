.class final Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;
.super Ljava/lang/Object;
.source "AbsPipeBusManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field public listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

.field public moduleList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;II)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->moduleList:Ljava/util/Set;

    .line 41
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->listener:Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 42
    iput p3, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->pid:I

    .line 43
    iput p4, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;->access$000(Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;

    iget-object v0, v0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;->mListenersMap:Ljava/util/Map;

    iget v1, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->moduleList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->moduleList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;

    iget v3, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->uid:I

    iget v4, p0, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService$PipeListenerRecord;->pid:I

    invoke-static {v2, v1, v3, v4}, Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;->access$100(Lcom/xiaopeng/xuimanager/pipebus/server/AbsPipeBusManagerService;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
