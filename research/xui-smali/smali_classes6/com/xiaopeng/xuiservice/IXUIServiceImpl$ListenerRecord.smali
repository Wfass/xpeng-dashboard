.class final Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
.super Ljava/lang/Object;
.source "IXUIServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerRecord"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final listener:Landroid/os/IBinder;

.field public final pid:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;Landroid/os/IBinder;II)V
    .locals 0
    .param p2, "listener"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string p1, "IXUIServiceImpl"

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->TAG:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->listener:Landroid/os/IBinder;

    .line 82
    iput p3, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->pid:I

    .line 83
    iput p4, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->uid:I

    .line 84
    return-void
.end method

.method public static synthetic lambda$binderDied$0(Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;)V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->access$100(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->access$100(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;

    .line 96
    .local v2, "observer":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;
    iget v3, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->pid:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->uid:I

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;->clientDied(II)V

    .line 97
    .end local v2    # "observer":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;
    goto :goto_0

    .line 98
    :cond_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 88
    const-string v0, "IXUIServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->release()V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->access$000(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->this$0:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->access$000(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->listener:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$ListenerRecord$j4BeQS7VFuhJUMF-3JxpkJkakBU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$ListenerRecord$j4BeQS7VFuhJUMF-3JxpkJkakBU;-><init>(Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;->listener:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IXUIServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListenerRecord release e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
