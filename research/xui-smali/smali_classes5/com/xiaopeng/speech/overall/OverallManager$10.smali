.class Lcom/xiaopeng/speech/overall/OverallManager$10;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->stopDialog()V
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

    .line 430
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$10;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$10;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    .line 434
    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stopDialog"

    .line 435
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 439
    .local v0, "targetUrl":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 443
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
