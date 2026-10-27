.class Lcom/xiaopeng/speech/overall/OverallManager$6;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->unsubscribe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/overall/OverallManager;

.field final synthetic val$observer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->val$observer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$402(Lcom/xiaopeng/speech/overall/OverallManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->val$observer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    .line 337
    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "unsubscribe"

    .line 338
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "observer"

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$6;->val$observer:Ljava/lang/String;

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 341
    .local v0, "targetUrl":Landroid/net/Uri;
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "targetUrl":Landroid/net/Uri;
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 345
    :goto_0
    return-void
.end method
