.class public abstract enum Lzipkin2/codec/SpanBytesDecoder;
.super Ljava/lang/Enum;
.source "SpanBytesDecoder.java"

# interfaces
.implements Lzipkin2/codec/BytesDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/codec/SpanBytesDecoder;",
        ">;",
        "Lzipkin2/codec/BytesDecoder<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/codec/SpanBytesDecoder;

.field public static final enum JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

.field public static final enum JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

.field public static final enum PROTO3:Lzipkin2/codec/SpanBytesDecoder;

.field public static final enum THRIFT:Lzipkin2/codec/SpanBytesDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$1;

    const-string v1, "JSON_V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/codec/SpanBytesDecoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

    .line 67
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$2;

    const-string v1, "THRIFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lzipkin2/codec/SpanBytesDecoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->THRIFT:Lzipkin2/codec/SpanBytesDecoder;

    .line 94
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$3;

    const-string v1, "JSON_V2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lzipkin2/codec/SpanBytesDecoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    .line 121
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$4;

    const-string v1, "PROTO3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lzipkin2/codec/SpanBytesDecoder$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lzipkin2/codec/SpanBytesDecoder;

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v2

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->THRIFT:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v3

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v4

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v5

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->$VALUES:[Lzipkin2/codec/SpanBytesDecoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lzipkin2/codec/SpanBytesDecoder$1;

    .line 32
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/SpanBytesDecoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static decodeList(Lzipkin2/codec/SpanBytesDecoder;[B)Ljava/util/List;
    .locals 2
    .param p0, "decoder"    # Lzipkin2/codec/SpanBytesDecoder;
    .param p1, "spans"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/codec/SpanBytesDecoder;",
            "[B)",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-virtual {p0, p1, v0}, Lzipkin2/codec/SpanBytesDecoder;->decodeList([BLjava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/SpanBytesDecoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lzipkin2/codec/SpanBytesDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzipkin2/codec/SpanBytesDecoder;

    return-object v0
.end method

.method public static values()[Lzipkin2/codec/SpanBytesDecoder;
    .locals 1

    .line 31
    sget-object v0, Lzipkin2/codec/SpanBytesDecoder;->$VALUES:[Lzipkin2/codec/SpanBytesDecoder;

    invoke-virtual {v0}, [Lzipkin2/codec/SpanBytesDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/codec/SpanBytesDecoder;

    return-object v0
.end method
