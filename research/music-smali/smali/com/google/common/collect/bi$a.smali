.class final Lcom/google/common/collect/bi$a;
.super Lcom/google/common/collect/Maps$g;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$g<",
        "Lcom/google/common/collect/au<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/bi;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bi;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/bi$b<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/google/common/collect/bi$a;->b:Lcom/google/common/collect/bi;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$g;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/google/common/collect/bi$a;->a:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/common/collect/bi$a;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bi$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 270
    instance-of v0, p1, Lcom/google/common/collect/au;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/google/common/collect/au;

    .line 272
    iget-object v0, p0, Lcom/google/common/collect/bi$a;->b:Lcom/google/common/collect/bi;

    invoke-static {v0}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/bi;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bi$b;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->a()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/au;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/bi$a;->b:Lcom/google/common/collect/bi;

    invoke-static {v0}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/bi;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0
.end method
