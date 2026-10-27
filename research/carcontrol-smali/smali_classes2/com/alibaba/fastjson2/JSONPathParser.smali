.class Lcom/alibaba/fastjson2/JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPathParser.java"


# instance fields
.field dollar:Z

.field filterNests:I

.field first:Lcom/alibaba/fastjson2/JSONPathSegment;

.field final jsonReader:Lcom/alibaba/fastjson2/JSONReader;

.field lax:Z

.field negative:Z

.field final path:Ljava/lang/String;

.field second:Lcom/alibaba/fastjson2/JSONPathSegment;

.field segmentIndex:I

.field segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/JSONPathSegment;",
            ">;"
        }
    .end annotation
.end field

.field strict:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/JSONPath;->PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 34
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x6c

    const/4 v8, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x61

    const/16 v2, 0x78

    invoke-virtual {p1, v1, v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/JSONPathParser;->lax:Z

    goto :goto_0

    .line 36
    :cond_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_1

    const/16 v2, 0x73

    const/16 v3, 0x74

    const/16 v4, 0x72

    const/16 v5, 0x69

    const/16 v6, 0x63

    const/16 v7, 0x74

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCCC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/JSONPathParser;->strict:Z

    .line 40
    :cond_1
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 42
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/JSONPathParser;->negative:Z

    .line 45
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 47
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    :cond_3
    return-void
.end method

.method private parseArrayAccess()Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 11

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    const-string v2, "TODO : "

    const/16 v3, 0x61

    const/16 v4, 0x5d

    if-eq v0, v1, :cond_18

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2d

    const/4 v5, -0x1

    const/16 v6, 0x6c

    const/4 v7, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_c

    const-string v1, "not support : "

    if-eq v0, v6, :cond_a

    const/16 v8, 0x72

    const/16 v9, 0x29

    const/16 v10, 0x28

    if-eq v0, v8, :cond_8

    const/16 v8, 0x27

    if-eq v0, v8, :cond_18

    if-eq v0, v10, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 304
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v4, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 228
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;

    invoke-direct {v1, v7, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;-><init>(II)V

    goto/16 :goto_5

    .line 230
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;-><init>(II)V

    goto/16 :goto_5

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 296
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v2

    .line 285
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v4

    if-eqz v4, :cond_6

    if-gtz v2, :cond_5

    .line 291
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->of(I)Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    move-result-object v1

    goto/16 :goto_5

    .line 289
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    const-string v2, "randomIndex"

    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 259
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 260
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v4, :cond_9

    .line 262
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RandomIndexSegment;

    goto/16 :goto_5

    .line 266
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last"

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 271
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->of(I)Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    move-result-object v1

    goto/16 :goto_5

    .line 273
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilter()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    goto/16 :goto_5

    .line 179
    :cond_d
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_10

    .line 182
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 183
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v1, v4, :cond_f

    .line 184
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;

    if-ltz v0, :cond_e

    const v7, 0x7fffffff

    :cond_e
    invoke-direct {v1, v0, v7}, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;-><init>(II)V

    goto/16 :goto_5

    .line 186
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v1

    .line 187
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$RangeIndexSegment;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_5

    .line 189
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v1

    const/16 v2, 0x74

    const/16 v4, 0x73

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1, v6, v3, v4, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2

    .line 215
    :cond_11
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->of(I)Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    move-result-object v1

    goto/16 :goto_5

    :cond_12
    move v1, v7

    .line 190
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_13

    .line 193
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 198
    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, v6, v3, v4, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_3

    .line 209
    :cond_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 210
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_16

    .line 211
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 213
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$MultiIndexSegment;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$MultiIndexSegment;-><init>([I)V

    goto :goto_5

    .line 220
    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 221
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;->INSTANCE_ARRAY:Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;

    goto :goto_5

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    if-ne v1, v4, :cond_19

    .line 238
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v0, v4, v5}, Lcom/alibaba/fastjson2/JSONPathSegmentName;-><init>(Ljava/lang/String;J)V

    goto :goto_5

    .line 239
    :cond_19
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 247
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;-><init>([Ljava/lang/String;)V

    .line 307
    :goto_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v0, v3, :cond_1b

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_1c

    .line 308
    :cond_1b
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 309
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    .line 311
    :cond_1c
    :goto_6
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    if-lez v0, :cond_1d

    .line 312
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 313
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    goto :goto_6

    .line 315
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-object v1

    .line 316
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const-string v2, "jsonpath syntax error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 9

    .line 324
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 326
    sget-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$AllSegment;

    goto/16 :goto_6

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_2

    .line 328
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 331
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    const-string v1, "*"

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v0

    .line 334
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-direct {v3, v2, v0, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    goto/16 :goto_6

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v1

    .line 340
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x9

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_4

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_4

    .line 345
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-le v7, v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 353
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v6, 0x28

    if-ne v0, v6, :cond_20

    .line 354
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v4, v0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "negative"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x14

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "ceiling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v4, 0x13

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v1, "upper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0x12

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "lower"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v4, 0x11

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "index"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v4, 0x10

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "floor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v4, 0xf

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "first"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v4, 0xe

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v1, "type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v4, 0xd

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v1, "trim"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v4, 0xc

    goto/16 :goto_3

    :sswitch_9
    const-string/jumbo v1, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v4, 0xb

    goto/16 :goto_3

    :sswitch_a
    const-string v1, "last"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v4, 0xa

    goto/16 :goto_3

    :sswitch_b
    const-string v1, "keys"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    move v4, v5

    goto/16 :goto_3

    :sswitch_c
    const-string v1, "ceil"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v4, 0x8

    goto :goto_3

    :sswitch_d
    const-string/jumbo v1, "sum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x7

    goto :goto_3

    :sswitch_e
    const-string v1, "min"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_2

    :cond_13
    const/4 v4, 0x6

    goto :goto_3

    :sswitch_f
    const-string v1, "max"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_2

    :cond_14
    const/4 v4, 0x5

    goto :goto_3

    :sswitch_10
    const-string v1, "abs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_2

    :cond_15
    const/4 v4, 0x4

    goto :goto_3

    :sswitch_11
    const-string/jumbo v1, "values"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_2

    :cond_16
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_12
    const-string v1, "length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_2

    :cond_17
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_13
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x1

    goto :goto_3

    :sswitch_14
    const-string v1, "entrySet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_2

    :cond_19
    :goto_3
    const-string v0, "not support syntax, path : "

    packed-switch v4, :pswitch_data_0

    .line 445
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :pswitch_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto/16 :goto_5

    .line 398
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_UPPER:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto/16 :goto_5

    .line 395
    :pswitch_2
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_LOWER:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto/16 :goto_5

    .line 413
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 414
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v1

    .line 415
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1b

    .line 416
    check-cast v1, Ljava/math/BigDecimal;

    .line 417
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 419
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFunction;

    new-instance v3, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    goto :goto_4

    .line 422
    :cond_1a
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 423
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MIN:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1b

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MAX:Ljava/math/BigInteger;

    .line 424
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_1b

    .line 425
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 431
    :cond_1b
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_1c

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1e

    .line 434
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 435
    new-instance v3, Lcom/alibaba/fastjson2/JSONPathFunction;

    new-instance v4, Lcom/alibaba/fastjson2/JSONPathFunction$IndexInt;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/fastjson2/JSONPathFunction$IndexInt;-><init>(J)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    move-object v1, v3

    goto/16 :goto_5

    .line 438
    :cond_1d
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 439
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 440
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFunction;

    new-instance v3, Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONPathFunction$IndexString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONPathFunction;-><init>(Ljava/util/function/Function;)V

    :goto_4
    move-object v1, v2

    goto :goto_5

    .line 443
    :cond_1e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_FLOOR:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 407
    :pswitch_5
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_FIRST:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 379
    :pswitch_6
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_TYPE:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 401
    :pswitch_7
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_TRIM:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 410
    :pswitch_8
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_LAST:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 361
    :pswitch_9
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$KeysSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$KeysSegment;

    goto :goto_5

    .line 386
    :pswitch_a
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_CEIL:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 376
    :pswitch_b
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$SumSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$SumSegment;

    goto :goto_5

    .line 370
    :pswitch_c
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$MinSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$MinSegment;

    goto :goto_5

    .line 373
    :pswitch_d
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$MaxSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$MaxSegment;

    goto :goto_5

    .line 392
    :pswitch_e
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_ABS:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 364
    :pswitch_f
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$ValuesSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$ValuesSegment;

    goto :goto_5

    .line 358
    :pswitch_10
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;

    goto :goto_5

    .line 389
    :pswitch_11
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_DOUBLE:Lcom/alibaba/fastjson2/JSONPathFunction;

    goto :goto_5

    .line 367
    :pswitch_12
    sget-object v1, Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$EntrySetSegment;

    .line 447
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object v0, v1

    goto :goto_6

    .line 448
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_20
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson2/JSONPathSegmentName;-><init>(Ljava/lang/String;J)V

    :goto_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7ccaf170 -> :sswitch_14
        -0x4f08842f -> :sswitch_13
        -0x41f1c51a -> :sswitch_12
        -0x311a62de -> :sswitch_11
        0x17872 -> :sswitch_10
        0x1a564 -> :sswitch_f
        0x1a652 -> :sswitch_e
        0x1be4b -> :sswitch_d
        0x2e8905 -> :sswitch_c
        0x322df4 -> :sswitch_b
        0x329296 -> :sswitch_a
        0x35e001 -> :sswitch_9
        0x367422 -> :sswitch_8
        0x368f3a -> :sswitch_7
        0x5ced2b0 -> :sswitch_6
        0x5d0240c -> :sswitch_5
        0x5fb28d2 -> :sswitch_4
        0x6262b01 -> :sswitch_3
        0x6a558a2 -> :sswitch_2
        0x275cb4bd -> :sswitch_1
        0x36e70c35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method varargs parse([Lcom/alibaba/fastjson2/JSONPath$Feature;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v4, :cond_1

    .line 53
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->negative:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSingle;

    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    new-array v3, v3, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v1, v2, v4, v3}, Lcom/alibaba/fastjson2/JSONPathSingle;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v1

    .line 56
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONPath$RootPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$RootPath;

    return-object v1

    .line 60
    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x65

    const/16 v6, 0x5a

    const/16 v7, 0x5f

    const/16 v8, 0x7a

    const/16 v9, 0x41

    const/16 v10, 0x61

    const/16 v11, 0x2e

    const/16 v12, 0x40

    if-ne v2, v5, :cond_a

    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v14, 0x65

    const/16 v15, 0x78

    const/16 v16, 0x69

    const/16 v17, 0x73

    const/16 v18, 0x74

    const/16 v19, 0x73

    invoke-virtual/range {v13 .. v19}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCCC)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 61
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    const-string/jumbo v2, "syntax error "

    if-eqz v1, :cond_9

    .line 65
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v1, v12, :cond_3

    .line 66
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 67
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-lt v1, v10, :cond_4

    if-le v1, v8, :cond_7

    :cond_4
    if-lt v1, v9, :cond_5

    if-le v1, v6, :cond_7

    :cond_5
    if-eq v1, v7, :cond_7

    if-ne v1, v12, :cond_6

    goto :goto_1

    .line 77
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    .line 80
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 84
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_EXISTS:Lcom/alibaba/fastjson2/JSONPathFunction;

    new-array v3, v3, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v2

    .line 81
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_17

    .line 90
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v11, :cond_b

    .line 92
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v2

    goto :goto_3

    .line 94
    :cond_b
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v13, v13, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v14, 0x5b

    if-ne v13, v14, :cond_c

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseArrayAccess()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v2

    goto :goto_3

    :cond_c
    if-lt v2, v10, :cond_d

    if-le v2, v8, :cond_f

    :cond_d
    if-lt v2, v9, :cond_e

    if-le v2, v6, :cond_f

    :cond_e
    if-ne v2, v7, :cond_10

    .line 97
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseProperty()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v2

    goto :goto_3

    :cond_10
    const/16 v13, 0x3f

    if-ne v2, v13, :cond_12

    .line 99
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->dollar:Z

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    if-nez v2, :cond_11

    .line 100
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$RootSegment;

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 101
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    .line 103
    :cond_11
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilter()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v2

    goto :goto_3

    :cond_12
    if-ne v2, v12, :cond_16

    .line 106
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 107
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;

    .line 112
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    if-nez v13, :cond_13

    .line 113
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    goto :goto_4

    :cond_13
    if-ne v13, v5, :cond_14

    .line 115
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    goto :goto_4

    :cond_14
    if-ne v13, v3, :cond_15

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    .line 118
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 122
    :cond_15
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    goto/16 :goto_2

    .line 109
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_17
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->negative:Z

    if-eqz v2, :cond_1a

    .line 128
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    if-ne v2, v5, :cond_18

    .line 129
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    goto :goto_5

    :cond_18
    if-ne v2, v3, :cond_19

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    .line 132
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    sget-object v4, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 136
    :cond_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    sget-object v4, Lcom/alibaba/fastjson2/JSONPathFunction;->FUNC_NEGATIVE:Lcom/alibaba/fastjson2/JSONPathFunction;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    .line 141
    :cond_1a
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segmentIndex:I

    if-ne v2, v5, :cond_1d

    .line 142
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v3, :cond_1b

    .line 143
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathSingleName;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast v4, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    invoke-direct {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/JSONPathSingleName;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v2

    .line 146
    :cond_1b
    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v3, :cond_1c

    .line 147
    check-cast v2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 148
    iget v3, v2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-ltz v3, :cond_1c

    .line 149
    new-instance v3, Lcom/alibaba/fastjson2/JSONPathSingleIndex;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1}, Lcom/alibaba/fastjson2/JSONPathSingleIndex;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v3

    .line 153
    :cond_1c
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathSingle;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/JSONPathSingle;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v2

    :cond_1d
    if-ne v2, v3, :cond_1e

    .line 157
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONPathParser;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v2

    .line 160
    :cond_1e
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathMulti;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->path:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->segments:Ljava/util/List;

    invoke-direct {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/JSONPathMulti;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    return-object v2
.end method

.method parseFilter()Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 33

    move-object/from16 v0, p0

    .line 524
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 525
    iget v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    if-lez v4, :cond_0

    add-int/2addr v4, v3

    .line 526
    iput v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 529
    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v4, v4, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x2e

    const/16 v8, 0x29

    const-string v9, "jsonpath syntax error"

    if-eqz v4, :cond_2

    .line 531
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto/16 :goto_2

    .line 532
    :cond_2
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v11, 0x65

    const/16 v12, 0x78

    const/16 v13, 0x69

    const/16 v14, 0x73

    const/16 v15, 0x74

    const/16 v16, 0x73

    invoke-virtual/range {v10 .. v16}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCCC)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 533
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 537
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 538
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v2

    .line 540
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v4

    .line 542
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    .line 544
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 545
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_4
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;

    invoke-direct {v1, v4, v2, v3}, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;-><init>(Ljava/lang/String;J)V

    return-object v1

    .line 553
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const-string v3, "exists"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_7
    :goto_2
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v11, 0x73

    const/16 v12, 0x74

    const/16 v13, 0x61

    const/16 v14, 0x72

    const/16 v15, 0x74

    const/16 v16, 0x73

    invoke-virtual/range {v10 .. v16}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCCC)Z

    move-result v5

    const/16 v10, 0x6e

    if-nez v5, :cond_8

    .line 557
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v12, 0x65

    const/16 v13, 0x64

    const/16 v14, 0x73

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCC)Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v3

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    :goto_3
    const-string/jumbo v12, "syntax error, "

    const-wide/16 v13, 0x0

    const/16 v10, 0x26

    const/4 v6, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_9

    if-nez v5, :cond_a

    if-nez v11, :cond_a

    .line 558
    :cond_9
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v15, v15, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v15, v7, :cond_1b

    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v15, v15, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-static {v15}, Lcom/alibaba/fastjson2/JSONReader;->isFirstIdentifier(C)Z

    move-result v15

    if-nez v15, :cond_1b

    .line 559
    :cond_a
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 560
    iget v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    add-int/2addr v1, v3

    .line 561
    iput v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilter()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    return-object v1

    :cond_b
    if-eqz v4, :cond_1a

    if-nez v5, :cond_d

    if-eqz v11, :cond_c

    goto :goto_5

    .line 577
    :cond_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->parseOperator(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    move-result-object v2

    :goto_4
    move-object/from16 v26, v2

    goto :goto_6

    .line 570
    :cond_d
    :goto_5
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 571
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "with"

    .line 572
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v5, :cond_e

    .line 575
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->STARTS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ENDS_WITH:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_4

    .line 581
    :goto_6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 582
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    .line 583
    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_f

    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_13

    .line 584
    :cond_f
    new-instance v8, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v27

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v28}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;J)V

    goto :goto_8

    .line 586
    :cond_10
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 587
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    sget-object v4, Lcom/alibaba/fastjson2/JSONPathParser$1;->$SwitchMap$com$alibaba$fastjson2$JSONPathFilter$Operator:[I

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_12

    if-ne v4, v6, :cond_11

    .line 594
    new-instance v4, Lcom/alibaba/fastjson2/JSONPathFilter$EndsWithSegment;

    invoke-direct {v4, v8, v13, v14, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$EndsWithSegment;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_7

    .line 597
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_12
    new-instance v4, Lcom/alibaba/fastjson2/JSONPathFilter$StartsWithSegment;

    invoke-direct {v4, v8, v13, v14, v2}, Lcom/alibaba/fastjson2/JSONPathFilter$StartsWithSegment;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    :goto_7
    move-object v8, v4

    .line 601
    :cond_13
    :goto_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v10, :cond_18

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7c

    if-ne v2, v4, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v8, :cond_17

    if-eqz v1, :cond_16

    .line 608
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_9

    .line 609
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_9
    return-object v8

    .line 615
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_18
    :goto_a
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 603
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v8

    goto :goto_8

    .line 573
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    if-eqz v4, :cond_1c

    .line 619
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 622
    :cond_1c
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v4

    .line 623
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v11}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_1e

    .line 626
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v8, 0x29

    invoke-virtual {v15, v8}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 627
    iget v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    if-lez v1, :cond_1d

    sub-int/2addr v1, v3

    .line 628
    iput v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 630
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;

    invoke-direct {v1, v11, v4, v5}, Lcom/alibaba/fastjson2/JSONPathFilter$NameExistsFilter;-><init>(Ljava/lang/String;J)V

    return-object v1

    :cond_1e
    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 638
    :goto_b
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v13, v13, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v13, v7, :cond_21

    .line 639
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v13}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 640
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v13}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    move-result-wide v13

    .line 641
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v7

    .line 643
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v6, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v6, v2, :cond_1f

    goto :goto_d

    :cond_1f
    if-nez v8, :cond_20

    new-array v6, v3, [J

    const/4 v8, 0x0

    aput-wide v13, v6, v8

    new-array v13, v3, [Ljava/lang/String;

    aput-object v7, v13, v8

    move-object v8, v6

    move-object v15, v13

    goto :goto_c

    .line 652
    :cond_20
    array-length v6, v8

    add-int/2addr v6, v3

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 653
    array-length v8, v6

    sub-int/2addr v8, v3

    aput-wide v13, v6, v8

    .line 654
    array-length v8, v15

    add-int/2addr v8, v3

    invoke-static {v15, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 655
    array-length v13, v8

    sub-int/2addr v13, v3

    aput-object v7, v8, v13

    move-object v15, v8

    move-object v8, v6

    :goto_c
    const/4 v6, 0x2

    const/16 v7, 0x2e

    goto :goto_b

    :cond_21
    const/4 v7, 0x0

    .line 661
    :goto_d
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v6, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v13, -0x1

    if-ne v6, v2, :cond_28

    if-nez v7, :cond_22

    const/4 v4, 0x0

    goto :goto_e

    :cond_22
    move-object v4, v11

    move-object v11, v7

    .line 667
    :goto_e
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_f
    move v5, v13

    goto :goto_10

    :sswitch_0
    const-string/jumbo v5, "type"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_f

    :cond_23
    const/4 v5, 0x2

    goto :goto_10

    :sswitch_1
    const-string/jumbo v5, "size"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_f

    :cond_24
    move v5, v3

    goto :goto_10

    :sswitch_2
    const-string v5, "contains"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_f

    :cond_25
    const/4 v5, 0x0

    :goto_10
    packed-switch v5, :pswitch_data_0

    .line 681
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, function not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :pswitch_0
    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;

    :goto_11
    const/4 v6, 0x0

    goto :goto_12

    .line 674
    :pswitch_1
    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFunction$SizeFunction;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathFunction$SizeFunction;

    goto :goto_11

    .line 678
    :pswitch_2
    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->CONTAINS:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    move-object v6, v5

    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_27

    .line 685
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 686
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v14, 0x29

    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_13

    .line 687
    :cond_26
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error, function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    :goto_13
    move-object/from16 v25, v4

    const-wide/16 v26, 0x0

    goto :goto_14

    :cond_28
    move-wide/from16 v26, v4

    move-object/from16 v25, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    if-nez v6, :cond_29

    .line 693
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-static {v4}, Lcom/alibaba/fastjson2/JSONPath;->parseOperator(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    move-result-object v4

    goto :goto_15

    :cond_29
    move-object v4, v6

    .line 696
    :goto_15
    sget-object v6, Lcom/alibaba/fastjson2/JSONPathParser$1;->$SwitchMap$com$alibaba$fastjson2$JSONPathFilter$Operator:[I

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x6f

    const/16 v11, 0x61

    packed-switch v6, :pswitch_data_1

    .line 852
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    goto/16 :goto_25

    .line 827
    :pswitch_3
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 828
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    .line 829
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v5

    const-string v6, "and"

    .line 830
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 833
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v5

    .line 834
    new-instance v6, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntBetweenSegment;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v28

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v30

    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v2, :cond_2a

    move/from16 v32, v3

    goto :goto_16

    :cond_2a
    const/16 v32, 0x0

    :goto_16
    move-object/from16 v24, v6

    invoke-direct/range {v24 .. v32}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntBetweenSegment;-><init>(Ljava/lang/String;JJJZ)V

    if-eqz v1, :cond_2c

    .line 840
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_17

    .line 841
    :cond_2b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    :goto_17
    return-object v6

    .line 831
    :cond_2d
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_2e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :pswitch_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v1, v2, :cond_36

    .line 776
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 779
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :goto_18
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 782
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 784
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 785
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 786
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringContainsSegment;

    const/4 v3, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v25

    move-wide/from16 v20, v26

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v2

    move/from16 v25, v3

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringContainsSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[J[Ljava/lang/String;Z)V

    goto :goto_1b

    .line 794
    :cond_30
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 797
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 799
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v6, 0x0

    .line 800
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_32

    .line 801
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 803
    :cond_32
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameLongContainsSegment;

    const/4 v3, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v25

    move-wide/from16 v20, v26

    move-object/from16 v22, v15

    move-object/from16 v23, v8

    move-object/from16 v24, v2

    move/from16 v25, v3

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson2/JSONPathFilter$NameLongContainsSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[J[JZ)V

    .line 815
    :goto_1b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 818
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_33

    return-object v1

    .line 819
    :cond_33
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_34
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_35
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_36
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :pswitch_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v1, v2, :cond_42

    .line 729
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 732
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    :goto_1c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 735
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 737
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 738
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 739
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;

    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v5, :cond_38

    move/from16 v29, v3

    goto :goto_1d

    :cond_38
    const/16 v29, 0x0

    :goto_1d
    move-object/from16 v24, v1

    move-object/from16 v28, v2

    invoke-direct/range {v24 .. v29}, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringInSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;Z)V

    goto :goto_21

    .line 745
    :cond_39
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    :goto_1e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 748
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 750
    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v6, 0x0

    .line 751
    :goto_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_3b

    .line 752
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    aput-wide v12, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 754
    :cond_3b
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;

    sget-object v6, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_IN:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v6, :cond_3c

    move/from16 v17, v3

    goto :goto_20

    :cond_3c
    const/16 v17, 0x0

    :goto_20
    move-object/from16 v19, v1

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;[JZ)V

    .line 759
    :goto_21
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 762
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v10, :cond_3d

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_3d

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v11, :cond_3d

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v7, :cond_3e

    .line 763
    :cond_3d
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 764
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    .line 766
    :cond_3e
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    return-object v1

    .line 767
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_40
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_41
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    :cond_42
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :pswitch_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 703
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    goto :goto_22

    .line 706
    :cond_43
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readPattern()Ljava/lang/String;

    move-result-object v1

    .line 707
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v5, 0x69

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v8

    :goto_22
    if-eqz v8, :cond_44

    const/4 v2, 0x2

    .line 711
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_23

    .line 712
    :cond_44
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_23
    move-object/from16 v28, v1

    .line 714
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;

    sget-object v2, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v2, :cond_45

    move/from16 v29, v3

    goto :goto_24

    :cond_45
    const/16 v29, 0x0

    :goto_24
    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v29}, Lcom/alibaba/fastjson2/JSONPathFilter$NameRLikeSegment;-><init>(Ljava/lang/String;JLjava/util/regex/Pattern;Z)V

    .line 715
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v10, :cond_46

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_46

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v11, :cond_46

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v7, :cond_47

    .line 716
    :cond_46
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 717
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    .line 719
    :cond_47
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_48

    return-object v1

    .line 720
    :cond_48
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_25
    const/16 v6, 0x22

    if-eq v2, v6, :cond_54

    const/16 v6, 0x27

    if-eq v2, v6, :cond_54

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_50

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_50

    const/16 v6, 0x5b

    if-eq v2, v6, :cond_4f

    const/16 v6, 0x66

    if-eq v2, v6, :cond_4d

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_4b

    const/16 v6, 0x74

    if-eq v2, v6, :cond_4a

    const/16 v6, 0x7b

    if-eq v2, v6, :cond_49

    packed-switch v2, :pswitch_data_2

    .line 970
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    :cond_49
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    .line 959
    new-instance v6, Lcom/alibaba/fastjson2/JSONPathFilter$NameObjectOpSegment;

    move-object/from16 v19, v6

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-object/from16 v27, v2

    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson2/JSONPathFilter$NameObjectOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;Lcom/alibaba/fastjson2/JSONObject;)V

    goto/16 :goto_27

    .line 937
    :cond_4a
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "true"

    .line 938
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 939
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;

    const-wide/16 v12, 0x1

    move-object/from16 v19, v2

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-wide/from16 v27, v12

    invoke-direct/range {v19 .. v28}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;J)V

    goto :goto_26

    .line 963
    :cond_4b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 965
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFilter$NameIsNull;

    move-object/from16 v19, v2

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    invoke-direct/range {v19 .. v25}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIsNull;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    goto :goto_26

    .line 968
    :cond_4c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_4d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v2

    const-string v6, "false"

    .line 946
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 947
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;

    const-wide/16 v12, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-wide/from16 v27, v12

    invoke-direct/range {v19 .. v28}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;J)V

    :goto_26
    move-object v8, v2

    goto/16 :goto_30

    :cond_4e
    const/4 v8, 0x0

    goto/16 :goto_30

    .line 953
    :cond_4f
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const-class v6, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 954
    new-instance v6, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;

    move-object/from16 v19, v6

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-object/from16 v27, v2

    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson2/JSONPathFilter$NameArrayOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;Lcom/alibaba/fastjson2/JSONArray;)V

    :goto_27
    move-object v8, v6

    goto/16 :goto_30

    .line 865
    :cond_50
    :pswitch_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v2

    .line 866
    instance-of v6, v2, Ljava/lang/Integer;

    if-nez v6, :cond_53

    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_51

    goto :goto_28

    .line 868
    :cond_51
    instance-of v5, v2, Ljava/math/BigDecimal;

    if-eqz v5, :cond_52

    .line 869
    new-instance v8, Lcom/alibaba/fastjson2/JSONPathFilter$NameDecimalOpSegment;

    move-object/from16 v29, v2

    check-cast v29, Ljava/math/BigDecimal;

    move-object/from16 v24, v8

    move-object/from16 v28, v4

    invoke-direct/range {v24 .. v29}, Lcom/alibaba/fastjson2/JSONPathFilter$NameDecimalOpSegment;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson2/JSONPathFilter$Operator;Ljava/math/BigDecimal;)V

    goto/16 :goto_30

    .line 871
    :cond_52
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 867
    :cond_53
    :goto_28
    new-instance v6, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    move-object/from16 v19, v6

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-wide/from16 v27, v12

    invoke-direct/range {v19 .. v28}, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;J)V

    goto :goto_27

    .line 877
    :cond_54
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x25

    .line 878
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ne v12, v13, :cond_56

    .line 880
    sget-object v13, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v13, :cond_55

    .line 881
    sget-object v4, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->EQ:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    goto :goto_29

    .line 882
    :cond_55
    sget-object v13, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v13, :cond_56

    .line 883
    sget-object v4, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    .line 887
    :cond_56
    :goto_29
    sget-object v13, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-eq v4, v13, :cond_58

    sget-object v13, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v13, :cond_57

    goto :goto_2a

    .line 932
    :cond_57
    new-instance v6, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringOpSegment;

    move-object/from16 v19, v6

    move-object/from16 v20, v25

    move-wide/from16 v21, v26

    move-object/from16 v23, v15

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    move-object/from16 v27, v2

    invoke-direct/range {v19 .. v27}, Lcom/alibaba/fastjson2/JSONPathFilter$NameStringOpSegment;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/JSONPathFilter$Operator;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_58
    :goto_2a
    const-string v5, "%"

    .line 888
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v12, :cond_5b

    .line 894
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_59

    .line 895
    array-length v2, v5

    sub-int/2addr v2, v3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 896
    invoke-static {v5, v3, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v30, v6

    :goto_2b
    const/16 v28, 0x0

    const/16 v29, 0x0

    goto :goto_2e

    :cond_59
    const/4 v8, 0x0

    .line 898
    array-length v2, v5

    sub-int/2addr v2, v3

    aget-object v2, v5, v2

    .line 899
    array-length v6, v5

    const/4 v12, 0x2

    if-le v6, v12, :cond_5a

    .line 900
    array-length v6, v5

    sub-int/2addr v6, v12

    new-array v12, v6, [Ljava/lang/String;

    .line 901
    invoke-static {v5, v3, v12, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v29, v2

    move-object/from16 v30, v12

    const/16 v28, 0x0

    goto :goto_2e

    :cond_5a
    move-object/from16 v29, v2

    const/16 v28, 0x0

    :goto_2c
    const/16 v30, 0x0

    goto :goto_2e

    :cond_5b
    const/4 v8, 0x0

    .line 904
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_5d

    .line 905
    array-length v2, v5

    if-ne v2, v3, :cond_5c

    .line 906
    aget-object v2, v5, v8

    goto :goto_2d

    :cond_5c
    move-object/from16 v30, v5

    goto :goto_2b

    .line 911
    :cond_5d
    array-length v2, v5

    if-ne v2, v3, :cond_5e

    .line 912
    aget-object v2, v5, v8

    :goto_2d
    move-object/from16 v28, v2

    const/16 v29, 0x0

    goto :goto_2c

    .line 913
    :cond_5e
    array-length v2, v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5f

    .line 914
    aget-object v2, v5, v8

    .line 915
    aget-object v5, v5, v3

    move-object/from16 v28, v2

    move-object/from16 v29, v5

    goto :goto_2c

    .line 917
    :cond_5f
    aget-object v2, v5, v8

    .line 918
    array-length v12, v5

    sub-int/2addr v12, v3

    aget-object v12, v5, v12

    .line 919
    array-length v13, v5

    sub-int/2addr v13, v6

    new-array v6, v13, [Ljava/lang/String;

    .line 920
    invoke-static {v5, v3, v6, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v28, v2

    move-object/from16 v30, v6

    move-object/from16 v29, v12

    .line 923
    :goto_2e
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathFilter$NameMatchFilter;

    sget-object v5, Lcom/alibaba/fastjson2/JSONPathFilter$Operator;->NOT_LIKE:Lcom/alibaba/fastjson2/JSONPathFilter$Operator;

    if-ne v4, v5, :cond_60

    move/from16 v31, v3

    goto :goto_2f

    :cond_60
    move/from16 v31, v8

    :goto_2f
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v31}, Lcom/alibaba/fastjson2/JSONPathFilter$NameMatchFilter;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto/16 :goto_26

    .line 973
    :goto_30
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v10, :cond_61

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_61

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v2, v11, :cond_61

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v2, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v2, v7, :cond_62

    .line 974
    :cond_61
    iget v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->filterNests:I

    .line 975
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v8

    :cond_62
    if-eqz v1, :cond_64

    .line 979
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_31

    .line 980
    :cond_63
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_64
    :goto_31
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x21d289e1 -> :sswitch_2
        0x35e001 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method parseFilterRest(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v0, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string v1, "jsonpath syntax error"

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41

    const-string/jumbo v5, "syntax error : "

    if-eq v0, v2, :cond_4

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x61

    if-eq v0, v2, :cond_4

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7c

    if-ne v0, v2, :cond_1

    .line 468
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 469
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    iget-char v1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    .line 486
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    move v4, v3

    goto :goto_1

    .line 487
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    const-string v1, "and"

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 478
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 496
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathParser;->parseFilter()Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v0

    .line 497
    instance-of v1, p1, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;

    if-eqz v1, :cond_7

    .line 498
    check-cast p1, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;

    .line 499
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;->filters:Ljava/util/List;

    check-cast v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONPathFilter;->setAnd(Z)Lcom/alibaba/fastjson2/JSONPathFilter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 503
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    check-cast p1, Lcom/alibaba/fastjson2/JSONPathFilter;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    instance-of p1, v0, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;

    if-eqz p1, :cond_9

    .line 506
    check-cast v0, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;

    .line 507
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;->filters:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 508
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 509
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 510
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    if-nez v3, :cond_8

    .line 512
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONPathFilter;->setAnd(Z)Lcom/alibaba/fastjson2/JSONPathFilter;

    .line 514
    :cond_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 518
    :cond_9
    check-cast v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONPathFilter;->setAnd(Z)Lcom/alibaba/fastjson2/JSONPathFilter;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson2/JSONPathFilter$GroupFilter;-><init>(Ljava/util/List;)V

    return-object p1

    .line 463
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathParser;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
