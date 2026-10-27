.class Lcom/google/common/cache/LocalCache$h$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/google/common/cache/LocalCache$f;

.field final synthetic d:Lcom/google/common/util/concurrent/i;

.field final synthetic e:Lcom/google/common/cache/LocalCache$h;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$h;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/util/concurrent/i;)V
    .locals 0

    .line 2205
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$h$1;->e:Lcom/google/common/cache/LocalCache$h;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$h$1;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$h$1;->b:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$h$1;->c:Lcom/google/common/cache/LocalCache$f;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$h$1;->d:Lcom/google/common/util/concurrent/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2209
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h$1;->e:Lcom/google/common/cache/LocalCache$h;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h$1;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/LocalCache$h$1;->b:I

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$h$1;->c:Lcom/google/common/cache/LocalCache$f;

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$h$1;->d:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/util/concurrent/i;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2211
    sget-object v1, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2212
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h$1;->c:Lcom/google/common/cache/LocalCache$f;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/LocalCache$f;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
