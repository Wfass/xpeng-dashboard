.class public final Lzipkin2/internal/JsonEscaper;
.super Ljava/lang/Object;
.source "JsonEscaper.java"


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final U2028:Ljava/lang/String; = "\\u2028"

.field private static final U2029:Ljava/lang/String; = "\\u2029"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 73
    sget-object v2, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "v"    # Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .local v0, "afterReplacement":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 22
    .local v1, "length":I
    const/4 v2, 0x0

    .line 23
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_8

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 26
    .local v4, "c":C
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 27
    sget-object v5, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 28
    .local v5, "replacement":Ljava/lang/String;
    if-nez v5, :cond_3

    .end local v4    # "c":C
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_2

    .line 29
    .restart local v4    # "c":C
    :cond_1
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_2

    .line 30
    const-string v5, "\\u2028"

    .restart local v5    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 31
    .end local v5    # "replacement":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_7

    .line 32
    const-string v5, "\\u2029"

    .line 36
    .restart local v5    # "replacement":Ljava/lang/String;
    :cond_3
    :goto_1
    if-ge v0, v3, :cond_5

    .line 37
    if-nez v2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 38
    :cond_4
    invoke-virtual {v2, p0, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 40
    :cond_5
    if-nez v2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 41
    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v0, v3, 0x1

    .line 23
    .end local v4    # "c":C
    .end local v5    # "replacement":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "i":I
    :cond_8
    if-nez v2, :cond_9

    .line 46
    move-object v3, p0

    .local v3, "escaped":Ljava/lang/String;
    goto :goto_3

    .line 48
    .end local v3    # "escaped":Ljava/lang/String;
    :cond_9
    if-ge v0, v1, :cond_a

    .line 49
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 51
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .restart local v3    # "escaped":Ljava/lang/String;
    :goto_3
    return-object v3
.end method

.method public static jsonEscapedSizeInBytes(Ljava/lang/String;)I
    .locals 7
    .param p0, "v"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "ascii":Z
    const/4 v1, 0x0

    .line 90
    .local v1, "escapingOverhead":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 92
    .local v4, "c":C
    const/16 v5, 0x2028

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2029

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    const/16 v5, 0x80

    if-lt v4, v5, :cond_1

    .line 95
    const/4 v0, 0x0

    goto :goto_2

    .line 97
    :cond_1
    sget-object v5, Lzipkin2/internal/JsonEscaper;->REPLACEMENT_CHARS:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 98
    .local v5, "maybeReplacement":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v1, v6

    .end local v4    # "c":C
    .end local v5    # "maybeReplacement":Ljava/lang/String;
    goto :goto_2

    .line 93
    .restart local v4    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x5

    .line 90
    .end local v4    # "c":C
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 102
    :cond_5
    invoke-static {p0}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
