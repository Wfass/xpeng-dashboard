.class final Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
.super Ljava/lang/Object;
.source "KaraokeManagerServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field public final listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
    .param p2, "listener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    .line 75
    iput p3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->pid:I

    .line 76
    iput p4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->uid:I

    .line 77
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 81
    const-string v0, "KaraokeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_clientDied()I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
