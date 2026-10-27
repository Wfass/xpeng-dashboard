.class final Lcom/alibaba/fastjson2/n$l;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 206
    iput p1, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    .line 207
    iput p2, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 8

    .line 212
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 216
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 218
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 219
    check-cast v0, Ljava/util/List;

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_4

    .line 222
    iget v6, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-ltz v6, :cond_2

    if-lt v5, v6, :cond_1

    .line 223
    iget v6, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v5, v6, :cond_1

    :goto_2
    move v6, v4

    goto :goto_3

    :cond_1
    move v6, v3

    goto :goto_3

    :cond_2
    sub-int v7, v5, v2

    if-lt v7, v6, :cond_1

    .line 226
    iget v6, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v7, v6, :cond_1

    goto :goto_2

    :goto_3
    if-eqz v6, :cond_3

    .line 229
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    :cond_4
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 233
    iput-boolean v4, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 237
    :cond_5
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 238
    check-cast v0, [Ljava/lang/Object;

    move v2, v3

    .line 239
    :goto_4
    array-length v5, v0

    if-ge v2, v5, :cond_a

    .line 240
    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-lt v2, v5, :cond_6

    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-le v2, v5, :cond_7

    :cond_6
    array-length v5, v0

    sub-int v5, v2, v5

    iget v6, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-le v5, v6, :cond_8

    array-length v5, v0

    sub-int v5, v2, v5

    iget v6, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-gt v5, v6, :cond_8

    :cond_7
    move v5, v4

    goto :goto_5

    :cond_8
    move v5, v3

    :goto_5
    if-eqz v5, :cond_9

    .line 243
    aget-object v5, v0, v2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 246
    :cond_a
    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 247
    iput-boolean v4, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 251
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 6

    .line 256
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/g$a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    instance-of v0, v0, Lcom/alibaba/fastjson2/n$b;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$l;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void

    .line 264
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 265
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 268
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_5

    .line 270
    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-ltz v5, :cond_3

    if-lt v4, v5, :cond_2

    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    if-nez v5, :cond_4

    .line 273
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_3

    .line 278
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v5

    .line 277
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-gez p1, :cond_8

    .line 283
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :goto_4
    if-ltz v1, :cond_8

    sub-int v3, v1, p1

    .line 285
    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-lt v3, v4, :cond_6

    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-lt v3, v4, :cond_7

    .line 286
    :cond_6
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 291
    :cond_8
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 292
    iput-boolean v2, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 296
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 297
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    move v3, v1

    .line 298
    :goto_5
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_15

    .line 299
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_a

    .line 300
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_a

    .line 304
    :cond_a
    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-ltz v4, :cond_c

    if-lt v3, v4, :cond_b

    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v3, v4, :cond_b

    goto :goto_6

    :cond_b
    move v4, v1

    goto :goto_7

    :cond_c
    :goto_6
    move v4, v2

    :goto_7
    if-nez v4, :cond_d

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 308
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_14

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_9

    .line 315
    :cond_d
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x22

    if-eq v4, v5, :cond_13

    const/16 v5, 0x27

    if-eq v4, v5, :cond_13

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_12

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_11

    const/16 v5, 0x66

    if-eq v4, v5, :cond_10

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_f

    const/16 v5, 0x74

    if-eq v4, v5, :cond_10

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_e

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_12

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_12

    packed-switch v4, :pswitch_data_0

    .line 351
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 336
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v4

    goto :goto_8

    .line 347
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v4, 0x0

    goto :goto_8

    .line 344
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_8

    .line 333
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v4

    goto :goto_8

    .line 329
    :cond_12
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 330
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v4

    goto :goto_8

    .line 340
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    .line 354
    :goto_8
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 357
    :cond_15
    :goto_a
    iget p1, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-gez p1, :cond_18

    .line 358
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :goto_b
    if-ltz v1, :cond_18

    sub-int v3, v1, p1

    .line 360
    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-lt v3, v4, :cond_16

    iget v4, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-lt v3, v4, :cond_17

    .line 361
    :cond_16
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 365
    :cond_18
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 366
    iput-boolean v2, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

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

.method public b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V
    .locals 6

    .line 371
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 372
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 375
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 376
    check-cast p1, Ljava/util/List;

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 379
    iget v3, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    if-lt v2, v3, :cond_1

    .line 380
    iget v3, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v2, v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    sub-int v5, v2, v0

    if-lt v5, v3, :cond_1

    .line 383
    iget v3, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v5, v3, :cond_1

    :goto_2
    if-eqz v4, :cond_3

    .line 386
    invoke-interface {p1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void

    .line 392
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnsupportedOperation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 7

    .line 397
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 398
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 401
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 402
    check-cast p1, Ljava/util/List;

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x1

    if-ltz v1, :cond_4

    .line 406
    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->a:I

    if-ltz v5, :cond_2

    if-lt v1, v5, :cond_1

    .line 407
    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v1, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    sub-int v6, v1, v0

    if-lt v6, v5, :cond_1

    .line 410
    iget v5, p0, Lcom/alibaba/fastjson2/n$l;->b:I

    if-ge v6, v5, :cond_1

    :goto_2
    if-eqz v4, :cond_3

    .line 413
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    if-lez v3, :cond_5

    move v2, v4

    :cond_5
    return v2

    .line 420
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
