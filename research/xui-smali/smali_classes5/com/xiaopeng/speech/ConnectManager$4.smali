.class Lcom/xiaopeng/speech/ConnectManager$4;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/ConnectManager;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/ConnectManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    const/16 v1, 0x5dc

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/ConnectManager;->access$400(Lcom/xiaopeng/speech/ConnectManager;II)J

    move-result-wide v0

    .line 177
    .local v0, "delay":J
    iget-object v2, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/ConnectManager;->access$600(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/ConnectManager;->access$500(Lcom/xiaopeng/speech/ConnectManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v2, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/ConnectManager;->access$600(Lcom/xiaopeng/speech/ConnectManager;)Lcom/xiaopeng/speech/common/util/WorkerHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/ConnectManager$4;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/ConnectManager;->access$500(Lcom/xiaopeng/speech/ConnectManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/speech/common/util/WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    const-string v2, "reconnect delay:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method
