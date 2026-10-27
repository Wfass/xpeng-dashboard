.class public final Lzipkin2/Span;
.super Ljava/lang/Object;
.source "Span.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/Span$SerializedForm;,
        Lzipkin2/Span$Builder;,
        Lzipkin2/Span$Kind;
    }
.end annotation


# static fields
.field static final EMPTY_ENDPOINT:Lzipkin2/Endpoint;

.field static final FLAG_DEBUG:I = 0x2

.field static final FLAG_DEBUG_SET:I = 0x4

.field static final FLAG_SHARED:I = 0x8

.field static final FLAG_SHARED_SET:I = 0x10

.field static final UTF_8:Ljava/nio/charset/Charset;

.field private static final serialVersionUID:J


# instance fields
.field final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final duration:J

.field final flags:I

.field final id:Ljava/lang/String;

.field final kind:Lzipkin2/Span$Kind;

.field final localEndpoint:Lzipkin2/Endpoint;

.field final name:Ljava/lang/String;

.field final parentId:Ljava/lang/String;

.field final remoteEndpoint:Lzipkin2/Endpoint;

.field final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final timestamp:J

.field final traceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lzipkin2/Span;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    sput-object v0, Lzipkin2/Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    return-void
.end method

.method constructor <init>(Lzipkin2/Span$Builder;)V
    .locals 2
    .param p1, "builder"    # Lzipkin2/Span$Builder;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iget-object v0, p1, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span;->traceId:Ljava/lang/String;

    .line 740
    iget-object v0, p1, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    iget-object v1, p1, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    .line 741
    iget-object v0, p1, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span;->id:Ljava/lang/String;

    .line 742
    iget-object v0, p1, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    iput-object v0, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    .line 743
    iget-object v0, p1, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    .line 744
    iget-wide v0, p1, Lzipkin2/Span$Builder;->timestamp:J

    iput-wide v0, p0, Lzipkin2/Span;->timestamp:J

    .line 745
    iget-wide v0, p1, Lzipkin2/Span$Builder;->duration:J

    iput-wide v0, p0, Lzipkin2/Span;->duration:J

    .line 746
    iget-object v0, p1, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    .line 747
    iget-object v0, p1, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 748
    iget-object v0, p1, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-static {v0}, Lzipkin2/Span;->sortedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Span;->annotations:Ljava/util/List;

    .line 749
    iget-object v0, p1, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lzipkin2/Span;->tags:Ljava/util/Map;

    .line 750
    iget v0, p1, Lzipkin2/Span$Builder;->flags:I

    iput v0, p0, Lzipkin2/Span;->flags:I

    .line 751
    return-void
.end method

.method public static newBuilder()Lzipkin2/Span$Builder;
    .locals 1

    .line 278
    new-instance v0, Lzipkin2/Span$Builder;

    invoke-direct {v0}, Lzipkin2/Span$Builder;-><init>()V

    return-object v0
.end method

.method public static normalizeTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "traceId"    # Ljava/lang/String;

    .line 642
    if-eqz p0, :cond_7

    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 644
    .local v0, "length":I
    if-eqz v0, :cond_6

    .line 645
    const/16 v1, 0x20

    if-gt v0, v1, :cond_5

    .line 646
    invoke-static {p0}, Lzipkin2/Span;->validateHexAndReturnZeroPrefix(Ljava/lang/String;)I

    move-result v2

    .line 647
    .local v2, "zeros":I
    if-eq v2, v0, :cond_4

    .line 648
    const/16 v3, 0x10

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    if-ge v0, v3, :cond_1

    .line 652
    invoke-static {p0, v3}, Lzipkin2/Span;->padLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 654
    :cond_1
    invoke-static {p0, v1}, Lzipkin2/Span;->padLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 649
    :cond_2
    :goto_0
    if-ne v0, v1, :cond_3

    if-lt v2, v3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 650
    :cond_3
    return-object p0

    .line 647
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "traceId is all zeros"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    .end local v2    # "zeros":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "traceId.length > 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "traceId is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    .end local v0    # "length":I
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "traceId == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static padLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "desiredLength"    # I

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 660
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    .line 662
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static sortedList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 708
    .local p0, "in":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 709
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 710
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 711
    .local v0, "array":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 714
    const/4 v2, 0x0

    .line 715
    .local v1, "i":I
    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 716
    aget-object v3, v0, v1

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 717
    add-int/lit8 v2, v2, 0x1

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 719
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_3
    add-int/lit8 v3, v2, 0x1

    if-ne v1, v3, :cond_4

    move-object v3, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 723
    .local v3, "result":Ljava/util/List;
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 708
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "result":Ljava/util/List;
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static toLowerHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    .line 668
    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 669
    .local v0, "data":[C
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lzipkin2/Span;->writeHexLong([CIJ)V

    .line 670
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static validateHexAndReturnZeroPrefix(Ljava/lang/String;)I
    .locals 8
    .param p0, "id"    # Ljava/lang/String;

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "zeros":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 693
    .local v1, "inZeroPrefix":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 694
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 695
    .local v5, "c":C
    if-lt v5, v3, :cond_1

    const/16 v6, 0x39

    if-le v5, v6, :cond_2

    :cond_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    const/16 v6, 0x66

    if-gt v5, v6, :cond_5

    .line 698
    :cond_2
    if-eq v5, v3, :cond_3

    .line 699
    const/4 v1, 0x0

    goto :goto_1

    .line 700
    :cond_3
    if-eqz v1, :cond_4

    .line 701
    add-int/lit8 v0, v0, 0x1

    .line 693
    .end local v5    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    .restart local v5    # "c":C
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " should be lower-hex encoded with no prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 704
    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "c":C
    :cond_6
    return v0
.end method

.method static writeHexByte([CIB)V
    .locals 3
    .param p0, "data"    # [C
    .param p1, "pos"    # I
    .param p2, "b"    # B

    .line 686
    add-int/lit8 v0, p1, 0x0

    sget-object v1, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    .line 687
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    and-int/lit8 v2, p2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    .line 688
    return-void
.end method

.method static writeHexLong([CIJ)V
    .locals 5
    .param p0, "data"    # [C
    .param p1, "pos"    # I
    .param p2, "v"    # J

    .line 675
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 676
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 677
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 678
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 679
    add-int/lit8 v0, p1, 0x8

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 680
    add-int/lit8 v0, p1, 0xa

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 681
    add-int/lit8 v0, p1, 0xc

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 682
    add-int/lit8 v0, p1, 0xe

    and-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lzipkin2/Span;->writeHexByte([CIB)V

    .line 683
    return-void
.end method


# virtual methods
.method public annotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/Annotation;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lzipkin2/Span;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public debug()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 248
    iget v0, p0, Lzipkin2/Span;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 249
    iget v0, p0, Lzipkin2/Span;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 250
    :cond_1
    const/4 v0, 0x0

    .line 248
    :goto_1
    return-object v0
.end method

.method public duration()Ljava/lang/Long;
    .locals 4
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 194
    iget-wide v0, p0, Lzipkin2/Span;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lzipkin2/Span;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public durationAsLong()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lzipkin2/Span;->duration:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 754
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 755
    :cond_0
    instance-of v1, p1, Lzipkin2/Span;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 756
    :cond_1
    move-object v1, p1

    check-cast v1, Lzipkin2/Span;

    .line 757
    .local v1, "that":Lzipkin2/Span;
    iget-object v3, p0, Lzipkin2/Span;->traceId:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Span;->traceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lzipkin2/Span;->parentId:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Span;->parentId:Ljava/lang/String;

    .line 758
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_0
    iget-object v3, p0, Lzipkin2/Span;->id:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Span;->id:Ljava/lang/String;

    .line 759
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    if-nez v3, :cond_3

    iget-object v3, v1, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    iget-object v4, v1, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    .line 760
    invoke-virtual {v3, v4}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    iget-object v3, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lzipkin2/Span;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Span;->name:Ljava/lang/String;

    .line 761
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    iget-wide v3, p0, Lzipkin2/Span;->timestamp:J

    iget-wide v5, v1, Lzipkin2/Span;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iget-wide v3, p0, Lzipkin2/Span;->duration:J

    iget-wide v5, v1, Lzipkin2/Span;->duration:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    iget-object v3, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_5

    iget-object v3, v1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    iget-object v4, v1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    .line 765
    invoke-virtual {v3, v4}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    iget-object v3, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_6

    iget-object v3, v1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_7

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    iget-object v4, v1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 767
    invoke-virtual {v3, v4}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    iget-object v3, p0, Lzipkin2/Span;->annotations:Ljava/util/List;

    iget-object v4, v1, Lzipkin2/Span;->annotations:Ljava/util/List;

    .line 768
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lzipkin2/Span;->tags:Ljava/util/Map;

    iget-object v4, v1, Lzipkin2/Span;->tags:Ljava/util/Map;

    .line 769
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lzipkin2/Span;->flags:I

    iget v4, v1, Lzipkin2/Span;->flags:I

    if-ne v3, v4, :cond_7

    goto :goto_5

    .line 757
    :cond_7
    move v0, v2

    :goto_5
    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 774
    const/4 v0, 0x1

    .line 775
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 776
    iget-object v2, p0, Lzipkin2/Span;->traceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 777
    mul-int/2addr v0, v1

    .line 778
    iget-object v2, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 779
    mul-int/2addr v0, v1

    .line 780
    iget-object v2, p0, Lzipkin2/Span;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 781
    mul-int/2addr v0, v1

    .line 782
    iget-object v2, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    invoke-virtual {v2}, Lzipkin2/Span$Kind;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 783
    mul-int/2addr v0, v1

    .line 784
    iget-object v2, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    .line 785
    mul-int/2addr v0, v1

    .line 786
    int-to-long v4, v0

    iget-wide v6, p0, Lzipkin2/Span;->timestamp:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    iget-wide v8, p0, Lzipkin2/Span;->timestamp:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    xor-int/2addr v0, v4

    .line 787
    mul-int/2addr v0, v1

    .line 788
    int-to-long v4, v0

    iget-wide v6, p0, Lzipkin2/Span;->duration:J

    ushr-long/2addr v6, v2

    iget-wide v8, p0, Lzipkin2/Span;->duration:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 789
    mul-int/2addr v0, v1

    .line 790
    iget-object v2, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v2}, Lzipkin2/Endpoint;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    .line 791
    mul-int/2addr v0, v1

    .line 792
    iget-object v2, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v2}, Lzipkin2/Endpoint;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    .line 793
    mul-int/2addr v0, v1

    .line 794
    iget-object v2, p0, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 795
    mul-int/2addr v0, v1

    .line 796
    iget-object v2, p0, Lzipkin2/Span;->tags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 797
    mul-int/2addr v0, v1

    .line 798
    iget v1, p0, Lzipkin2/Span;->flags:I

    xor-int/2addr v0, v1

    .line 799
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lzipkin2/Span;->id:Ljava/lang/String;

    return-object v0
.end method

.method public kind()Lzipkin2/Span$Kind;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 132
    iget-object v0, p0, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    return-object v0
.end method

.method public localEndpoint()Lzipkin2/Endpoint;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 214
    iget-object v0, p0, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    return-object v0
.end method

.method public localServiceName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 268
    invoke-virtual {p0}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    .line 269
    .local v0, "localEndpoint":Lzipkin2/Endpoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lzipkin2/Span;->name:Ljava/lang/String;

    return-object v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lzipkin2/Span;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public remoteEndpoint()Lzipkin2/Endpoint;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 225
    iget-object v0, p0, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    return-object v0
.end method

.method public remoteServiceName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 273
    invoke-virtual {p0}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    .line 274
    .local v0, "remoteEndpoint":Lzipkin2/Endpoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public shared()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 262
    iget v0, p0, Lzipkin2/Span;->flags:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 263
    iget v0, p0, Lzipkin2/Span;->flags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 264
    :cond_1
    const/4 v0, 0x0

    .line 262
    :goto_1
    return-object v0
.end method

.method public tags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lzipkin2/Span;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 4
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 165
    iget-wide v0, p0, Lzipkin2/Span;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lzipkin2/Span;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public timestampAsLong()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lzipkin2/Span;->timestamp:J

    return-wide v0
.end method

.method public toBuilder()Lzipkin2/Span$Builder;
    .locals 1

    .line 282
    new-instance v0, Lzipkin2/Span$Builder;

    invoke-direct {v0, p0}, Lzipkin2/Span$Builder;-><init>(Lzipkin2/Span;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 633
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lzipkin2/codec/SpanBytesEncoder;->JSON_V2:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {v1, p0}, Lzipkin2/codec/SpanBytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    sget-object v2, Lzipkin2/Span;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public traceId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lzipkin2/Span;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 804
    new-instance v0, Lzipkin2/Span$SerializedForm;

    sget-object v1, Lzipkin2/codec/SpanBytesEncoder;->PROTO3:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {v1, p0}, Lzipkin2/codec/SpanBytesEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lzipkin2/Span$SerializedForm;-><init>([B)V

    return-object v0
.end method
