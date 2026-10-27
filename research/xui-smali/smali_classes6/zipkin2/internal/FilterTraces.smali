.class public final Lzipkin2/internal/FilterTraces;
.super Ljava/lang/Object;
.source "FilterTraces.java"

# interfaces
.implements Lzipkin2/Call$Mapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/Call$Mapper<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lzipkin2/Span;",
        ">;>;",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lzipkin2/Span;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final request:Lzipkin2/storage/QueryRequest;


# direct methods
.method constructor <init>(Lzipkin2/storage/QueryRequest;)V
    .locals 0
    .param p1, "request"    # Lzipkin2/storage/QueryRequest;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lzipkin2/internal/FilterTraces;->request:Lzipkin2/storage/QueryRequest;

    .line 32
    return-void
.end method

.method public static create(Lzipkin2/storage/QueryRequest;)Lzipkin2/Call$Mapper;
    .locals 1
    .param p0, "request"    # Lzipkin2/storage/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/storage/QueryRequest;",
            ")",
            "Lzipkin2/Call$Mapper<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lzipkin2/internal/FilterTraces;

    invoke-direct {v0, p0}, Lzipkin2/internal/FilterTraces;-><init>(Lzipkin2/storage/QueryRequest;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzipkin2/internal/FilterTraces;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;"
        }
    .end annotation

    .line 35
    .local p1, "input":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lzipkin2/Span;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 38
    .local v1, "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    iget-object v2, p0, Lzipkin2/internal/FilterTraces;->request:Lzipkin2/storage/QueryRequest;

    invoke-virtual {v2, v1}, Lzipkin2/storage/QueryRequest;->test(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 39
    .end local v1    # "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :cond_0
    goto :goto_0

    .line 40
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterTraces{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/internal/FilterTraces;->request:Lzipkin2/storage/QueryRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
