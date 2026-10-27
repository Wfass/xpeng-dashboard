.class Lzipkin2/internal/Proto3ZipkinFields$EndpointField;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3ZipkinFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndpointField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "Lzipkin2/Endpoint;",
        ">;"
    }
.end annotation


# static fields
.field static final IPV4:Lzipkin2/internal/Proto3Fields$BytesField;

.field static final IPV4_KEY:I = 0x12

.field static final IPV6:Lzipkin2/internal/Proto3Fields$BytesField;

.field static final IPV6_KEY:I = 0x1a

.field static final PORT:Lzipkin2/internal/Proto3Fields$VarintField;

.field static final PORT_KEY:I = 0x20

.field static final SERVICE_NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final SERVICE_NAME_KEY:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->SERVICE_NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    .line 52
    new-instance v0, Lzipkin2/internal/Proto3Fields$BytesField;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BytesField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV4:Lzipkin2/internal/Proto3Fields$BytesField;

    .line 53
    new-instance v0, Lzipkin2/internal/Proto3Fields$BytesField;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$BytesField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV6:Lzipkin2/internal/Proto3Fields$BytesField;

    .line 54
    new-instance v0, Lzipkin2/internal/Proto3Fields$VarintField;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$VarintField;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->PORT:Lzipkin2/internal/Proto3Fields$VarintField;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->readValue(Lzipkin2/internal/Buffer;I)Lzipkin2/Endpoint;

    move-result-object p1

    return-object p1
.end method

.method readValue(Lzipkin2/internal/Buffer;I)Lzipkin2/Endpoint;
    .locals 3

    .line 77
    iget v0, p1, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v0, p2

    .line 80
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object p2

    .line 81
    :goto_0
    iget v1, p1, Lzipkin2/internal/Buffer;->pos:I

    if-ge v1, v0, :cond_4

    .line 82
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 97
    invoke-static {p1, v1}, Lzipkin2/internal/Proto3ZipkinFields;->logAndSkip(Lzipkin2/internal/Buffer;I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v1

    invoke-virtual {p2, v1}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    goto :goto_0

    .line 91
    :cond_1
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV6:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$BytesField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lzipkin2/Endpoint$Builder;->parseIp([B)Z

    goto :goto_0

    .line 88
    :cond_2
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV4:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$BytesField;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lzipkin2/Endpoint$Builder;->parseIp([B)Z

    goto :goto_0

    .line 85
    :cond_3
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->SERVICE_NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p2}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Lzipkin2/Endpoint;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->sizeOfValue(Lzipkin2/Endpoint;)I

    move-result p1

    return p1
.end method

.method sizeOfValue(Lzipkin2/Endpoint;)I
    .locals 3

    .line 62
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->SERVICE_NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->sizeInBytes(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 63
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV4:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4Bytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$BytesField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV6:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6Bytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$BytesField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->PORT:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p1}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p1

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$VarintField;->sizeInBytes(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Endpoint;)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Endpoint;)V
    .locals 2

    .line 70
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->SERVICE_NAME:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p2}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV4:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {p2}, Lzipkin2/Endpoint;->ipv4Bytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$BytesField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->IPV6:Lzipkin2/internal/Proto3Fields$BytesField;

    invoke-virtual {p2}, Lzipkin2/Endpoint;->ipv6Bytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$BytesField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$EndpointField;->PORT:Lzipkin2/internal/Proto3Fields$VarintField;

    invoke-virtual {p2}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lzipkin2/internal/Proto3Fields$VarintField;->write(Lzipkin2/internal/Buffer;I)V

    return-void
.end method
