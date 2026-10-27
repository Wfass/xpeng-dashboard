.class Lcom/xiaopeng/speech/overall/OverallManager$4;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
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

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$4;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 138
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$4;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    .line 139
    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallManager;->access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "destroyRecord"

    .line 140
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "targetUrl":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$4;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$4;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/overall/OverallManager;->access$100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/overall/OverallManager;->unsubscribe(Ljava/lang/String;)V

    .line 149
    return-void
.end method
