.class Lcom/xiaopeng/speech/overall/OverallManager$13;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/overall/OverallManager;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 505
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    .line 506
    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "feedbackResult"

    .line 507
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->val$event:Ljava/lang/String;

    const-string v2, "event"

    .line 508
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$13;->val$data:Ljava/lang/String;

    const-string v2, "data"

    .line 509
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 513
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
