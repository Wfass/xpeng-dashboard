.class Lcom/xiaopeng/speech/overall/OverallManager$22;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/overall/OverallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/overall/OverallManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 853
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 858
    :try_start_0
    const-string v0, "OverallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueryRun:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mQueryData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1200(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->access$800(Lcom/xiaopeng/speech/overall/OverallManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1300(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    const-string v0, "OverallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueryRun:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mQueryData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1200(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1200(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager$22;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v3}, Lcom/xiaopeng/speech/overall/OverallManager;->access$1400(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 867
    :goto_0
    return-void
.end method
