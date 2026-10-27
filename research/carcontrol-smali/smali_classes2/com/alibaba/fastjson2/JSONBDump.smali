.class final Lcom/alibaba/fastjson2/JSONBDump;
.super Ljava/lang/Object;
.source "JSONBDump.java"


# static fields
.field static GB18030:Ljava/nio/charset/Charset;


# instance fields
.field final bytes:[B

.field final jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

.field lastReference:Ljava/lang/String;

.field offset:I

.field final raw:Z

.field strBegin:I

.field strlen:I

.field strtype:B

.field final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field final symbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field type:B


# direct methods
.method public constructor <init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 50
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 51
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 52
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 54
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    .line 41
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    .line 42
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofPretty()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 45
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    return-void
.end method

.method private dumpAny()V
    .locals 18

    move-object/from16 v0, p0

    .line 58
    iget v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 62
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v2, v1

    iput-byte v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    const/16 v4, -0x5a

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1c

    const/16 v6, 0x48

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x8

    if-eq v1, v6, :cond_1b

    const/16 v6, -0x58

    if-eq v1, v6, :cond_1a

    const/16 v6, -0x57

    if-eq v1, v6, :cond_19

    const-string v6, "#"

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    const-wide/16 v12, 0x0

    const/16 v4, 0x28

    const/16 v14, 0x20

    const/16 v15, 0x38

    const/16 v11, 0x30

    const-wide/16 v16, 0xff

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/16 v4, -0x10

    if-lt v1, v4, :cond_1

    const/16 v4, 0x2f

    if-gt v1, v4, :cond_1

    .line 388
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_1
    const/16 v4, -0x28

    if-lt v1, v4, :cond_2

    const/16 v5, -0x11

    if-gt v1, v5, :cond_2

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x8

    int-to-long v1, v1

    .line 394
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_2
    if-lt v1, v11, :cond_3

    const/16 v4, 0x3f

    if-gt v1, v4, :cond_3

    sub-int/2addr v1, v15

    shl-int/2addr v1, v9

    add-int/lit8 v4, v3, 0x1

    .line 399
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 401
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_3
    const/16 v4, 0x40

    if-lt v1, v4, :cond_4

    const/16 v4, 0x47

    if-gt v1, v4, :cond_4

    add-int/lit8 v1, v1, -0x44

    shl-int/2addr v1, v8

    add-int/lit8 v4, v3, 0x1

    .line 406
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 409
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_4
    const/16 v4, -0x38

    if-lt v1, v4, :cond_5

    const/16 v4, -0x29

    if-gt v1, v4, :cond_5

    add-int/lit8 v1, v1, 0x30

    shl-int/2addr v1, v9

    add-int/lit8 v4, v3, 0x1

    .line 414
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 416
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    :cond_5
    const/16 v4, -0x40

    if-lt v1, v4, :cond_6

    const/16 v4, -0x39

    if-gt v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x3c

    shl-int/2addr v1, v8

    add-int/lit8 v4, v3, 0x1

    .line 421
    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v9

    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 424
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    :cond_6
    const/16 v2, -0x6c

    if-lt v1, v2, :cond_7

    const/16 v2, -0x5c

    if-gt v1, v2, :cond_7

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpArray()V

    return-void

    :cond_7
    const/16 v2, 0x49

    if-lt v1, v2, :cond_a

    const/16 v2, 0x79

    if-ne v1, v2, :cond_8

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x49

    .line 436
    :goto_0
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    if-gez v1, :cond_9

    .line 439
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v2, "{\"$symbol\":"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 440
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    iget v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 441
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 445
    :cond_9
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 446
    iget v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 447
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 451
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 249
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v2, :cond_b

    .line 250
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_b
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONBDump;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 256
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v2

    .line 258
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v3, :cond_d

    .line 260
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 235
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    if-nez v1, :cond_e

    const-string v1, "GB18030"

    .line 236
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    .line 239
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    .line 240
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    sget-object v5, Lcom/alibaba/fastjson2/JSONBDump;->GB18030:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 241
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 242
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 219
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    .line 222
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v2, :cond_f

    .line 223
    new-array v2, v1, [B

    .line 224
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v3, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 227
    :cond_f
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    :goto_2
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 231
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 203
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    .line 206
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v2, :cond_10

    .line 207
    new-array v2, v1, [B

    .line 208
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v4, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v3, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    .line 211
    :cond_10
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 214
    :goto_3
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 215
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 196
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    .line 197
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 198
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 199
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 183
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v1

    .line 185
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 186
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 187
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    add-int/lit8 v1, v3, 0x3

    .line 104
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    .line 109
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 110
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 81
    :pswitch_7
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt8(B)V

    return-void

    .line 84
    :pswitch_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-short v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16(S)V

    return-void

    .line 130
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 131
    new-array v2, v1, [B

    .line 132
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 134
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;)V

    return-void

    .line 139
    :pswitch_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v2

    .line 139
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 268
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v1, :cond_11

    .line 272
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_4

    .line 274
    :cond_11
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v1, v3

    .line 276
    :goto_4
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1, v12, v13, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void

    .line 280
    :pswitch_c
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v2

    .line 281
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2, v12, v13, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void

    :pswitch_d
    add-int/lit8 v1, v3, 0x3

    .line 145
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    .line 150
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 151
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 152
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 151
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void

    .line 156
    :pswitch_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v2

    int-to-float v2, v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void

    :pswitch_f
    add-int/lit8 v1, v3, 0x7

    .line 162
    aget-byte v1, v2, v1

    int-to-long v5, v1

    and-long v5, v5, v16

    add-int/lit8 v1, v3, 0x6

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v9

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x5

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v8

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x4

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long v7, v12, v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v14

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    aget-byte v1, v2, v3

    int-to-long v1, v1

    shl-long/2addr v1, v15

    add-long/2addr v5, v1

    add-int/2addr v3, v9

    .line 171
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 172
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 173
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 172
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    .line 177
    :pswitch_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v2

    long-to-double v2, v2

    .line 177
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    .line 78
    :pswitch_11
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    .line 75
    :pswitch_12
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void

    .line 69
    :pswitch_13
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void

    .line 72
    :pswitch_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void

    .line 66
    :pswitch_15
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 376
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v1

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v3

    .line 378
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-long v5, v3

    .line 379
    invoke-static {v1, v2, v5, v6}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    .line 378
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInstant(Ljava/time/Instant;)V

    goto/16 :goto_7

    :pswitch_17
    add-int/lit8 v1, v3, 0x7

    .line 115
    aget-byte v1, v2, v1

    int-to-long v5, v1

    and-long v5, v5, v16

    add-int/lit8 v1, v3, 0x6

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v9

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x5

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long/2addr v12, v8

    add-long/2addr v5, v12

    add-int/lit8 v1, v3, 0x4

    aget-byte v1, v2, v1

    int-to-long v12, v1

    and-long v12, v12, v16

    shl-long v7, v12, v7

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v14

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v4

    add-long/2addr v5, v7

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long/2addr v7, v11

    add-long/2addr v5, v7

    aget-byte v1, v2, v3

    int-to-long v1, v1

    shl-long/2addr v1, v15

    add-long/2addr v5, v1

    add-int/2addr v3, v9

    .line 124
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 125
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 349
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    goto/16 :goto_7

    .line 290
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    goto :goto_5

    .line 296
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 298
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_5
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_14

    if-nez v5, :cond_13

    .line 303
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONBDump;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 305
    :cond_13
    iget v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 306
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/JSONBDump;->dumpObject(Ljava/lang/String;)V

    return-void

    .line 310
    :cond_14
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 312
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v3, "@type"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 313
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v5, :cond_17

    if-gez v1, :cond_16

    .line 316
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v2, :cond_15

    .line 317
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 319
    :cond_15
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 323
    :cond_16
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 326
    :cond_17
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v2, :cond_18

    .line 327
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 329
    :cond_18
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 333
    :goto_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "@value"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 334
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 337
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    .line 341
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 342
    new-array v2, v1, [B

    .line 343
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v2, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 345
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBinary([B)V

    return-void

    .line 191
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 192
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeChar(C)V

    return-void

    :cond_19
    add-int/lit8 v1, v3, 0x1

    .line 367
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 368
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v4, v2, v4

    add-int/lit8 v5, v1, 0x1

    .line 369
    iput v5, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v2, v1

    .line 371
    invoke-static {v3, v4, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    .line 372
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDate(Ljava/time/LocalDate;)V

    goto :goto_7

    :cond_1a
    add-int/lit8 v1, v3, 0x1

    .line 353
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v2, v3

    shl-int/2addr v3, v9

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 354
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v6, v2, v4

    add-int/lit8 v3, v1, 0x1

    .line 355
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v7, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 356
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v8, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 357
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v9, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 358
    iput v1, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v10, v2, v3

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v11

    .line 362
    invoke-static/range {v5 .. v11}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 363
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V

    goto :goto_7

    :cond_1b
    :pswitch_1c
    add-int/lit8 v1, v3, 0x3

    .line 94
    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    add-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/2addr v1, v4

    aget-byte v2, v2, v3

    shl-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x4

    .line 99
    iput v3, v0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 100
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void

    .line 383
    :cond_1c
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson2/JSONBDump;->dumpObject(Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch -0x70
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x55
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_17
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpArray()V
    .locals 3

    .line 456
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    const/16 v1, -0x5c

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x6c

    :goto_0
    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 466
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    .line 467
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    move-result v1

    if-nez v1, :cond_2

    iget-byte v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    const/16 v2, -0x51

    if-eq v1, v2, :cond_2

    const/16 v2, 0x49

    if-lt v1, v2, :cond_3

    const/16 v2, 0x78

    if-gt v1, v2, :cond_3

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    .line 470
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 475
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    if-eqz v1, :cond_4

    .line 478
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 481
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isReference()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 482
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    goto :goto_2

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method private dumpObject(Ljava/lang/String;)V
    .locals 6

    const/16 v0, -0x5b

    if-eqz p1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 494
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "@type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 496
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte p1, p1, v1

    if-ne p1, v0, :cond_1

    .line 499
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v0, "{}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 500
    iget p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return-void

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    :goto_0
    const/4 p1, 0x0

    .line 508
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v1, v2

    const/16 v3, -0x6d

    if-eq v1, v3, :cond_e

    if-eq v1, v0, :cond_d

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_8

    packed-switch v1, :pswitch_data_0

    .line 556
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isString()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    const/16 v2, -0x10

    if-lt v1, v2, :cond_3

    const/16 v2, 0x48

    if-gt v1, v2, :cond_3

    .line 560
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 561
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v2

    .line 560
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    goto/16 :goto_2

    :cond_3
    const/16 v2, -0x28

    if-lt v1, v2, :cond_4

    const/16 v2, -0x11

    if-le v1, v2, :cond_5

    :cond_4
    const/16 v2, -0x42

    if-ne v1, v2, :cond_6

    .line 566
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    .line 567
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v2

    .line 566
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    goto/16 :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 571
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 574
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 514
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 515
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 518
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 519
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 552
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string v2, "null"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 553
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 526
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isInt()Z

    move-result v1

    const-string v2, "#"

    if-eqz v1, :cond_b

    .line 528
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v1

    .line 529
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v3, :cond_9

    .line 530
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    .line 532
    :cond_9
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 536
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "symbol not found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v3

    .line 542
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->raw:Z

    if-eqz v4, :cond_c

    .line 544
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    .line 546
    :cond_c
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 511
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 591
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    .line 522
    :cond_e
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 581
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isReference()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 584
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpReference()V

    goto/16 :goto_1

    .line 588
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONBDump;->dumpAny()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpReference()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v1, "{\"$ref\":"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readReference()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "#-1"

    .line 598
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->lastReference:Ljava/lang/String;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    .line 938
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbols:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 944
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "symbol not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isInt()Z
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, -0x46

    if-lt v0, v1, :cond_0

    const/16 v1, 0x48

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, -0x53

    if-eq v0, v1, :cond_2

    const/16 v1, -0x54

    if-eq v0, v1, :cond_2

    const/16 v1, -0x55

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isReference()Z
    .locals 3

    .line 834
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, v0

    const/16 v1, -0x6d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isString()Z
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v1

    const/16 v1, 0x49

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readBigInteger()Ljava/math/BigInteger;
    .locals 15

    .line 757
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    int-to-long v0, v1

    .line 759
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v3, 0x38

    const/16 v4, 0x30

    const/16 v5, 0x8

    if-lt v1, v4, :cond_1

    const/16 v6, 0x3f

    if-gt v1, v6, :cond_1

    sub-int/2addr v1, v3

    shl-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    .line 763
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 765
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v6, 0x40

    const/16 v7, 0x10

    if-lt v1, v6, :cond_2

    const/16 v6, 0x47

    if-gt v1, v6, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/2addr v1, v7

    add-int/lit8 v3, v2, 0x1

    .line 769
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    .line 772
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v6, -0x6f

    if-eq v1, v6, :cond_6

    const/16 v6, -0x42

    const/16 v8, 0x18

    if-eq v1, v6, :cond_5

    const/16 v3, 0x48

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 830
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt64Value()J

    move-result-wide v0

    .line 812
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 817
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v0

    .line 818
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v0, :cond_3

    .line 821
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 823
    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v2

    .line 825
    :goto_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 781
    :pswitch_2
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0

    .line 779
    :pswitch_3
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    :cond_4
    add-int/lit8 v1, v2, 0x3

    .line 783
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/2addr v0, v8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x4

    .line 788
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    int-to-long v0, v1

    .line 789
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_5
    add-int/lit8 v1, v2, 0x7

    .line 791
    aget-byte v1, v0, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v5

    add-long/2addr v9, v13

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long v6, v13, v7

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v4

    add-long/2addr v9, v6

    aget-byte v0, v0, v2

    int-to-long v0, v0

    shl-long/2addr v0, v3

    add-long/2addr v9, v0

    add-int/2addr v2, v5

    .line 800
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 801
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 805
    :cond_6
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readInt32Value()I

    move-result v0

    .line 806
    new-array v1, v0, [B

    .line 807
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 809
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x51
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x47
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method readInt32Value()I
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x30

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    .line 611
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    return v1

    :cond_1
    const/16 v3, 0x40

    if-lt v1, v3, :cond_2

    const/16 v3, 0x47

    if-gt v1, v3, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    .line 616
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    return v1

    :cond_2
    const/16 v3, -0x54

    if-eq v1, v3, :cond_4

    const/16 v3, -0x53

    if-eq v1, v3, :cond_4

    const/16 v3, 0x48

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 635
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInt32Value not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    add-int/lit8 v1, v2, 0x3

    .line 625
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x4

    .line 630
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return v1
.end method

.method readInt64Value()J
    .locals 15

    .line 639
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/16 v3, 0x38

    const/16 v4, 0x30

    const/16 v5, 0x8

    if-lt v1, v4, :cond_1

    const/16 v6, 0x3f

    if-gt v1, v6, :cond_1

    sub-int/2addr v1, v3

    shl-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    .line 645
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_1
    const/16 v6, 0x40

    const/16 v7, 0x10

    if-lt v1, v6, :cond_2

    const/16 v6, 0x47

    if-gt v1, v6, :cond_2

    add-int/lit8 v1, v1, -0x44

    shl-int/2addr v1, v7

    add-int/lit8 v3, v2, 0x1

    .line 650
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_2
    const/16 v6, -0x28

    if-lt v1, v6, :cond_3

    const/16 v8, -0x11

    if-gt v1, v8, :cond_3

    const-wide/16 v2, -0x8

    sub-int/2addr v1, v6

    int-to-long v0, v1

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    const/16 v6, -0x38

    if-lt v1, v6, :cond_4

    const/16 v6, -0x29

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, v1, 0x30

    shl-int/2addr v1, v5

    add-int/lit8 v3, v2, 0x1

    .line 660
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_4
    const/16 v6, -0x40

    if-lt v1, v6, :cond_5

    const/16 v6, -0x39

    if-gt v1, v6, :cond_5

    add-int/lit8 v1, v1, 0x3c

    shl-int/2addr v1, v7

    add-int/lit8 v3, v2, 0x1

    .line 665
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_5
    const/16 v6, 0x48

    const/16 v8, 0x18

    if-eq v1, v6, :cond_6

    const-wide/16 v9, 0x3e8

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 722
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readInt64Value not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    .line 672
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    int-to-long v0, v0

    return-wide v0

    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    .line 674
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v2

    shl-int/2addr v0, v5

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x2

    .line 677
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    int-to-long v0, v1

    return-wide v0

    :pswitch_2
    add-int/lit8 v1, v2, 0x3

    .line 680
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/2addr v0, v8

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x4

    .line 685
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v9

    return-wide v0

    :pswitch_3
    add-int/lit8 v1, v2, 0x3

    .line 689
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/2addr v0, v8

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-int/lit8 v2, v2, 0x4

    .line 694
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    mul-long/2addr v0, v9

    return-wide v0

    :pswitch_4
    add-int/lit8 v1, v2, 0x7

    .line 708
    aget-byte v1, v0, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v5

    add-long/2addr v9, v13

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long v6, v13, v7

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v8

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    add-long/2addr v9, v6

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v11

    shl-long/2addr v6, v4

    add-long/2addr v9, v6

    aget-byte v0, v0, v2

    int-to-long v0, v0

    shl-long/2addr v0, v3

    add-long/2addr v9, v0

    add-int/2addr v2, v5

    .line 717
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return-wide v9

    :cond_6
    :pswitch_5
    add-int/lit8 v1, v2, 0x3

    .line 699
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v5

    add-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v1, v3

    aget-byte v0, v0, v2

    shl-int/2addr v0, v8

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x4

    .line 704
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    int-to-long v0, v1

    return-wide v0

    :pswitch_data_0
    .packed-switch -0x55
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x44
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method readLength()I
    .locals 5

    .line 726
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v0, v1

    const/16 v3, -0x10

    if-lt v1, v3, :cond_0

    const/16 v3, 0x2f

    if-gt v1, v3, :cond_0

    return v1

    :cond_0
    const/16 v3, 0x40

    if-lt v1, v3, :cond_1

    const/16 v3, 0x47

    if-gt v1, v3, :cond_1

    add-int/lit8 v1, v1, -0x44

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    .line 732
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    return v1

    :cond_1
    const/16 v3, -0x28

    if-lt v1, v3, :cond_2

    const/16 v4, -0x11

    if-gt v1, v4, :cond_2

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    return v1

    :cond_2
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_3

    add-int/lit8 v1, v1, -0x38

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    .line 742
    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    return v1

    :cond_3
    const/16 v3, 0x48

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, v2, 0x1

    .line 747
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v1

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    return v2

    .line 753
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support length type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readReference()Ljava/lang/String;
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v1

    const/16 v2, -0x6d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 914
    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    .line 915
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 919
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reference not support input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->type:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .line 843
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strtype:B

    const/16 v1, -0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_0
    iput v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    const/16 v1, 0x49

    if-lt v0, v1, :cond_2

    const/16 v2, 0x79

    if-gt v0, v2, :cond_2

    if-ne v0, v2, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 854
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    .line 856
    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 859
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x7a

    if-ne v0, v1, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 862
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 864
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    .line 866
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 867
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 868
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_4
    const/16 v1, 0x7c

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 870
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 871
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 873
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-nez v0, :cond_5

    .line 874
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    new-array v1, v0, [B

    .line 875
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 877
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return-object v0

    .line 881
    :cond_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_1

    :cond_6
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_9

    .line 883
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONBDump;->readLength()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    .line 884
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strBegin:I

    .line 886
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_7

    .line 887
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    new-array v1, v0, [B

    .line 888
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UTF16:Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 890
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return-object v0

    .line 894
    :cond_7
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 901
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    if-gez v1, :cond_8

    .line 902
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/SymbolTable;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 905
    :cond_8
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v4, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 906
    iget v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strlen:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    return-object v1

    :cond_9
    const/16 v1, -0x10

    if-lt v0, v1, :cond_a

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_a

    .line 896
    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 898
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString not support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->strtype:B

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONB;->typeName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONBDump;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONBDump;->jsonWriter:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
