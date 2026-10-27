.class public abstract Lcom/alibaba/fastjson2/stream/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;,
        Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;,
        Lcom/alibaba/fastjson2/stream/StreamReader$Feature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final SIZE_512K:I = 0x80000


# instance fields
.field protected columnStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;",
            ">;"
        }
    .end annotation
.end field

.field protected columnStatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;",
            ">;"
        }
    .end annotation
.end field

.field protected columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected end:I

.field protected errorCount:I

.field protected features:J

.field protected fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected inputEnd:Z

.field protected lineEnd:I

.field protected lineNextStart:I

.field protected lineSize:I

.field protected lineStart:I

.field protected lineTerminated:Z

.field protected mapping:[I

.field protected objectCreator:Ljava/util/function/Supplier;

.field protected off:I

.field protected rowCount:I

.field protected typeReaders:[Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected types:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader;->lineTerminated:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader;->lineTerminated:Z

    .line 62
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader;->types:[Ljava/lang/reflect/Type;

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader;->typeReaders:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 70
    array-length v2, p1

    new-array v2, v2, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 71
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 72
    aget-object v3, p1, v1

    .line 73
    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_2

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 74
    aput-object v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iput-object v2, p0, Lcom/alibaba/fastjson2/stream/StreamReader;->typeReaders:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public abstract readLineObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method protected abstract seekLine()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;-><init>(Lcom/alibaba/fastjson2/stream/StreamReader;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream(Ljava/lang/Class;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/stream/StreamReader$StreamReaderSpliterator;-><init>(Lcom/alibaba/fastjson2/stream/StreamReader;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
