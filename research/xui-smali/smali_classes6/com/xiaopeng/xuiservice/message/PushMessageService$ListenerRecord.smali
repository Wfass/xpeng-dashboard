.class final Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;
.super Ljava/lang/Object;
.source "PushMessageService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/message/PushMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerRecord"
.end annotation


# instance fields
.field final listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

.field final messageType:Ljava/lang/String;

.field final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/message/PushMessageService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/message/PushMessageService;Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/message/PushMessageService;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/xuimanager/message/IMessageListener;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/message/PushMessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->messageType:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

    .line 46
    iput p4, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->pid:I

    .line 47
    iput p5, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->uid:I

    .line 48
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 52
    const-string v0, "MESSAGE.SERVICE.PushMessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->release()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/message/PushMessageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/message/PushMessageService;->access$100(Lcom/xiaopeng/xuiservice/message/PushMessageService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/message/PushMessageService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/message/PushMessageService;->access$100(Lcom/xiaopeng/xuiservice/message/PushMessageService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/message/IMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/message/IMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MESSAGE.SERVICE.PushMessageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListenerRecord release e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerRecord{messageType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->messageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->listener:Lcom/xiaopeng/xuimanager/message/IMessageListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/message/PushMessageService$ListenerRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
