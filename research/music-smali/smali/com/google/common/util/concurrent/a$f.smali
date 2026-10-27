.class final Lcom/google/common/util/concurrent/a$f;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/i<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/i<",
            "+TV;>;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/google/common/util/concurrent/a$f;->a:Lcom/google/common/util/concurrent/a;

    .line 318
    iput-object p2, p0, Lcom/google/common/util/concurrent/a$f;->b:Lcom/google/common/util/concurrent/i;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$f;->a:Lcom/google/common/util/concurrent/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$f;->b:Lcom/google/common/util/concurrent/i;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->b(Lcom/google/common/util/concurrent/i;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/google/common/util/concurrent/a;->f()Lcom/google/common/util/concurrent/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/a$f;->a:Lcom/google/common/util/concurrent/a;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/a$a;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$f;->a:Lcom/google/common/util/concurrent/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->b(Lcom/google/common/util/concurrent/a;)V

    :cond_1
    return-void
.end method
