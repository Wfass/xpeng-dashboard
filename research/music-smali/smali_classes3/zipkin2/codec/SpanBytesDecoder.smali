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

    const/4 v1, 0x0

    const-string v2, "JSON_V1"

    invoke-direct {v0, v2, v1}, Lzipkin2/codec/SpanBytesDecoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

    .line 67
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$2;

    const/4 v2, 0x1

    const-string v3, "THRIFT"

    invoke-direct {v0, v3, v2}, Lzipkin2/codec/SpanBytesDecoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->THRIFT:Lzipkin2/codec/SpanBytesDecoder;

    .line 94
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$3;

    const/4 v3, 0x2

    const-string v4, "JSON_V2"

    invoke-direct {v0, v4, v3}, Lzipkin2/codec/SpanBytesDecoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    .line 121
    new-instance v0, Lzipkin2/codec/SpanBytesDecoder$4;

    const/4 v4, 0x3

    const-string v5, "PROTO3"

    invoke-direct {v0, v5, v4}, Lzipkin2/codec/SpanBytesDecoder$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lzipkin2/codec/SpanBytesDecoder;

    sget-object v5, Lzipkin2/codec/SpanBytesDecoder;->JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v5, v0, v1

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->THRIFT:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v2

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v3

    sget-object v1, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    aput-object v1, v0, v4

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

    .line 32
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/SpanBytesDecoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lzipkin2/codec/SpanBytesDecoder;[B)Ljava/util/List;
    .locals 1
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
    invoke-virtual {p0, p1, v0}, Lzipkin2/codec/SpanBytesDecoder;->decodeList([BLjava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/SpanBytesDecoder;
    .locals 1

    .line 31
    const-class v0, Lzipkin2/codec/SpanBytesDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/codec/SpanBytesDecoder;

    return-object p0
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
