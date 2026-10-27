.class public abstract enum Lzipkin2/codec/SpanBytesEncoder;
.super Ljava/lang/Enum;
.source "SpanBytesEncoder.java"

# interfaces
.implements Lzipkin2/codec/BytesEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/codec/SpanBytesEncoder;",
        ">;",
        "Lzipkin2/codec/BytesEncoder<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/codec/SpanBytesEncoder;

.field public static final enum JSON_V1:Lzipkin2/codec/SpanBytesEncoder;

.field public static final enum JSON_V2:Lzipkin2/codec/SpanBytesEncoder;

.field public static final enum PROTO3:Lzipkin2/codec/SpanBytesEncoder;

.field public static final enum THRIFT:Lzipkin2/codec/SpanBytesEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lzipkin2/codec/SpanBytesEncoder$1;

    const-string v1, "JSON_V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/codec/SpanBytesEncoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/SpanBytesEncoder;->JSON_V1:Lzipkin2/codec/SpanBytesEncoder;

    .line 55
    new-instance v1, Lzipkin2/codec/SpanBytesEncoder$2;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/codec/SpanBytesEncoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/codec/SpanBytesEncoder;->THRIFT:Lzipkin2/codec/SpanBytesEncoder;

    .line 82
    new-instance v3, Lzipkin2/codec/SpanBytesEncoder$3;

    const-string v5, "JSON_V2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/codec/SpanBytesEncoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/codec/SpanBytesEncoder;->JSON_V2:Lzipkin2/codec/SpanBytesEncoder;

    .line 110
    new-instance v5, Lzipkin2/codec/SpanBytesEncoder$4;

    const-string v7, "PROTO3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lzipkin2/codec/SpanBytesEncoder$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lzipkin2/codec/SpanBytesEncoder;->PROTO3:Lzipkin2/codec/SpanBytesEncoder;

    const/4 v7, 0x4

    new-array v7, v7, [Lzipkin2/codec/SpanBytesEncoder;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 25
    sput-object v7, Lzipkin2/codec/SpanBytesEncoder;->$VALUES:[Lzipkin2/codec/SpanBytesEncoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesEncoder$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/SpanBytesEncoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/SpanBytesEncoder;
    .locals 1

    .line 25
    const-class v0, Lzipkin2/codec/SpanBytesEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/codec/SpanBytesEncoder;

    return-object p0
.end method

.method public static values()[Lzipkin2/codec/SpanBytesEncoder;
    .locals 1

    .line 25
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->$VALUES:[Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {v0}, [Lzipkin2/codec/SpanBytesEncoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/codec/SpanBytesEncoder;

    return-object v0
.end method


# virtual methods
.method public abstract encodeList(Ljava/util/List;[BI)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation
.end method
