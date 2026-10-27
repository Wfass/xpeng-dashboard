.class public final Lzipkin2/internal/JsonEscaper;
.super Ljava/lang/Object;
.source "JsonEscaper.java"


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final U2028:Ljava/lang/String; = "\\u2028"

.field private static final U2029:Ljava/lang/String; = "\\u2029"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    sput-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 73
    sget-object v2, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 76
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 77
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 78
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 79
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 80
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 81
    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 27
    sget-object v5, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_1
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_2

    const-string v4, "\\u2028"

    goto :goto_1

    :cond_2
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_7

    const-string v4, "\\u2029"

    :cond_3
    :goto_1
    if-ge v3, v2, :cond_5

    if-nez v1, :cond_4

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    :cond_4
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    if-nez v1, :cond_6

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    if-ge v3, v0, :cond_a

    .line 49
    invoke-virtual {v1, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 51
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static jsonEscapedSizeInBytes(Ljava/lang/String;)I
    .locals 8

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v5, v3

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2028

    if-eq v6, v7, :cond_2

    const/16 v7, 0x2029

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/16 v7, 0x80

    if-lt v6, v7, :cond_1

    move v4, v1

    goto :goto_2

    .line 97
    :cond_1
    sget-object v7, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    aget-object v6, v7, v6

    if-eqz v6, :cond_3

    .line 98
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_3
    add-int/2addr p0, v5

    return p0

    .line 102
    :cond_5
    invoke-static {p0}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result p0

    goto :goto_3
.end method
