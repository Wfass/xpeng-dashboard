.class final Lcom/amap/api/services/a/bh$2;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/bh;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 255
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 256
    invoke-static {v1, v2}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;I)Lcom/amap/api/services/a/bn;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 258
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    const/4 v3, 0x1

    .line 259
    invoke-static {v2, v3}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;I)Lcom/amap/api/services/a/bn;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    const/4 v4, 0x2

    .line 262
    invoke-static {v3, v4}, Lcom/amap/api/services/a/bh;->a(Landroid/content/Context;I)Lcom/amap/api/services/a/bn;

    move-result-object v3
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/a/bn;->c(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/bn;->c(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/amap/api/services/a/bn;->c(Landroid/content/Context;)V

    .line 268
    iget-object v0, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/dd;->a(Landroid/content/Context;)V

    .line 269
    iget-object v0, p0, Lcom/amap/api/services/a/bh$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/dc;->a(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 272
    nop

    .line 288
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Lcom/amap/api/services/a/bn;->c()V

    .line 281
    :cond_0
    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v2}, Lcom/amap/api/services/a/bn;->c()V

    .line 284
    :cond_1
    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 278
    :catchall_0
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    .line 274
    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_0

    .line 272
    :catch_3
    move-exception v3

    move-object v3, v0

    goto :goto_4

    .line 278
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    .line 274
    :catch_4
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0

    .line 272
    :catch_5
    move-exception v2

    move-object v2, v0

    goto :goto_3

    .line 278
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    .line 274
    :catch_6
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v0, v1

    move-object v1, v3

    .line 276
    :goto_0
    :try_start_4
    const-string v4, "Log"

    const-string v5, "processLog"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 277
    nop

    .line 285
    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {v1}, Lcom/amap/api/services/a/bn;->c()V

    .line 281
    :cond_2
    if-eqz v2, :cond_3

    .line 282
    invoke-virtual {v2}, Lcom/amap/api/services/a/bn;->c()V

    .line 284
    :cond_3
    if-eqz v3, :cond_4

    .line 285
    :goto_1
    invoke-virtual {v3}, Lcom/amap/api/services/a/bn;->c()V

    .line 287
    :cond_4
    nop

    .line 288
    return-void

    .line 278
    :catchall_3
    move-exception v0

    .line 285
    :goto_2
    if-eqz v1, :cond_5

    .line 279
    invoke-virtual {v1}, Lcom/amap/api/services/a/bn;->c()V

    .line 281
    :cond_5
    if-eqz v2, :cond_6

    .line 282
    invoke-virtual {v2}, Lcom/amap/api/services/a/bn;->c()V

    .line 284
    :cond_6
    if-eqz v3, :cond_7

    .line 285
    invoke-virtual {v3}, Lcom/amap/api/services/a/bn;->c()V

    .line 278
    :cond_7
    throw v0

    .line 272
    :catch_7
    move-exception v1

    move-object v1, v0

    move-object v2, v1

    :goto_3
    move-object v3, v2

    .line 273
    :goto_4
    nop

    .line 285
    if-eqz v1, :cond_8

    .line 279
    invoke-virtual {v1}, Lcom/amap/api/services/a/bn;->c()V

    .line 281
    :cond_8
    if-eqz v2, :cond_9

    .line 282
    invoke-virtual {v2}, Lcom/amap/api/services/a/bn;->c()V

    .line 284
    :cond_9
    if-eqz v3, :cond_a

    .line 285
    invoke-virtual {v3}, Lcom/amap/api/services/a/bn;->c()V

    .line 273
    :cond_a
    return-void
.end method
