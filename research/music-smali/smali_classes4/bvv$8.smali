.class Lbvv$8;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvv;


# direct methods
.method constructor <init>(Lbvv;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lbvv$8;->a:Lbvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, ",mQueryData:"

    const-string v1, "mQueryRun:"

    const-string v2, "OverallManager"

    .line 858
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v4}, Lbvv;->h(Lbvv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v4}, Lbvv;->i(Lbvv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v3, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v3}, Lbvv;->e(Lbvv;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v4}, Lbvv;->j(Lbvv;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 860
    iget-object v3, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v3}, Lbvv;->h(Lbvv;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v1}, Lbvv;->h(Lbvv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v0}, Lbvv;->i(Lbvv;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lbvv$8;->a:Lbvv;

    iget-object v1, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v1}, Lbvv;->h(Lbvv;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v2}, Lbvv;->i(Lbvv;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbvv$8;->a:Lbvv;

    invoke-static {v3}, Lbvv;->k(Lbvv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbvv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
