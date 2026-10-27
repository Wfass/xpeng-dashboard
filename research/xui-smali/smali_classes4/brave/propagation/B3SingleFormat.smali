.class public final Lbrave/propagation/B3SingleFormat;
.super Ljava/lang/Object;
.source "B3SingleFormat.java"


# static fields
.field static final CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field static final FORMAT_MAX_LENGTH:I = 0x44


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbrave/propagation/B3SingleFormat;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method static asciiToNewByteArray([CI)[B
    .locals 3
    .param p0, "buffer"    # [C
    .param p1, "length"    # I

    .line 296
    new-array v0, p1, [B

    .line 297
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 298
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static checkHyphen(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 260
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: expected a hyphen(-) delimiter at offset {0}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method static getCharBuffer()[C
    .locals 2

    .line 306
    sget-object v0, Lbrave/propagation/B3SingleFormat;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 307
    .local v0, "charBuffer":[C
    if-nez v0, :cond_0

    .line 308
    const/16 v1, 0x44

    new-array v0, v1, [C

    .line 309
    sget-object v1, Lbrave/propagation/B3SingleFormat;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 311
    :cond_0
    return-object v0
.end method

.method static isLowerHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 315
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
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static logInvalidSampled(I)V
    .locals 4
    .param p0, "pos"    # I

    .line 292
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v1, "Invalid input: expected 0, 1 or d for sampled at offset {0}"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method static notHexFollowsPos(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "end"    # I

    .line 266
    add-int/lit8 v0, p1, 0x2

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lbrave/propagation/B3SingleFormat;->isLowerHex(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseB3SingleFormat(Ljava/lang/CharSequence;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 2
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 126
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lbrave/propagation/B3SingleFormat;->parseB3SingleFormat(Ljava/lang/CharSequence;II)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    return-object v0
.end method

.method public static parseB3SingleFormat(Ljava/lang/CharSequence;II)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 27
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 136
    move/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    .line 137
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v4

    const-string v5, "Invalid input: empty"

    invoke-virtual {v4, v5, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-object v2

    .line 141
    :cond_0
    move v4, v3

    .line 142
    .local v4, "pos":I
    add-int/lit8 v5, v4, 0x1

    if-ne v5, v1, :cond_1

    .line 143
    invoke-static {v0, v4}, Lbrave/propagation/B3SingleFormat;->tryParseSamplingFlags(Ljava/lang/CharSequence;I)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v2

    return-object v2

    .line 147
    :cond_1
    const/16 v5, 0x21

    if-ge v1, v5, :cond_2

    .line 148
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v5

    const-string v6, "Invalid input: truncated"

    invoke-virtual {v5, v6, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    return-object v2

    .line 150
    :cond_2
    const/16 v5, 0x44

    if-le v1, v5, :cond_3

    .line 151
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v5

    const-string v6, "Invalid input: too long"

    invoke-virtual {v5, v6, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    return-object v2

    .line 156
    :cond_3
    add-int/lit8 v5, v4, 0x20

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4

    .line 157
    invoke-static {v0, v4, v1}, Lbrave/propagation/B3SingleFormat;->tryParse16HexCharacters(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    .line 158
    .local v5, "traceIdHigh":J
    add-int/lit8 v4, v4, 0x10

    .line 159
    invoke-static {v0, v4, v1}, Lbrave/propagation/B3SingleFormat;->tryParse16HexCharacters(Ljava/lang/CharSequence;II)J

    move-result-wide v7

    .local v7, "traceId":J
    goto :goto_0

    .line 161
    .end local v5    # "traceIdHigh":J
    .end local v7    # "traceId":J
    :cond_4
    const-wide/16 v5, 0x0

    .line 162
    .restart local v5    # "traceIdHigh":J
    invoke-static {v0, v4, v1}, Lbrave/propagation/B3SingleFormat;->tryParse16HexCharacters(Ljava/lang/CharSequence;II)J

    move-result-wide v7

    .line 164
    .restart local v7    # "traceId":J
    :goto_0
    add-int/lit8 v4, v4, 0x10

    .line 166
    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-nez v11, :cond_5

    cmp-long v11, v7, v9

    if-nez v11, :cond_5

    .line 167
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v9

    const-string v10, "Invalid input: expected a 16 or 32 lower hex trace ID at offset 0"

    invoke-virtual {v9, v10, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-object v2

    .line 171
    :cond_5
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lbrave/propagation/B3SingleFormat;->isLowerHex(C)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v9

    const-string v10, "Invalid input: trace ID is too long"

    invoke-virtual {v9, v10, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    return-object v2

    .line 176
    :cond_6
    add-int/lit8 v11, v4, 0x1

    .local v11, "pos":I
    invoke-static {v0, v4}, Lbrave/propagation/B3SingleFormat;->checkHyphen(Ljava/lang/CharSequence;I)Z

    move-result v4

    .end local v4    # "pos":I
    if-nez v4, :cond_7

    return-object v2

    .line 178
    :cond_7
    invoke-static {v0, v11, v1}, Lbrave/propagation/B3SingleFormat;->tryParse16HexCharacters(Ljava/lang/CharSequence;II)J

    move-result-wide v22

    .line 179
    .local v22, "spanId":J
    cmp-long v4, v22, v9

    if-nez v4, :cond_8

    .line 180
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v4

    const-string v9, "Invalid input: expected a 16 lower hex span ID at offset {0}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 181
    return-object v2

    .line 183
    :cond_8
    add-int/lit8 v11, v11, 0x10

    .line 185
    const/4 v4, 0x0

    .line 186
    .local v4, "flags":I
    const-wide/16 v12, 0x0

    .line 187
    .local v12, "parentId":J
    if-le v1, v11, :cond_12

    .line 188
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lbrave/propagation/B3SingleFormat;->isLowerHex(C)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 189
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v9

    const-string v10, "Invalid input: span ID is too long"

    invoke-virtual {v9, v10, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-object v2

    .line 197
    :cond_9
    add-int/lit8 v14, v11, 0x1

    if-ne v1, v14, :cond_a

    .line 198
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v9

    const-string v10, "Invalid input: truncated"

    invoke-virtual {v9, v10, v2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    return-object v2

    .line 201
    :cond_a
    add-int/lit8 v14, v11, 0x1

    .local v14, "pos":I
    invoke-static {v0, v11}, Lbrave/propagation/B3SingleFormat;->checkHyphen(Ljava/lang/CharSequence;I)Z

    move-result v11

    .end local v11    # "pos":I
    if-nez v11, :cond_b

    return-object v2

    .line 205
    :cond_b
    invoke-static {v0, v14, v1}, Lbrave/propagation/B3SingleFormat;->notHexFollowsPos(Ljava/lang/CharSequence;II)Z

    move-result v11

    .line 206
    .local v11, "afterSampledField":Z
    add-int/lit8 v15, v14, 0x1

    if-eq v1, v15, :cond_c

    if-eqz v11, :cond_f

    .line 207
    :cond_c
    invoke-static {v0, v14}, Lbrave/propagation/B3SingleFormat;->parseFlags(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 208
    if-nez v4, :cond_d

    return-object v2

    .line 209
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 210
    if-eqz v11, :cond_f

    add-int/lit8 v15, v14, 0x1

    .local v15, "pos":I
    invoke-static {v0, v14}, Lbrave/propagation/B3SingleFormat;->checkHyphen(Ljava/lang/CharSequence;I)Z

    move-result v14

    .end local v14    # "pos":I
    if-nez v14, :cond_e

    return-object v2

    .line 213
    :cond_e
    move v14, v15

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    :cond_f
    if-gt v1, v14, :cond_11

    if-eqz v11, :cond_10

    goto :goto_1

    .line 220
    .end local v11    # "afterSampledField":Z
    :cond_10
    move-wide/from16 v24, v12

    move v2, v14

    goto :goto_2

    .line 215
    .restart local v11    # "afterSampledField":Z
    :cond_11
    :goto_1
    invoke-static {v0, v14, v1}, Lbrave/propagation/B3SingleFormat;->tryParseParentId(Ljava/lang/CharSequence;II)J

    move-result-wide v12

    .line 216
    cmp-long v9, v12, v9

    if-nez v9, :cond_10

    return-object v2

    .line 220
    .end local v14    # "pos":I
    .local v11, "pos":I
    :cond_12
    move v2, v11

    move-wide/from16 v24, v12

    .end local v11    # "pos":I
    .end local v12    # "parentId":J
    .local v2, "pos":I
    .local v24, "parentId":J
    :goto_2
    new-instance v15, Lbrave/propagation/TraceContext;

    const-wide/16 v16, 0x0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    move-object v9, v15

    move v10, v4

    move-wide v11, v5

    move-wide v13, v7

    move-object v0, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v24

    move-wide/from16 v19, v22

    invoke-direct/range {v9 .. v21}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    .line 220
    invoke-static {v0}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    return-object v0
.end method

.method static parseFlags(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 277
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 278
    .local v0, "sampledChar":C
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 279
    const/16 v1, 0xe

    .local v1, "flags":I
    :goto_0
    goto :goto_1

    .line 280
    .end local v1    # "flags":I
    :cond_0
    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    .line 281
    const/4 v1, 0x6

    goto :goto_0

    .line 282
    :cond_1
    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 283
    const/4 v1, 0x4

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p1}, Lbrave/propagation/B3SingleFormat;->logInvalidSampled(I)V

    .line 286
    const/4 v1, 0x0

    .line 288
    .restart local v1    # "flags":I
    :goto_1
    return v1
.end method

.method static tryParse16HexCharacters(Ljava/lang/CharSequence;II)J
    .locals 3
    .param p0, "lowerHex"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 270
    add-int/lit8 v0, p1, 0x10

    .line 271
    .local v0, "endIndex":I
    if-le v0, p2, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 272
    :cond_0
    invoke-static {p0, p1, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v1

    return-wide v1
.end method

.method static tryParseParentId(Ljava/lang/CharSequence;II)J
    .locals 8
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "endIndex"    # I

    .line 233
    add-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ge p2, v0, :cond_0

    .line 234
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v4, "Invalid input: truncated"

    invoke-virtual {v0, v4, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-wide v2

    .line 238
    :cond_0
    invoke-static {p0, p1, p2}, Lbrave/propagation/B3SingleFormat;->tryParse16HexCharacters(Ljava/lang/CharSequence;II)J

    move-result-wide v4

    .line 239
    .local v4, "parentId":J
    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 240
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v6, "Invalid input: expected a 16 lower hex parent ID at offset {0}"

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 242
    return-wide v2

    .line 245
    :cond_1
    add-int/lit8 p1, p1, 0x10

    .line 246
    if-eq p2, p1, :cond_2

    .line 247
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v6, "Invalid input: parent ID is too long"

    invoke-virtual {v0, v6, v1}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    return-wide v2

    .line 250
    :cond_2
    return-wide v4
.end method

.method static tryParseSamplingFlags(Ljava/lang/CharSequence;I)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 2
    .param p0, "b3"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 254
    invoke-static {p0, p1}, Lbrave/propagation/B3SingleFormat;->parseFlags(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 255
    .local v0, "flags":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 256
    :cond_0
    invoke-static {v0}, Lbrave/propagation/SamplingFlags;->toSamplingFlags(I)Lbrave/propagation/SamplingFlags;

    move-result-object v1

    invoke-static {v1}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/SamplingFlags;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v1

    return-object v1
.end method

.method static writeB3SingleFormat(Lbrave/propagation/TraceContext;J[C)I
    .locals 9
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .param p1, "parentId"    # J
    .param p3, "result"    # [C

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "pos":I
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v1

    .line 100
    .local v1, "traceIdHigh":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 101
    invoke-static {p3, v0, v1, v2}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 102
    add-int/lit8 v0, v0, 0x10

    .line 104
    :cond_0
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v5

    invoke-static {p3, v0, v5, v6}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 105
    add-int/lit8 v0, v0, 0x10

    .line 106
    add-int/lit8 v5, v0, 0x1

    .local v5, "pos":I
    const/16 v6, 0x2d

    aput-char v6, p3, v0

    .line 107
    .end local v0    # "pos":I
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v7

    invoke-static {p3, v5, v7, v8}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 108
    add-int/lit8 v5, v5, 0x10

    .line 110
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    .local v0, "sampled":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 112
    add-int/lit8 v7, v5, 0x1

    .local v7, "pos":I
    aput-char v6, p3, v5

    .line 113
    .end local v5    # "pos":I
    add-int/lit8 v5, v7, 0x1

    .restart local v5    # "pos":I
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->debug()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x64

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x31

    goto :goto_0

    :cond_2
    const/16 v8, 0x30

    :goto_0
    aput-char v8, p3, v7

    .line 116
    .end local v7    # "pos":I
    :cond_3
    cmp-long v3, p1, v3

    if-eqz v3, :cond_4

    .line 117
    add-int/lit8 v3, v5, 0x1

    .local v3, "pos":I
    aput-char v6, p3, v5

    .line 118
    .end local v5    # "pos":I
    invoke-static {p3, v3, p1, p2}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 119
    add-int/lit8 v5, v3, 0x10

    .line 121
    .end local v3    # "pos":I
    .restart local v5    # "pos":I
    :cond_4
    return v5
.end method

.method public static writeB3SingleFormat(Lbrave/propagation/TraceContext;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Lbrave/propagation/TraceContext;

    .line 82
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->getCharBuffer()[C

    move-result-object v0

    .line 83
    .local v0, "buffer":[C
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->writeB3SingleFormat(Lbrave/propagation/TraceContext;J[C)I

    move-result v1

    .line 84
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static writeB3SingleFormatAsBytes(Lbrave/propagation/TraceContext;)[B
    .locals 3
    .param p0, "context"    # Lbrave/propagation/TraceContext;

    .line 92
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->getCharBuffer()[C

    move-result-object v0

    .line 93
    .local v0, "buffer":[C
    invoke-virtual {p0}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->writeB3SingleFormat(Lbrave/propagation/TraceContext;J[C)I

    move-result v1

    .line 94
    .local v1, "length":I
    invoke-static {v0, v1}, Lbrave/propagation/B3SingleFormat;->asciiToNewByteArray([CI)[B

    move-result-object v2

    return-object v2
.end method

.method public static writeB3SingleFormatWithoutParentId(Lbrave/propagation/TraceContext;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Lbrave/propagation/TraceContext;

    .line 58
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->getCharBuffer()[C

    move-result-object v0

    .line 59
    .local v0, "buffer":[C
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->writeB3SingleFormat(Lbrave/propagation/TraceContext;J[C)I

    move-result v1

    .line 60
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static writeB3SingleFormatWithoutParentIdAsBytes(Lbrave/propagation/TraceContext;)[B
    .locals 3
    .param p0, "context"    # Lbrave/propagation/TraceContext;

    .line 68
    invoke-static {}, Lbrave/propagation/B3SingleFormat;->getCharBuffer()[C

    move-result-object v0

    .line 69
    .local v0, "buffer":[C
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lbrave/propagation/B3SingleFormat;->writeB3SingleFormat(Lbrave/propagation/TraceContext;J[C)I

    move-result v1

    .line 70
    .local v1, "length":I
    invoke-static {v0, v1}, Lbrave/propagation/B3SingleFormat;->asciiToNewByteArray([CI)[B

    move-result-object v2

    return-object v2
.end method
