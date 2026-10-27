.class Lcom/google/common/collect/bi$c$a$1;
.super Lcom/google/common/collect/b;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/bi$c$a;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/au<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/bi$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bi$c$a;Ljava/util/Iterator;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/google/common/collect/bi$c$a$1;->b:Lcom/google/common/collect/bi$c$a;

    iput-object p2, p0, Lcom/google/common/collect/bi$c$a$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c$a$1;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/bi$c$a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/google/common/collect/bi$c$a$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bi$b;

    .line 666
    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->b()Lcom/google/common/collect/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bi$c$a$1;->b:Lcom/google/common/collect/bi$c$a;

    iget-object v2, v2, Lcom/google/common/collect/bi$c$a;->a:Lcom/google/common/collect/bi$c;

    invoke-static {v2}, Lcom/google/common/collect/bi$c;->a(Lcom/google/common/collect/bi$c;)Lcom/google/common/collect/au;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c$a$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 668
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bi$c$a$1;->b:Lcom/google/common/collect/bi$c$a;

    iget-object v2, v2, Lcom/google/common/collect/bi$c$a;->a:Lcom/google/common/collect/bi$c;

    invoke-static {v2}, Lcom/google/common/collect/bi$c;->a(Lcom/google/common/collect/bi$c;)Lcom/google/common/collect/au;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v1

    if-lez v1, :cond_0

    .line 670
    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->a()Lcom/google/common/collect/au;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/bi$c$a$1;->b:Lcom/google/common/collect/bi$c$a;

    iget-object v2, v2, Lcom/google/common/collect/bi$c$a;->a:Lcom/google/common/collect/bi$c;

    invoke-static {v2}, Lcom/google/common/collect/bi$c;->a(Lcom/google/common/collect/bi$c;)Lcom/google/common/collect/au;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/au;->c(Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 673
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c$a$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
