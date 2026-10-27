.class Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;
.super Ljava/lang/Object;
.source "KaraokeManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public micServiceCallBack(I)V
    .locals 9
    .param p1, "msg"    # I

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string v4, "karaoke"

    const-string v5, "message"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 41
    invoke-interface {v3, v4, v5, v6}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "KaraokeServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "micServiceCallBack e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 9
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    const-string v4, "karaoke"

    const-string v5, "error"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 57
    invoke-interface {v3, v4, v5, v6}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "KaraokeServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "micServiceCallBack e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_2
    return-void
.end method
