.class final Lzipkin2/internal/SpanNode$BreadthFirstIterator;
.super Ljava/lang/Object;
.source "SpanNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lzipkin2/internal/SpanNode;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lzipkin2/internal/SpanNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzipkin2/internal/SpanNode;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    .line 73
    iget-object v0, p1, Lzipkin2/internal/SpanNode;->b:Lzipkin2/Span;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iget-object v1, p1, Lzipkin2/internal/SpanNode;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 75
    iget-object v2, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    iget-object v3, p1, Lzipkin2/internal/SpanNode;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/internal/SpanNode;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->next()Lzipkin2/internal/SpanNode;

    move-result-object v0

    return-object v0
.end method

.method public next()Lzipkin2/internal/SpanNode;
    .locals 5

    .line 87
    invoke-virtual {p0}, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/internal/SpanNode;

    const/4 v1, 0x0

    .line 89
    iget-object v2, v0, Lzipkin2/internal/SpanNode;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 90
    iget-object v3, p0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;->a:Ljava/util/ArrayDeque;

    iget-object v4, v0, Lzipkin2/internal/SpanNode;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/internal/SpanNode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
