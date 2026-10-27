.class Lcom/xiaopeng/speech/overall/OverallManager$8;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/overall/OverallManager;

.field final synthetic val$intent:Ljava/lang/String;

.field final synthetic val$skill:Ljava/lang/String;

.field final synthetic val$slots:Ljava/lang/String;

.field final synthetic val$task:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 380
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$skill:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$task:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$intent:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$slots:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 383
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    .line 384
    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "triggerIntent"

    .line 385
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "skill"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$skill:Ljava/lang/String;

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "task"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$task:Ljava/lang/String;

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "intent"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$intent:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "slots"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$8;->val$slots:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 393
    .local v0, "targetUrl":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 397
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
