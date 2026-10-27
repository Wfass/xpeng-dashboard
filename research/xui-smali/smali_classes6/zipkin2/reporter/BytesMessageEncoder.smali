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
    .locals 5

    .line 25
    new-instance v0, Lzipkin2/reporter/BytesMessageEncoder$1;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzipkin2/reporter/BytesMessageEncoder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/BytesMessageEncoder;->JSON:Lzipkin2/reporter/BytesMessageEncoder;

    .line 56
    new-instance v0, Lzipkin2/reporter/BytesMessageEncoder$2;

    const-string v1, "THRIFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lzipkin2/reporter/BytesMessageEncoder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/BytesMessageEncoder;->THRIFT:Lzipkin2/reporter/BytesMessageEncoder;

    .line 93
    new-instance v0, Lzipkin2/reporter/BytesMessageEncoder$3;

    const-string v1, "PROTO3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lzipkin2/reporter/BytesMessageEncoder$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzipkin2/reporter/BytesMessageEncoder;->PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lzipkin2/reporter/BytesMessageEncoder;

    sget-object v1, Lzipkin2/reporter/BytesMessageEncoder;->JSON:Lzipkin2/reporter/BytesMessageEncoder;

    aput-object v1, v0, v2

    sget-object v1, Lzipkin2/reporter/BytesMessageEncoder;->THRIFT:Lzipkin2/reporter/BytesMessageEncoder;

    aput-object v1, v0, v3

    sget-object v1, Lzipkin2/reporter/BytesMessageEncoder;->PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

    aput-object v1, v0, v4

    sput-object v0, Lzipkin2/reporter/BytesMessageEncoder;->$VALUES:[Lzipkin2/reporter/BytesMessageEncoder;

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
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lzipkin2/reporter/BytesMessageEncoder$1;

    .line 24
    invoke-direct {p0, p1, p2}, Lzipkin2/reporter/BytesMessageEncoder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forEncoding(Lzipkin2/codec/Encoding;)Lzipkin2/reporter/BytesMessageEncoder;
    .locals 2
    .param p0, "encoding"    # Lzipkin2/codec/Encoding;

    .line 123
    if-eqz p0, :cond_0

    .line 124
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder$4;->$SwitchMap$zipkin2$codec$Encoding:[I

    invoke-virtual {p0}, Lzipkin2/codec/Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lzipkin2/codec/Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_0
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder;->THRIFT:Lzipkin2/reporter/BytesMessageEncoder;

    return-object v0

    .line 128
    :pswitch_1
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder;->PROTO3:Lzipkin2/reporter/BytesMessageEncoder;

    return-object v0

    .line 126
    :pswitch_2
    sget-object v0, Lzipkin2/reporter/BytesMessageEncoder;->JSON:Lzipkin2/reporter/BytesMessageEncoder;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoding == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lzipkin2/reporter/BytesMessageEncoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lzipkin2/reporter/BytesMessageEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzipkin2/reporter/BytesMessageEncoder;

    return-object v0
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
