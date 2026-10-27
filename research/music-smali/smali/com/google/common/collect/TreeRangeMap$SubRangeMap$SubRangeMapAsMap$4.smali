.class Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;
.super Lcom/google/common/collect/Maps$Values;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/bi$c$a;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values<",
        "Lcom/google/common/collect/au<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/bi$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bi$c$a;Ljava/util/Map;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;->this$2:Lcom/google/common/collect/bi$c$a;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;->this$2:Lcom/google/common/collect/bi$c$a;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/Maps;->b()Lcom/google/common/base/h;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/h;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/bi$c$a;->a(Lcom/google/common/collect/bi$c$a;Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;->this$2:Lcom/google/common/collect/bi$c$a;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/Maps;->b()Lcom/google/common/base/h;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/h;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/bi$c$a;->a(Lcom/google/common/collect/bi$c$a;Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method
