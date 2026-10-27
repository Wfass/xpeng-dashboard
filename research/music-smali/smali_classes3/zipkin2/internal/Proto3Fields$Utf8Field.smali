.class Lzipkin2/internal/Proto3Fields$Utf8Field;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Utf8Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(Lzipkin2/internal/Buffer;I)Ljava/lang/String;
    .locals 4

    .line 216
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    iget v2, p1, Lzipkin2/internal/Buffer;->a:I

    sget-object v3, Lzipkin2/internal/JsonCodec;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 217
    iget v1, p1, Lzipkin2/internal/Buffer;->a:I

    add-int/2addr v1, p2

    iput v1, p1, Lzipkin2/internal/Buffer;->a:I

    return-object v0
.end method

.method bridge synthetic a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;Ljava/lang/String;)V
    .locals 0

    .line 212
    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    return-void
.end method

.method synthetic b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Lzipkin2/internal/Buffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
