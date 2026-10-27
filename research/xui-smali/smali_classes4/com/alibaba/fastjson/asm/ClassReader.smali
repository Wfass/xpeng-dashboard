.class public Lcom/alibaba/fastjson/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private readAnnotations:Z

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "readAnnotations"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->readAnnotations:Z

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 25
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 26
    .local v2, "len":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 27
    nop

    .line 34
    .end local v2    # "len":I
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 39
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    array-length v0, v0

    .line 41
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "max":I
    const/16 v2, 0xa

    .line 44
    .local v2, "index":I
    const/4 v3, 0x1

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "max":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 45
    iget-object v5, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v6, v2, 0x1

    aput v6, v5, v1

    .line 47
    iget-object v5, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    aget-byte v5, v5, v2

    const/4 v6, 0x3

    if-eq v5, v3, :cond_2

    const/16 v7, 0xf

    if-eq v5, v7, :cond_1

    const/16 v7, 0x12

    if-eq v5, v7, :cond_0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    .line 74
    goto :goto_2

    .line 59
    :pswitch_0
    const/16 v6, 0x9

    .line 60
    .local v6, "size":I
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_2

    .line 55
    .end local v6    # "size":I
    :cond_0
    :pswitch_1
    const/4 v6, 0x5

    .line 56
    .restart local v6    # "size":I
    goto :goto_2

    .line 63
    .end local v6    # "size":I
    :cond_1
    const/4 v6, 0x4

    .line 64
    .restart local v6    # "size":I
    goto :goto_2

    .line 66
    .end local v6    # "size":I
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    add-int/2addr v6, v5

    .line 67
    .restart local v6    # "size":I
    if-le v6, v4, :cond_3

    .line 68
    move v4, v6

    .line 74
    :cond_3
    :goto_2
    move v5, v6

    .line 77
    .end local v6    # "size":I
    .local v5, "size":I
    add-int/2addr v2, v5

    .line 44
    .end local v5    # "size":I
    add-int/2addr v1, v3

    goto :goto_1

    .line 79
    .end local v1    # "i":I
    :cond_4
    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    .line 81
    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 82
    return-void

    .line 30
    .end local v4    # "max":I
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    .local v1, "buf":[B
    .local v2, "len":I
    :cond_5
    if-lez v2, :cond_6

    .line 31
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    .end local v2    # "len":I
    :cond_6
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getAttributes()I
    .locals 5

    .line 166
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    const/4 v2, 0x6

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 168
    .local v0, "u":I
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 169
    add-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_0

    .line 170
    add-int/lit8 v4, v0, 0xc

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 169
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 172
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 168
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 175
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    :goto_2
    if-lez v1, :cond_3

    .line 176
    add-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .restart local v3    # "j":I
    :goto_3
    if-lez v3, :cond_2

    .line 177
    add-int/lit8 v4, v0, 0xc

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v0, v4

    .line 176
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 179
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x8

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 182
    .end local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v0, 0x2

    return v1
.end method

.method private readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 284
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 285
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I
    .locals 20
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;
    .param p2, "c"    # [C
    .param p3, "u"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 191
    move/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 192
    .local v3, "access":I
    add-int/lit8 v4, v2, 0x2

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x4

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "desc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 195
    .local v6, "v":I
    const/4 v7, 0x0

    .line 198
    .local v7, "w":I
    add-int/lit8 v8, v2, 0x6

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 199
    .local v8, "j":I
    add-int/lit8 v2, v2, 0x8

    .line 200
    .end local p3    # "u":I
    .local v2, "u":I
    :goto_0
    if-lez v8, :cond_1

    .line 201
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "attrName":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x2

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v10

    .line 203
    .local v10, "attrSize":I
    add-int/lit8 v2, v2, 0x6

    .line 206
    const-string v11, "Code"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 207
    move v6, v2

    .line 209
    :cond_0
    add-int/2addr v2, v10

    .line 200
    .end local v10    # "attrSize":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 212
    .end local v9    # "attrName":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    goto :goto_2

    .line 214
    :cond_2
    add-int/lit8 v7, v7, 0x2

    .line 215
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 216
    add-int/lit8 v7, v7, 0x2

    .line 215
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 221
    :cond_3
    :goto_2
    move-object/from16 v9, p1

    invoke-virtual {v9, v3, v4, v5}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;

    move-result-object v10

    .line 223
    .local v10, "mv":Lcom/alibaba/fastjson/asm/MethodCollector;
    if-eqz v10, :cond_b

    if-eqz v6, :cond_b

    .line 224
    add-int/lit8 v11, v6, 0x4

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v11

    .line 225
    .local v11, "codeLength":I
    add-int/lit8 v6, v6, 0x8

    .line 227
    move v12, v6

    .line 228
    .local v12, "codeStart":I
    add-int v13, v6, v11

    .line 229
    .local v13, "codeEnd":I
    move v6, v13

    .line 231
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 232
    add-int/lit8 v6, v6, 0x2

    .line 233
    :goto_3
    if-lez v8, :cond_4

    .line 234
    add-int/lit8 v6, v6, 0x8

    .line 233
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 238
    :cond_4
    const/4 v14, 0x0

    .line 239
    .local v14, "varTable":I
    const/4 v15, 0x0

    .line 240
    .local v15, "varTypeTable":I
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 241
    add-int/lit8 v6, v6, 0x2

    .line 242
    :goto_4
    if-lez v8, :cond_7

    .line 243
    move/from16 v16, v3

    invoke-direct {v0, v6, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "attrName":Ljava/lang/String;
    .local v16, "access":I
    move-object/from16 v17, v4

    const-string v4, "LocalVariableTable"

    .end local v4    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    add-int/lit8 v4, v6, 0x6

    .line 249
    .end local v14    # "varTable":I
    .local v4, "varTable":I
    move v14, v4

    goto :goto_5

    .line 246
    .end local v4    # "varTable":I
    .restart local v14    # "varTable":I
    :cond_5
    const-string v4, "LocalVariableTypeTable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 247
    add-int/lit8 v4, v6, 0x6

    .line 249
    .end local v15    # "varTypeTable":I
    .local v4, "varTypeTable":I
    move v15, v4

    .end local v4    # "varTypeTable":I
    .restart local v15    # "varTypeTable":I
    :cond_6
    :goto_5
    add-int/lit8 v4, v6, 0x2

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v4

    const/16 v18, 0x6

    add-int v18, v18, v4

    add-int v6, v6, v18

    .line 242
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_4

    .line 252
    .end local v16    # "access":I
    .end local v17    # "name":Ljava/lang/String;
    .local v3, "access":I
    .local v4, "name":Ljava/lang/String;
    :cond_7
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "access":I
    .end local v4    # "name":Ljava/lang/String;
    .restart local v16    # "access":I
    .restart local v17    # "name":Ljava/lang/String;
    move v6, v12

    .line 254
    if-eqz v14, :cond_a

    .line 255
    if-eqz v15, :cond_9

    .line 256
    invoke-direct {v0, v15}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    .line 257
    .local v3, "k":I
    add-int/lit8 v4, v15, 0x2

    .line 258
    .end local v7    # "w":I
    .local v4, "w":I
    new-array v7, v3, [I

    .line 259
    .local v7, "typeTable":[I
    :goto_6
    if-lez v3, :cond_8

    .line 260
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v18, v4, 0x6

    aput v18, v7, v3

    .line 261
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v19, v5

    add-int/lit8 v5, v4, 0x8

    .end local v5    # "desc":Ljava/lang/String;
    .local v19, "desc":Ljava/lang/String;
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v7, v3

    .line 262
    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v7, v3

    .line 263
    add-int/lit8 v4, v4, 0xa

    .line 258
    move-object/from16 v5, v19

    goto :goto_6

    .line 266
    .end local v3    # "k":I
    .end local v7    # "typeTable":[I
    .end local v19    # "desc":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v5

    goto :goto_7

    .end local v4    # "w":I
    .local v7, "w":I
    :cond_9
    move-object/from16 v19, v5

    move v4, v7

    .end local v5    # "desc":Ljava/lang/String;
    .end local v7    # "w":I
    .restart local v4    # "w":I
    .restart local v19    # "desc":Ljava/lang/String;
    :goto_7
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 267
    .restart local v3    # "k":I
    add-int/lit8 v4, v14, 0x2

    .line 268
    move v7, v4

    .end local v4    # "w":I
    .restart local v7    # "w":I
    :goto_8
    if-lez v3, :cond_c

    .line 269
    add-int/lit8 v4, v7, 0x8

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 270
    .local v4, "index":I
    add-int/lit8 v5, v7, 0x4

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5, v4}, Lcom/alibaba/fastjson/asm/MethodCollector;->visitLocalVariable(Ljava/lang/String;I)V

    .line 271
    add-int/lit8 v7, v7, 0xa

    .line 268
    .end local v4    # "index":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 275
    .end local v3    # "k":I
    .end local v11    # "codeLength":I
    .end local v12    # "codeStart":I
    .end local v13    # "codeEnd":I
    .end local v14    # "varTable":I
    .end local v15    # "varTypeTable":I
    .end local v19    # "desc":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v5

    .end local v5    # "desc":Ljava/lang/String;
    .restart local v19    # "desc":Ljava/lang/String;
    goto :goto_9

    .end local v16    # "access":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "desc":Ljava/lang/String;
    .local v3, "access":I
    .local v4, "name":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_b
    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    .end local v3    # "access":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "desc":Ljava/lang/String;
    .restart local v16    # "access":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v19    # "desc":Ljava/lang/String;
    :cond_c
    :goto_9
    return v2
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 10
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .line 300
    add-int v0, p1, p2

    .line 301
    .local v0, "endIndex":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 302
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 304
    .local v2, "strLen":I
    const/4 v3, 0x0

    .line 305
    .local v3, "st":I
    const/4 v4, 0x0

    move v5, v2

    move v2, p1

    move p1, v4

    .line 306
    .local v2, "index":I
    .local v5, "strLen":I
    .local p1, "cc":C
    :goto_0
    if-ge v2, v0, :cond_2

    .line 307
    add-int/lit8 v6, v2, 0x1

    .local v6, "index":I
    aget-byte v2, v1, v2

    .line 308
    .local v2, "c":I
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 328
    :pswitch_0
    shl-int/lit8 v7, p1, 0x6

    and-int/lit8 v8, v2, 0x3f

    or-int/2addr v7, v8

    int-to-char p1, v7

    .line 329
    const/4 v3, 0x1

    goto :goto_2

    .line 323
    :pswitch_1
    add-int/lit8 v7, v5, 0x1

    .local v7, "strLen":I
    shl-int/lit8 v8, p1, 0x6

    and-int/lit8 v9, v2, 0x3f

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p3, v5

    .line 324
    .end local v5    # "strLen":I
    const/4 v3, 0x0

    .line 325
    nop

    .line 330
    .end local v7    # "strLen":I
    .restart local v5    # "strLen":I
    :goto_1
    move v5, v7

    goto :goto_2

    .line 310
    :pswitch_2
    and-int/lit16 v2, v2, 0xff

    .line 311
    const/16 v7, 0x80

    if-ge v2, v7, :cond_0

    .line 312
    add-int/lit8 v7, v5, 0x1

    .restart local v7    # "strLen":I
    int-to-char v8, v2

    aput-char v8, p3, v5

    .end local v5    # "strLen":I
    goto :goto_1

    .line 313
    .end local v7    # "strLen":I
    .restart local v5    # "strLen":I
    :cond_0
    const/16 v7, 0xe0

    if-ge v2, v7, :cond_1

    const/16 v7, 0xbf

    if-le v2, v7, :cond_1

    .line 314
    and-int/lit8 v7, v2, 0x1f

    int-to-char p1, v7

    .line 315
    const/4 v3, 0x1

    goto :goto_2

    .line 317
    :cond_1
    and-int/lit8 v7, v2, 0xf

    int-to-char p1, v7

    .line 318
    const/4 v3, 0x2

    .line 320
    nop

    .line 330
    :goto_2
    nop

    .line 305
    move v2, v6

    goto :goto_0

    .line 333
    .end local v6    # "index":I
    .local v2, "index":I
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 290
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 291
    .local v0, "item":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 292
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 293
    return-object v1

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    aget p1, v2, v0

    .line 296
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    return-object v3
.end method

.method private readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 280
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V
    .locals 9
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;

    .line 85
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 88
    .local v0, "c":[C
    const/4 v1, 0x0

    .line 91
    .local v1, "anns":I
    iget-boolean v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->readAnnotations:Z

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/alibaba/fastjson/asm/ClassReader;->getAttributes()I

    move-result v2

    .line 93
    .local v2, "u":I
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    .line 94
    add-int/lit8 v5, v2, 0x2

    invoke-direct {p0, v5, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "attrName":Ljava/lang/String;
    const-string v6, "RuntimeVisibleAnnotations"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    add-int/lit8 v1, v2, 0x8

    .line 97
    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v6, v2, 0x4

    invoke-direct {p0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 93
    .end local v5    # "attrName":Ljava/lang/String;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 104
    .end local v2    # "u":I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 105
    .restart local v2    # "u":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v5, v2, 0x4

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v4, v4, v5

    .line 106
    .local v4, "v":I
    add-int/lit8 v5, v2, 0x6

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 107
    .local v5, "len":I
    add-int/lit8 v2, v2, 0x8

    .line 108
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_2

    .line 109
    add-int/lit8 v2, v2, 0x2

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 111
    :cond_2
    move v4, v2

    .line 112
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 113
    add-int/lit8 v4, v4, 0x2

    .line 114
    :goto_3
    if-lez v6, :cond_4

    .line 115
    add-int/lit8 v7, v4, 0x6

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 116
    .local v7, "j":I
    add-int/lit8 v4, v4, 0x8

    .line 117
    :goto_4
    if-lez v7, :cond_3

    .line 118
    add-int/lit8 v8, v4, 0x2

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v4, v8

    .line 117
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 114
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 121
    .end local v7    # "j":I
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 122
    add-int/lit8 v4, v4, 0x2

    .line 123
    :goto_5
    if-lez v6, :cond_6

    .line 124
    add-int/lit8 v7, v4, 0x6

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 125
    .restart local v7    # "j":I
    add-int/lit8 v4, v4, 0x8

    .line 126
    :goto_6
    if-lez v7, :cond_5

    .line 127
    add-int/lit8 v8, v4, 0x2

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v4, v8

    .line 126
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 123
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 131
    .end local v7    # "j":I
    :cond_6
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 132
    add-int/lit8 v4, v4, 0x2

    .line 133
    :goto_7
    if-lez v6, :cond_7

    .line 134
    add-int/lit8 v7, v4, 0x2

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v4, v7

    .line 133
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 137
    :cond_7
    if-eqz v1, :cond_8

    .line 138
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    add-int/lit8 v4, v1, 0x2

    :goto_8
    if-lez v6, :cond_8

    .line 139
    invoke-direct {p0, v4, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitAnnotation(Ljava/lang/String;)V

    .line 138
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 145
    :cond_8
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 146
    add-int/lit8 v2, v2, 0x2

    .line 147
    :goto_9
    if-lez v6, :cond_a

    .line 148
    add-int/lit8 v7, v2, 0x6

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 149
    .local v7, "j":I
    add-int/lit8 v2, v2, 0x8

    .line 150
    :goto_a
    if-lez v7, :cond_9

    .line 151
    add-int/lit8 v8, v2, 0x2

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 150
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 147
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 156
    .end local v7    # "j":I
    :cond_a
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 157
    .end local v6    # "i":I
    .local v3, "i":I
    add-int/lit8 v2, v2, 0x2

    .line 158
    :goto_b
    if-lez v3, :cond_b

    .line 160
    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I

    move-result v2

    .line 158
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 162
    :cond_b
    return-void
.end method
