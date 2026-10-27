.class Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;
.super Lcom/google/common/collect/bh;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bh<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/aj$d;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;Ljava/util/ListIterator;Lcom/google/common/collect/aj$d;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->b:Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;

    iput-object p3, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->a:Lcom/google/common/collect/aj$d;

    invoke-direct {p0, p2}, Lcom/google/common/collect/bh;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 750
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 753
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;->a:Lcom/google/common/collect/aj$d;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/aj$d;->a(Ljava/lang/Object;)V

    return-void
.end method
