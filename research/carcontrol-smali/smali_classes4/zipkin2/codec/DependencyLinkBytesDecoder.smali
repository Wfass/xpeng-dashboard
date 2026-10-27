.class public abstract enum Lzipkin2/codec/DependencyLinkBytesDecoder;
.super Ljava/lang/Enum;
.source "DependencyLinkBytesDecoder.java"

# interfaces
.implements Lzipkin2/codec/BytesDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/codec/DependencyLinkBytesDecoder;",
        ">;",
        "Lzipkin2/codec/BytesDecoder<",
        "Lzipkin2/DependencyLink;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/codec/DependencyLinkBytesDecoder;

.field public static final enum JSON_V1:Lzipkin2/codec/DependencyLinkBytesDecoder;

.field static final READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lzipkin2/codec/DependencyLinkBytesDecoder$1;

    const-string v1, "JSON_V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/codec/DependencyLinkBytesDecoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder;->JSON_V1:Lzipkin2/codec/DependencyLinkBytesDecoder;

    const/4 v1, 0x1

    new-array v1, v1, [Lzipkin2/codec/DependencyLinkBytesDecoder;

    aput-object v0, v1, v2

    .line 26
    sput-object v1, Lzipkin2/codec/DependencyLinkBytesDecoder;->$VALUES:[Lzipkin2/codec/DependencyLinkBytesDecoder;

    .line 57
    new-instance v0, Lzipkin2/codec/DependencyLinkBytesDecoder$2;

    invoke-direct {v0}, Lzipkin2/codec/DependencyLinkBytesDecoder$2;-><init>()V

    sput-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder;->READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

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

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/codec/DependencyLinkBytesDecoder$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/DependencyLinkBytesDecoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/DependencyLinkBytesDecoder;
    .locals 1

    .line 26
    const-class v0, Lzipkin2/codec/DependencyLinkBytesDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/codec/DependencyLinkBytesDecoder;

    return-object p0
.end method

.method public static values()[Lzipkin2/codec/DependencyLinkBytesDecoder;
    .locals 1

    .line 26
    sget-object v0, Lzipkin2/codec/DependencyLinkBytesDecoder;->$VALUES:[Lzipkin2/codec/DependencyLinkBytesDecoder;

    invoke-virtual {v0}, [Lzipkin2/codec/DependencyLinkBytesDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/codec/DependencyLinkBytesDecoder;

    return-object v0
.end method
