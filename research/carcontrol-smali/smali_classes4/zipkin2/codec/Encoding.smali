.class public abstract enum Lzipkin2/codec/Encoding;
.super Ljava/lang/Enum;
.source "Encoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/codec/Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/codec/Encoding;

.field public static final enum JSON:Lzipkin2/codec/Encoding;

.field public static final enum PROTO3:Lzipkin2/codec/Encoding;

.field public static final enum THRIFT:Lzipkin2/codec/Encoding;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lzipkin2/codec/Encoding$1;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/codec/Encoding$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/codec/Encoding;->JSON:Lzipkin2/codec/Encoding;

    .line 46
    new-instance v1, Lzipkin2/codec/Encoding$2;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/codec/Encoding$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/codec/Encoding;->THRIFT:Lzipkin2/codec/Encoding;

    .line 68
    new-instance v3, Lzipkin2/codec/Encoding$3;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/codec/Encoding$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/codec/Encoding;->PROTO3:Lzipkin2/codec/Encoding;

    const/4 v5, 0x3

    new-array v5, v5, [Lzipkin2/codec/Encoding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 20
    sput-object v5, Lzipkin2/codec/Encoding;->$VALUES:[Lzipkin2/codec/Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/codec/Encoding$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lzipkin2/codec/Encoding;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/codec/Encoding;
    .locals 1

    .line 20
    const-class v0, Lzipkin2/codec/Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/codec/Encoding;

    return-object p0
.end method

.method public static values()[Lzipkin2/codec/Encoding;
    .locals 1

    .line 20
    sget-object v0, Lzipkin2/codec/Encoding;->$VALUES:[Lzipkin2/codec/Encoding;

    invoke-virtual {v0}, [Lzipkin2/codec/Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/codec/Encoding;

    return-object v0
.end method


# virtual methods
.method public abstract listSizeInBytes(I)I
.end method

.method public abstract listSizeInBytes(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation
.end method
