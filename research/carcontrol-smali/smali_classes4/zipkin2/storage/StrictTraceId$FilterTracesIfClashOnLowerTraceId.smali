.class final Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;
.super Ljava/lang/Object;
.source "StrictTraceId.java"

# interfaces
.implements Lzipkin2/Call$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/StrictTraceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterTracesIfClashOnLowerTraceId"
.end annotation

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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;->request:Lzipkin2/storage/QueryRequest;

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    .line 52
    invoke-static {p1}, Lzipkin2/storage/StrictTraceId;->hasClashOnLowerTraceId(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;->request:Lzipkin2/storage/QueryRequest;

    invoke-static {v0}, Lzipkin2/internal/FilterTraces;->create(Lzipkin2/storage/QueryRequest;)Lzipkin2/Call$Mapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lzipkin2/Call$Mapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterTracesIfClashOnLowerTraceId{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;->request:Lzipkin2/storage/QueryRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
