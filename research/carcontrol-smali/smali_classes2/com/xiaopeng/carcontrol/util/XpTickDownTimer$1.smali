.class Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;
.super Landroid/os/Handler;
.source "XpTickDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$000(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    .line 28
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$100(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$202(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;Z)Z

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->onFinish()V

    .line 33
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$400(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onFinish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-virtual {p1, v2, v3}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->onTick(J)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$500()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$400(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onTick:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$600(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$102(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;J)J

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$100(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->this$0:Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;->access$600(Lcom/xiaopeng/carcontrol/util/XpTickDownTimer;)J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/carcontrol/util/XpTickDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 43
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
