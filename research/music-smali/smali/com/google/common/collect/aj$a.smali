.class Lcom/google/common/collect/aj$a;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/common/collect/aj;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/aj;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iget-object p1, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-virtual {p1}, Lcom/google/common/collect/aj;->n()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/aj$a;->a:Ljava/util/Set;

    .line 416
    iget-object p1, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-static {p1}, Lcom/google/common/collect/aj;->c(Lcom/google/common/collect/aj;)Lcom/google/common/collect/aj$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    .line 418
    iget-object p1, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-static {p1}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/aj$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/aj;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Lcom/google/common/collect/aj$a;-><init>(Lcom/google/common/collect/aj;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-static {v0}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/aj$a;->d:I

    if-ne v0, v1, :cond_0

    return-void

    .line 422
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/google/common/collect/aj$a;->a()V

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Lcom/google/common/collect/aj$a;->a()V

    .line 435
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    invoke-static {v0}, Lcom/google/common/collect/aj;->g(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    .line 437
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    iget-object v1, v1, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    iget-object v0, v0, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->b:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/aj$a;->a:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    iget-object v0, v0, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 446
    invoke-direct {p0}, Lcom/google/common/collect/aj$a;->a()V

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 448
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    iget-object v1, v1, Lcom/google/common/collect/aj$c;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lcom/google/common/collect/aj$a;->c:Lcom/google/common/collect/aj$c;

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/aj$a;->e:Lcom/google/common/collect/aj;

    invoke-static {v0}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/aj$a;->d:I

    return-void
.end method
