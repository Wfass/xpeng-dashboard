.class public final Lzipkin2/internal/SpanNode;
.super Ljava/lang/Object;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/SpanNode$SharedKey;,
        Lzipkin2/internal/SpanNode$Builder;,
        Lzipkin2/internal/SpanNode$BreadthFirstIterator;
    }
.end annotation


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/internal/SpanNode;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lzipkin2/internal/SpanNode;
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation
.end field

.field span:Lzipkin2/Span;
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzipkin2/Span;)V
    .locals 1
    .param p1, "span"    # Lzipkin2/Span;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lzipkin2/internal/SpanNode;->span:Lzipkin2/Span;

    .line 46
    return-void
.end method

.method static createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "shared"    # Z
    .param p2, "endpoint"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 267
    if-nez p1, :cond_0

    return-object p0

    .line 268
    :cond_0
    new-instance v0, Lzipkin2/internal/SpanNode$SharedKey;

    invoke-direct {v0, p0, p2}, Lzipkin2/internal/SpanNode$SharedKey;-><init>(Ljava/lang/String;Lzipkin2/Endpoint;)V

    return-object v0
.end method


# virtual methods
.method addChild(Lzipkin2/internal/SpanNode;)Lzipkin2/internal/SpanNode;
    .locals 3
    .param p1, "child"    # Lzipkin2/internal/SpanNode;

    .line 102
    if-eqz p1, :cond_2

    .line 103
    if-eq p1, p0, :cond_1

    .line 104
    iget-object v0, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iput-object p0, p1, Lzipkin2/internal/SpanNode;->parent:Lzipkin2/internal/SpanNode;

    .line 107
    return-object p0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circular dependency on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "child == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/internal/SpanNode;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public parent()Lzipkin2/internal/SpanNode;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 50
    iget-object v0, p0, Lzipkin2/internal/SpanNode;->parent:Lzipkin2/internal/SpanNode;

    return-object v0
.end method

.method public span()Lzipkin2/Span;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lzipkin2/internal/SpanNode;->span:Lzipkin2/Span;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v0, "childrenSpans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    const/4 v1, 0x0

    .line 312
    .local v1, "i":I
    iget-object v2, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 312
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 313
    iget-object v3, p0, Lzipkin2/internal/SpanNode;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/internal/SpanNode;

    iget-object v3, v3, Lzipkin2/internal/SpanNode;->span:Lzipkin2/Span;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpanNode{parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzipkin2/internal/SpanNode;->parent:Lzipkin2/internal/SpanNode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzipkin2/internal/SpanNode;->parent:Lzipkin2/internal/SpanNode;

    iget-object v2, v2, Lzipkin2/internal/SpanNode;->span:Lzipkin2/Span;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", span="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzipkin2/internal/SpanNode;->span:Lzipkin2/Span;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", children="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public traverse()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lzipkin2/internal/SpanNode;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lzipkin2/internal/SpanNode$BreadthFirstIterator;

    invoke-direct {v0, p0}, Lzipkin2/internal/SpanNode$BreadthFirstIterator;-><init>(Lzipkin2/internal/SpanNode;)V

    return-object v0
.end method
