.class public final Lbrave/propagation/B3SingleFormat;
.super Ljava/lang/Object;
.source "B3SingleFormat.java"


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbrave/propagation/B3SingleFormat;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lbrave/propagation/TraceContext;J[C)I
    .locals 8

    .line 99
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 101
    invoke-static {p3, v6, v0, v1}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    move v6, v5

    .line 104
    :cond_0
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v0

    invoke-static {p3, v6, v0, v1}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    add-int/2addr v6, v5

    add-int/lit8 v0, v6, 0x1

    const/16 v1, 0x2d

    .line 106
    aput-char v1, p3, v6

    .line 107
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v6

    invoke-static {p3, v0, v6, v7}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    add-int/2addr v0, v5

    .line 110
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v6, v0, 0x1

    .line 112
    aput-char v1, p3, v0

    add-int/lit8 v0, v6, 0x1

    .line 113
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->debug()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x64

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x31

    goto :goto_0

    :cond_2
    const/16 p0, 0x30

    :goto_0
    aput-char p0, p3, v6

    :cond_3
    cmp-long p0, p1, v2

    if-eqz p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    .line 117
    aput-char v1, p3, v0

    .line 118
    invoke-static {p3, p0, p1, p2}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    add-int/lit8 v0, p0, 0x10

    :cond_4
    return v0
.end method

.method static a(Ljava/lang/CharSequence;II)J
    .locals 6

    add-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ge p2, v0, :cond_0

    .line 234
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p0

    const-string p1, "Invalid input: truncated"

    invoke-virtual {p0, p1, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    .line 238
    :cond_0
    invoke-static {p0, p1, p2}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;II)J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-nez p0, :cond_1

    .line 240
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p0

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Invalid input: expected a 16 lower hex parent ID at offset {0}"

    invoke-virtual {p0, p2, p1, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_1
    if-eq p2, v0, :cond_2

    .line 247
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p0

    const-string p1, "Invalid input: parent ID is too long"

    invoke-virtual {p0, p1, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_2
    return-wide v4
.end method

.method static a(Ljava/lang/CharSequence;I)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 256
    :cond_0
    invoke-static {p0}, Lbrave/propagation/SamplingFlags;->b(I)Lbrave/propagation/SamplingFlags;

    move-result-object p0

    invoke-static {p0}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/SamplingFlags;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p0

    return-object p0
.end method

.method static a(I)V
    .locals 3

    .line 292
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Invalid input: expected 0, 1 or d for sampled at offset {0}"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static a([CI)[B
    .locals 3

    .line 296
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 298
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static a()[C
    .locals 2

    .line 306
    sget-object v0, Lbrave/propagation/B3SingleFormat;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_0

    const/16 v0, 0x44

    .line 308
    new-array v0, v0, [C

    .line 309
    sget-object v1, Lbrave/propagation/B3SingleFormat;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static b(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 260
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 261
    :cond_0
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Invalid input: expected a hyphen(-) delimiter at offset {0}"

    invoke-virtual {p0, v1, p1, v0}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/CharSequence;II)Z
    .locals 2

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    add-int/2addr p1, v1

    .line 266
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lbrave/propagation/B3SingleFormat;->a(C)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static c(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 277
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/16 p0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p1}, Lbrave/propagation/B3SingleFormat;->a(I)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(Ljava/lang/CharSequence;II)J
    .locals 1

    add-int/lit8 v0, p1, 0x10

    if-le v0, p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 272
    :cond_0
    invoke-static {p0, p1, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseB3SingleFormat(Ljava/lang/CharSequence;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 126
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lbrave/propagation/B3SingleFormat;->parseB3SingleFormat(Ljava/lang/CharSequence;II)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p0

    return-object p0
.end method

.method public static parseB3SingleFormat(Ljava/lang/CharSequence;II)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 22
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 137
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: empty"

    invoke-virtual {v0, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_0
    add-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_1

    .line 143
    invoke-static/range {p0 .. p1}, Lbrave/propagation/B3SingleFormat;->a(Ljava/lang/CharSequence;I)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x21

    const-string v5, "Invalid input: truncated"

    if-ge v2, v4, :cond_2

    .line 148
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_2
    const/16 v4, 0x44

    if-le v2, v4, :cond_3

    .line 151
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: too long"

    invoke-virtual {v0, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    add-int/lit8 v4, v1, 0x20

    .line 156
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    const-wide/16 v7, 0x0

    if-ne v4, v6, :cond_4

    .line 157
    invoke-static/range {p0 .. p2}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;II)J

    move-result-wide v9

    add-int/lit8 v1, v1, 0x10

    .line 159
    invoke-static {v0, v1, v2}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;II)J

    move-result-wide v11

    move-wide v13, v11

    move-wide v11, v9

    goto :goto_0

    .line 162
    :cond_4
    invoke-static/range {p0 .. p2}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;II)J

    move-result-wide v11

    move-wide v13, v11

    move-wide v11, v7

    :goto_0
    add-int/lit8 v1, v1, 0x10

    cmp-long v4, v11, v7

    if-nez v4, :cond_5

    cmp-long v4, v13, v7

    if-nez v4, :cond_5

    .line 167
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: expected a 16 or 32 lower hex trace ID at offset 0"

    invoke-virtual {v0, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 171
    :cond_5
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lbrave/propagation/B3SingleFormat;->a(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: trace ID is too long"

    invoke-virtual {v0, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_6
    add-int/lit8 v4, v1, 0x1

    .line 176
    invoke-static {v0, v1}, Lbrave/propagation/B3SingleFormat;->b(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_7

    return-object v3

    .line 178
    :cond_7
    invoke-static {v0, v4, v2}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;II)J

    move-result-wide v19

    cmp-long v1, v19, v7

    if-nez v1, :cond_8

    .line 180
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid input: expected a 16 lower hex span ID at offset {0}"

    invoke-virtual {v0, v2, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v3

    :cond_8
    add-int/lit8 v4, v4, 0x10

    const/4 v1, 0x0

    if-le v2, v4, :cond_12

    .line 188
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lbrave/propagation/B3SingleFormat;->a(C)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 189
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: span ID is too long"

    invoke-virtual {v0, v1, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_9
    add-int/lit8 v6, v4, 0x1

    if-ne v2, v6, :cond_a

    .line 198
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 201
    :cond_a
    invoke-static {v0, v4}, Lbrave/propagation/B3SingleFormat;->b(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_b

    return-object v3

    .line 205
    :cond_b
    invoke-static {v0, v6, v2}, Lbrave/propagation/B3SingleFormat;->b(Ljava/lang/CharSequence;II)Z

    move-result v4

    add-int/lit8 v5, v6, 0x1

    if-eq v2, v5, :cond_c

    if-eqz v4, :cond_f

    .line 207
    :cond_c
    invoke-static {v0, v6}, Lbrave/propagation/B3SingleFormat;->c(Ljava/lang/CharSequence;I)I

    move-result v1

    if-nez v1, :cond_d

    return-object v3

    :cond_d
    if-eqz v4, :cond_e

    add-int/lit8 v6, v5, 0x1

    .line 210
    invoke-static {v0, v5}, Lbrave/propagation/B3SingleFormat;->b(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_f

    return-object v3

    :cond_e
    move v6, v5

    :cond_f
    if-gt v2, v6, :cond_10

    if-eqz v4, :cond_12

    .line 215
    :cond_10
    invoke-static {v0, v6, v2}, Lbrave/propagation/B3SingleFormat;->a(Ljava/lang/CharSequence;II)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-nez v0, :cond_11

    return-object v3

    :cond_11
    move v10, v1

    move-wide/from16 v17, v4

    goto :goto_1

    :cond_12
    move v10, v1

    move-wide/from16 v17, v7

    .line 220
    :goto_1
    new-instance v0, Lbrave/propagation/TraceContext;

    const-wide/16 v15, 0x0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    move-object v9, v0

    invoke-direct/range {v9 .. v21}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    .line 220
    invoke-static {v0}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    return-object v0
.end method

.method public static writeB3SingleFormat(Lbrave/propagation/TraceContext;)Ljava/lang/String;
    .locals 3

    .line 82
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->a()[C

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->a(Lbrave/propagation/TraceContext;J[C)I

    move-result p0

    .line 84
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static writeB3SingleFormatAsBytes(Lbrave/propagation/TraceContext;)[B
    .locals 3

    .line 92
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->a()[C

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->a(Lbrave/propagation/TraceContext;J[C)I

    move-result p0

    .line 94
    invoke-static {v0, p0}, Lbrave/propagation/B3SingleFormat;->a([CI)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeB3SingleFormatWithoutParentId(Lbrave/propagation/TraceContext;)Ljava/lang/String;
    .locals 3

    .line 58
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->a()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 59
    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->a(Lbrave/propagation/TraceContext;J[C)I

    move-result p0

    .line 60
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static writeB3SingleFormatWithoutParentIdAsBytes(Lbrave/propagation/TraceContext;)[B
    .locals 3

    .line 68
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->a()[C

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 69
    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->a(Lbrave/propagation/TraceContext;J[C)I

    move-result p0

    .line 70
    invoke-static {v0, p0}, Lbrave/propagation/B3SingleFormat;->a([CI)[B

    move-result-object p0

    return-object p0
.end method
