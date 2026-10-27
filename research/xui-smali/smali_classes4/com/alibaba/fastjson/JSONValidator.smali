.class public abstract Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;,
        Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;,
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field protected ch:C

.field protected count:I

.field protected eof:Z

.field protected pos:I

.field protected supportMultiValue:Z

.field protected type:Lcom/alibaba/fastjson/JSONValidator$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->pos:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    return-void
.end method

.method private any()Z
    .locals 13

    .line 69
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2b

    const/16 v4, 0x65

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    const/4 v7, 0x0

    if-eq v0, v6, :cond_1e

    if-eq v0, v5, :cond_1e

    const/16 v8, 0x5b

    const/16 v9, 0x5d

    const/16 v10, 0x2c

    if-eq v0, v8, :cond_19

    const/16 v8, 0x66

    const/16 v11, 0x6c

    const/16 v12, 0x7d

    if-eq v0, v8, :cond_12

    const/16 v8, 0x6e

    if-eq v0, v8, :cond_c

    const/16 v8, 0x74

    if-eq v0, v8, :cond_6

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 289
    return v7

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 73
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v12, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 75
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 76
    return v3

    .line 80
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v2, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->fieldName()V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 87
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 93
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    return v7

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 98
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v10, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v12, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 104
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 105
    return v3

    .line 90
    :cond_4
    return v7

    .line 83
    :cond_5
    return v7

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 217
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v2, 0x72

    if-eq v0, v2, :cond_7

    .line 218
    return v7

    .line 220
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 222
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_8

    .line 223
    return v7

    .line 225
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 227
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v4, :cond_9

    .line 228
    return v7

    .line 230
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 232
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v10, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v12, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-nez v0, :cond_a

    goto :goto_1

    .line 236
    :cond_a
    return v7

    .line 233
    :cond_b
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 234
    return v3

    .line 266
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 268
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v1, :cond_d

    .line 269
    return v7

    .line 271
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 273
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_e

    .line 274
    return v7

    .line 276
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 278
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_f

    .line 279
    return v7

    .line 281
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v10, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v12, :cond_11

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-nez v0, :cond_10

    goto :goto_2

    .line 287
    :cond_10
    return v7

    .line 284
    :cond_11
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 285
    return v3

    .line 238
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 240
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_13

    .line 241
    return v7

    .line 243
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 245
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v11, :cond_14

    .line 246
    return v7

    .line 248
    :cond_14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 250
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_15

    .line 251
    return v7

    .line 253
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 255
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v4, :cond_16

    .line 256
    return v7

    .line 258
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 260
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v10, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v9, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v12, :cond_18

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-nez v0, :cond_17

    goto :goto_3

    .line 264
    :cond_17
    return v7

    .line 261
    :cond_18
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 262
    return v3

    .line 109
    :cond_19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 112
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_1a

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 115
    return v3

    .line 119
    :cond_1a
    :goto_4
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 120
    return v7

    .line 123
    :cond_1b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 124
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v10, :cond_1c

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    goto :goto_4

    .line 127
    :cond_1c
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v9, :cond_1d

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 129
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 130
    return v3

    .line 133
    :cond_1d
    return v7

    .line 148
    :cond_1e
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x39

    const/16 v2, 0x30

    if-eq v0, v5, :cond_1f

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v6, :cond_20

    .line 149
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 151
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_2a

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-le v0, v1, :cond_20

    goto :goto_8

    .line 157
    :cond_20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 158
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_21

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-le v0, v1, :cond_20

    .line 160
    :cond_21
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v8, 0x2e

    if-ne v0, v8, :cond_24

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 163
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_23

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-le v0, v1, :cond_22

    goto :goto_6

    .line 166
    :cond_22
    :goto_5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_24

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-gt v0, v1, :cond_24

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_5

    .line 164
    :cond_23
    :goto_6
    return v7

    .line 171
    :cond_24
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v4, :cond_25

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v4, 0x45

    if-ne v0, v4, :cond_28

    .line 172
    :cond_25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 173
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-eq v0, v5, :cond_26

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v6, :cond_27

    .line 174
    :cond_26
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 177
    :cond_27
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_29

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-gt v0, v1, :cond_29

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 184
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-lt v0, v2, :cond_28

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-gt v0, v1, :cond_28

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_7

    .line 189
    :cond_28
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 190
    nop

    .line 291
    return v3

    .line 181
    :cond_29
    return v7

    .line 152
    :cond_2a
    :goto_8
    return v7

    .line 192
    :cond_2b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 194
    :goto_9
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_2d

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 196
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v1, :cond_2c

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_9

    .line 204
    :cond_2c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_9

    .line 206
    :cond_2d
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    if-ne v0, v2, :cond_2e

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 208
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 209
    return v3

    .line 211
    :cond_2e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static from(Ljava/io/Reader;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1
    .param p0, "r"    # Ljava/io/Reader;

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$ReaderValidator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF16Validator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromUtf8(Ljava/io/InputStream;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 25
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8InputStreamValidator;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1
    .param p0, "jsonBytes"    # [B

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;-><init>([B)V

    return-object v0
.end method

.method static final isWhiteSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 329
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method protected fieldName()V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 298
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 301
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 306
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 312
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    .line 314
    nop

    .line 320
    return-void

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0
.end method

.method public getType()Lcom/alibaba/fastjson/JSONValidator$Type;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object v0
.end method

.method abstract next()V
.end method

.method skipWhiteSpace()V
    .locals 1

    .line 323
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONValidator;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->next()V

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method public validate()Z
    .locals 2

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;->any()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator;->count:I

    .line 50
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->supportMultiValue:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->skipWhiteSpace()V

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONValidator;->eof:Z

    if-eqz v0, :cond_0

    .line 53
    nop

    .line 61
    :cond_2
    return v1
.end method
