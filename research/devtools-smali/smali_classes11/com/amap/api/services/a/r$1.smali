.class Lcom/amap/api/services/a/r$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/r;->a(Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic eL:Lcom/amap/api/services/a/l;

.field final synthetic eM:Lcom/amap/api/services/a/r;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/r;Landroid/content/Context;Lcom/amap/api/services/a/l;Z)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amap/api/services/a/r$1;->eM:Lcom/amap/api/services/a/r;

    iput-object p2, p0, Lcom/amap/api/services/a/r$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/r$1;->eL:Lcom/amap/api/services/a/l;

    iput-boolean p4, p0, Lcom/amap/api/services/a/r$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    new-instance v1, Lcom/amap/api/services/a/ah;

    iget-object v2, p0, Lcom/amap/api/services/a/r$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 187
    iget-object v2, p0, Lcom/amap/api/services/a/r$1;->eL:Lcom/amap/api/services/a/l;

    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/ah;->a(Lcom/amap/api/services/a/l;)V

    .line 188
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/services/a/r$1;->c:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :try_start_3
    new-instance v1, Lcom/amap/api/services/a/ai;

    iget-object v2, p0, Lcom/amap/api/services/a/r$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v2, Lcom/amap/api/services/a/aj;

    invoke-direct {v2}, Lcom/amap/api/services/a/aj;-><init>()V

    .line 196
    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/aj;->c(Z)V

    .line 197
    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/aj;->a(Z)V

    .line 198
    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/aj;->b(Z)V

    .line 200
    nop

    .line 201
    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/ai;->a(Lcom/amap/api/services/a/aj;)V

    .line 202
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/r$1;->eM:Lcom/amap/api/services/a/r;

    invoke-static {v0}, Lcom/amap/api/services/a/r;->a(Lcom/amap/api/services/a/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 207
    :cond_0
    :goto_0
    goto :goto_1

    .line 188
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    :goto_1
    return-void
.end method
