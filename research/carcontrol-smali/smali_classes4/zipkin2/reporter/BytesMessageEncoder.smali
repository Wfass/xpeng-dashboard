.class public abstract enum Lzipkin2/reporter/BytesMessageEncoder;
.super Ljava/lang/Enum;
.source "BytesMessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzipkin2/reporter/BytesMessageEncoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzipkin2/reporter/BytesMessageEncoder;

.field public static final enum JSON:Lzipkin2/reporter/BytesMessageEncoder;

.field public static final enum PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

.field public static final enum THRIFT:Lzipkin2/reporter/BytesMessageEncoder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lzipkin2/reporter/BytesMessageEncoder$1;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/BytesMessageEncoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/BytesMessageEncoder;->JSON:Lzipkin2/reporter/BytesMessageEncoder;

    .line 56
    new-instance v1, Lzipkin2/reporter/BytesMessageEncoder$2;

    const-string v3, "THRIFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzipkin2/reporter/BytesMessageEncoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzipkin2/reporter/BytesMessageEncoder;->THRIFT:Lzipkin2/reporter/BytesMessageEncoder;

    .line 93
    new-instance v3, Lzipkin2/reporter/BytesMessageEncoder$3;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzipkin2/reporter/BytesMessageEncoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzipkin2/reporter/BytesMessageEncoder;->PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

    const/4 v5, 0x3

    new-array v5, v5, [Lzipkin2/reporter/BytesMessageEncoder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lzipkin2/reporter/BytesMessageEncoder;->$VALUES:[Lzipkin2/reporter/BytesMessageEncoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILzipkin2/reporter/BytesMessageEncoder$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lzipkin2/reporter/BytesMessageEncoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forEncoding(Lzipkin2/codec/Encoding;)Lzipkin2/reporter/BytesMessageEncoder;
    .locals 2

    const-string v0, "encoding == null"

    .line 123
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder$4;->$SwitchMap$zipkin2$codec$Encoding:[I

    invoke-virtual {p0}, Lzipkin2/codec/Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 130
    sget-object p0, Lzipkin2/reporter/BytesMessageEncoder;->THRIFT:Lzipkin2/reporter/BytesMessageEncoder;

    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lzipkin2/codec/Encoding;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    sget-object p0, Lzipkin2/reporter/BytesMessageEncoder;->PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

    return-object p0

    .line 126
    :cond_2
    sget-object p0, Lzipkin2/reporter/BytesMessageEncoder;->JSON:Lzipkin2/reporter/BytesMessageEncoder;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/reporter/BytesMessageEncoder;
    .locals 1

    .line 24
    const-class v0, Lzipkin2/reporter/BytesMessageEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzipkin2/reporter/BytesMessageEncoder;

    return-object p0
.end method

.method public static values()[Lzipkin2/reporter/BytesMessageEncoder;
    .locals 1

    .line 24
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder;->$VALUES:[Lzipkin2/reporter/BytesMessageEncoder;

    invoke-virtual {v0}, [Lzipkin2/reporter/BytesMessageEncoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzipkin2/reporter/BytesMessageEncoder;

    return-object v0
.end method


# virtual methods
.method public abstract encode(Ljava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation
.end method
