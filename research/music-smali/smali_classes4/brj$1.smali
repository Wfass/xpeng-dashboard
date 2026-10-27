.class Lbrj$1;
.super Ljava/lang/Object;
.source "RetrieverPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbrj;


# direct methods
.method constructor <init>(Lbrj;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbrj$1;->a:Lbrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lbrj$1;->a:Lbrj;

    invoke-static {v0}, Lbrj;->a(Lbrj;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lbrj$1;->a:Lbrj;

    invoke-static {v0}, Lbrj;->a(Lbrj;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrj$a;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lbrj$a;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method
