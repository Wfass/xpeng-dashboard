.class Landroid/support/rastermill/CacheEngine$1;
.super Ljava/lang/Object;
.source "CacheEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/CacheEngine;->cache(Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/CacheEngine;

.field final synthetic val$cacheCallback:Landroid/support/rastermill/CacheEngine$CacheCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroid/support/rastermill/CacheEngine$1;->this$0:Landroid/support/rastermill/CacheEngine;

    iput-object p2, p0, Landroid/support/rastermill/CacheEngine$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/rastermill/CacheEngine$1;->val$cacheCallback:Landroid/support/rastermill/CacheEngine$CacheCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "cache"

    .line 83
    new-instance v1, Landroid/support/rastermill/data/HttpUrlFetcher;

    new-instance v2, Landroid/support/rastermill/data/RequestUrl;

    iget-object v3, p0, Landroid/support/rastermill/CacheEngine$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/support/rastermill/data/RequestUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/support/rastermill/data/HttpUrlFetcher;-><init>(Landroid/support/rastermill/data/RequestUrl;)V

    .line 86
    :try_start_0
    invoke-virtual {v1}, Landroid/support/rastermill/data/HttpUrlFetcher;->loadData()Ljava/io/InputStream;

    move-result-object v2

    .line 87
    iget-object v3, p0, Landroid/support/rastermill/CacheEngine$1;->val$cacheCallback:Landroid/support/rastermill/CacheEngine$CacheCallback;

    iget-object v4, p0, Landroid/support/rastermill/CacheEngine$1;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/support/rastermill/CacheEngine$CacheCallback;->cacheData(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 94
    invoke-virtual {v1}, Landroid/support/rastermill/data/HttpUrlFetcher;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 92
    :try_start_1
    invoke-static {v0, v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 90
    invoke-static {v0, v2}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    invoke-virtual {v1}, Landroid/support/rastermill/data/HttpUrlFetcher;->cleanup()V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$1;->this$0:Landroid/support/rastermill/CacheEngine;

    iget-object v1, p0, Landroid/support/rastermill/CacheEngine$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/rastermill/CacheEngine;->access$000(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$1;->this$0:Landroid/support/rastermill/CacheEngine;

    iget-object v1, p0, Landroid/support/rastermill/CacheEngine$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/rastermill/CacheEngine;->access$100(Landroid/support/rastermill/CacheEngine;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 94
    :goto_3
    invoke-virtual {v1}, Landroid/support/rastermill/data/HttpUrlFetcher;->cleanup()V

    .line 95
    throw v0
.end method
