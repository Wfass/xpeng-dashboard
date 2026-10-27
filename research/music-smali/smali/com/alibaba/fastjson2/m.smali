.class Lcom/alibaba/fastjson2/m;
.super Ljava/lang/Object;
.source "JSONPathParser.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/alibaba/fastjson2/u;

.field c:Z

.field d:Z

.field e:Z

.field f:I

.field g:Lcom/alibaba/fastjson2/n;

.field h:Lcom/alibaba/fastjson2/n;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/n;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/g;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/String;Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/u;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x61

    const/16 v3, 0x78

    invoke-virtual {p1, v0, v2, v3}, Lcom/alibaba/fastjson2/u;->a(CCC)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/m;->d:Z

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v0, 0x73

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x73

    const/16 v4, 0x74

    const/16 v5, 0x72

    const/16 v6, 0x69

    const/16 v7, 0x63

    const/16 v8, 0x74

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/fastjson2/u;->a(CCCCCC)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/m;->e:Z

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    .line 41
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 42
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/m;->k:Z

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v0, 0x24

    if-ne p1, v0, :cond_3

    .line 46
    iget-object p1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 47
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/m;->c:Z

    :cond_3
    return-void
.end method

.method private b()Lcom/alibaba/fastjson2/n;
    .locals 12

    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x22

    const-string v2, "TODO : "

    const/16 v3, 0x61

    const/16 v4, 0x5d

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x2d

    const/16 v6, 0x6c

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_f

    const-string v1, "not support : "

    if-eq v0, v6, :cond_d

    const/16 v9, 0x72

    const/16 v10, 0x29

    const/16 v11, 0x28

    if-eq v0, v9, :cond_b

    const/16 v9, 0x27

    if-eq v0, v9, :cond_1b

    if-eq v0, v11, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 304
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v4, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 228
    new-instance v1, Lcom/alibaba/fastjson2/n$l;

    invoke-direct {v1, v8, v0}, Lcom/alibaba/fastjson2/n$l;-><init>(II)V

    goto/16 :goto_6

    .line 230
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/n$l;

    const/high16 v2, -0x80000000

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/n$l;-><init>(II)V

    goto/16 :goto_6

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x41f1c51a

    if-eq v2, v4, :cond_4

    const v4, 0x35e001

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v7, v5

    goto :goto_1

    :cond_4
    const-string v2, "length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v7, v8

    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    if-ne v7, v5, :cond_6

    goto :goto_2

    .line 296
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v2

    .line 285
    iget-object v4, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v4

    if-eqz v4, :cond_9

    if-gtz v2, :cond_8

    .line 291
    invoke-static {v2}, Lcom/alibaba/fastjson2/o;->a(I)Lcom/alibaba/fastjson2/o;

    move-result-object v1

    goto/16 :goto_6

    .line 289
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v0

    const-string v2, "randomIndex"

    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 259
    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    .line 260
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v4, :cond_c

    .line 262
    sget-object v1, Lcom/alibaba/fastjson2/n$k;->a:Lcom/alibaba/fastjson2/n$k;

    goto/16 :goto_6

    .line 266
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_d
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last"

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 271
    invoke-static {v7}, Lcom/alibaba/fastjson2/o;->a(I)Lcom/alibaba/fastjson2/o;

    move-result-object v1

    goto/16 :goto_6

    .line 273
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_f
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/m;->a()Lcom/alibaba/fastjson2/n;

    move-result-object v1

    goto/16 :goto_6

    .line 179
    :cond_10
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_13

    .line 182
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 183
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v1, v4, :cond_12

    .line 184
    new-instance v1, Lcom/alibaba/fastjson2/n$l;

    if-ltz v0, :cond_11

    const v8, 0x7fffffff

    :cond_11
    invoke-direct {v1, v0, v8}, Lcom/alibaba/fastjson2/n$l;-><init>(II)V

    goto/16 :goto_6

    .line 186
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v1

    .line 187
    new-instance v2, Lcom/alibaba/fastjson2/n$l;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/n$l;-><init>(II)V

    move-object v1, v2

    goto/16 :goto_6

    .line 189
    :cond_13
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v1

    const/16 v2, 0x74

    const/16 v4, 0x73

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1, v6, v3, v4, v2}, Lcom/alibaba/fastjson2/u;->a(CCCC)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_3

    .line 215
    :cond_14
    invoke-static {v0}, Lcom/alibaba/fastjson2/o;->a(I)Lcom/alibaba/fastjson2/o;

    move-result-object v1

    goto/16 :goto_6

    :cond_15
    move v1, v8

    .line 190
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_16

    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 198
    :cond_16
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v0

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 201
    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0, v6, v3, v4, v2}, Lcom/alibaba/fastjson2/u;->a(CCCC)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->x()Z

    goto :goto_4

    .line 209
    :cond_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 210
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_19

    .line 211
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 213
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/n$i;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/n$i;-><init>([I)V

    goto :goto_6

    .line 220
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 221
    sget-object v1, Lcom/alibaba/fastjson2/n$a;->b:Lcom/alibaba/fastjson2/n$a;

    goto :goto_6

    .line 236
    :cond_1b
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v1

    if-ne v1, v4, :cond_1c

    .line 238
    new-instance v1, Lcom/alibaba/fastjson2/p;

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v1, v0, v6, v7}, Lcom/alibaba/fastjson2/p;-><init>(Ljava/lang/String;J)V

    goto :goto_6

    .line 239
    :cond_1c
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 247
    new-instance v1, Lcom/alibaba/fastjson2/n$j;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/n$j;-><init>([Ljava/lang/String;)V

    .line 307
    :goto_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x26

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v0, v3, :cond_1e

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_1f

    .line 308
    :cond_1e
    iget v0, p0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson2/m;->j:I

    .line 309
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/m;->a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;

    move-result-object v1

    .line 311
    :cond_1f
    :goto_7
    iget v0, p0, Lcom/alibaba/fastjson2/m;->j:I

    if-lez v0, :cond_20

    .line 312
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 313
    iget v0, p0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson2/m;->j:I

    goto :goto_7

    .line 315
    :cond_20
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v0

    if-eqz v0, :cond_21

    return-object v1

    .line 316
    :cond_21
    new-instance v0, Lcom/alibaba/fastjson2/c;

    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const-string v2, "jsonpath syntax error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

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

.method private c()Lcom/alibaba/fastjson2/n;
    .locals 9

    .line 324
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 326
    sget-object v0, Lcom/alibaba/fastjson2/n$a;->a:Lcom/alibaba/fastjson2/n$a;

    goto/16 :goto_6

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_2

    .line 328
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 331
    new-instance v0, Lcom/alibaba/fastjson2/n$b;

    const-string v1, "*"

    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/n$b;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->M()J

    move-result-wide v0

    .line 334
    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/alibaba/fastjson2/n$b;

    invoke-direct {v3, v2, v0, v1}, Lcom/alibaba/fastjson2/n$b;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    goto/16 :goto_6

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->M()J

    move-result-wide v1

    .line 340
    iget-object v3, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v6, 0x28

    if-ne v0, v6, :cond_c

    .line 354
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    const/4 v0, -0x1

    .line 355
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "negative"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x11

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "ceiling"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "upper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xf

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "lower"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xe

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "index"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x14

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "floor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v4, v5

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "first"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x12

    goto/16 :goto_3

    :sswitch_7
    const-string v1, "type"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x8

    goto/16 :goto_3

    :sswitch_8
    const-string v1, "trim"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x10

    goto/16 :goto_3

    :sswitch_9
    const-string v1, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    goto/16 :goto_3

    :sswitch_a
    const-string v1, "last"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0x13

    goto/16 :goto_3

    :sswitch_b
    const-string v1, "keys"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "ceil"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xa

    goto :goto_3

    :sswitch_d
    const-string v1, "sum"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x7

    goto :goto_3

    :sswitch_e
    const-string v1, "min"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_f
    const-string v1, "max"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x6

    goto :goto_3

    :sswitch_10
    const-string v1, "abs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xd

    goto :goto_3

    :sswitch_11
    const-string v1, "values"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_12
    const-string v1, "length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :sswitch_13
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v4, 0xc

    goto :goto_3

    :sswitch_14
    const-string v1, "entrySet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v0

    :goto_3
    const-string v0, "not support syntax, path : "

    packed-switch v4, :pswitch_data_0

    .line 445
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 414
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v1

    .line 415
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    .line 416
    check-cast v1, Ljava/math/BigDecimal;

    .line 417
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-eqz v2, :cond_6

    .line 419
    new-instance v2, Lcom/alibaba/fastjson2/k;

    new-instance v3, Lcom/alibaba/fastjson2/k$b;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/k$b;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/k;-><init>(Ljava/util/function/Function;)V

    goto :goto_4

    .line 422
    :cond_6
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 423
    sget-object v2, Labo;->J:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_7

    sget-object v2, Labo;->K:Ljava/math/BigInteger;

    .line 424
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_7

    .line 425
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 431
    :cond_7
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_8

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_a

    .line 434
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 435
    new-instance v3, Lcom/alibaba/fastjson2/k;

    new-instance v4, Lcom/alibaba/fastjson2/k$c;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/fastjson2/k$c;-><init>(J)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson2/k;-><init>(Ljava/util/function/Function;)V

    move-object v1, v3

    goto/16 :goto_5

    .line 438
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 439
    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v1

    .line 440
    new-instance v2, Lcom/alibaba/fastjson2/k;

    new-instance v3, Lcom/alibaba/fastjson2/k$d;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/k$d;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/k;-><init>(Ljava/util/function/Function;)V

    :goto_4
    move-object v1, v2

    goto :goto_5

    .line 443
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :pswitch_1
    sget-object v1, Lcom/alibaba/fastjson2/k;->l:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 407
    :pswitch_2
    sget-object v1, Lcom/alibaba/fastjson2/k;->k:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 404
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson2/k;->f:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 401
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/k;->j:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 398
    :pswitch_5
    sget-object v1, Lcom/alibaba/fastjson2/k;->i:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 395
    :pswitch_6
    sget-object v1, Lcom/alibaba/fastjson2/k;->h:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 392
    :pswitch_7
    sget-object v1, Lcom/alibaba/fastjson2/k;->e:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 389
    :pswitch_8
    sget-object v1, Lcom/alibaba/fastjson2/k;->b:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 386
    :pswitch_9
    sget-object v1, Lcom/alibaba/fastjson2/k;->d:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 382
    :pswitch_a
    sget-object v1, Lcom/alibaba/fastjson2/k;->c:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 379
    :pswitch_b
    sget-object v1, Lcom/alibaba/fastjson2/k;->a:Lcom/alibaba/fastjson2/k;

    goto :goto_5

    .line 376
    :pswitch_c
    sget-object v1, Lcom/alibaba/fastjson2/n$o;->a:Lcom/alibaba/fastjson2/n$o;

    goto :goto_5

    .line 373
    :pswitch_d
    sget-object v1, Lcom/alibaba/fastjson2/n$g;->a:Lcom/alibaba/fastjson2/n$g;

    goto :goto_5

    .line 370
    :pswitch_e
    sget-object v1, Lcom/alibaba/fastjson2/n$h;->a:Lcom/alibaba/fastjson2/n$h;

    goto :goto_5

    .line 367
    :pswitch_f
    sget-object v1, Lcom/alibaba/fastjson2/n$c;->a:Lcom/alibaba/fastjson2/n$c;

    goto :goto_5

    .line 364
    :pswitch_10
    sget-object v1, Lcom/alibaba/fastjson2/n$p;->a:Lcom/alibaba/fastjson2/n$p;

    goto :goto_5

    .line 361
    :pswitch_11
    sget-object v1, Lcom/alibaba/fastjson2/n$e;->a:Lcom/alibaba/fastjson2/n$e;

    goto :goto_5

    .line 358
    :pswitch_12
    sget-object v1, Lcom/alibaba/fastjson2/n$f;->a:Lcom/alibaba/fastjson2/n$f;

    .line 447
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v0, v1

    goto :goto_6

    .line 448
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/p;

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson2/p;-><init>(Ljava/lang/String;J)V

    :goto_6
    return-object v0

    nop

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
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method varargs a([Lcom/alibaba/fastjson2/g$b;)Lcom/alibaba/fastjson2/g;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/m;->c:Z

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v4, :cond_1

    .line 53
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/m;->k:Z

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Lcom/alibaba/fastjson2/q;

    sget-object v2, Lcom/alibaba/fastjson2/k;->f:Lcom/alibaba/fastjson2/k;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    new-array v3, v3, [Lcom/alibaba/fastjson2/g$b;

    invoke-direct {v1, v2, v4, v3}, Lcom/alibaba/fastjson2/q;-><init>(Lcom/alibaba/fastjson2/n;Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v1

    .line 56
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/g$d;->f:Lcom/alibaba/fastjson2/g$d;

    return-object v1

    .line 60
    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x65

    const/16 v6, 0x5a

    const/16 v7, 0x5f

    const/16 v8, 0x7a

    const/16 v9, 0x41

    const/16 v10, 0x61

    const/16 v11, 0x2e

    const/16 v12, 0x40

    if-ne v2, v5, :cond_a

    iget-object v13, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v14, 0x65

    const/16 v15, 0x78

    const/16 v16, 0x69

    const/16 v17, 0x73

    const/16 v18, 0x74

    const/16 v19, 0x73

    invoke-virtual/range {v13 .. v19}, Lcom/alibaba/fastjson2/u;->a(CCCCCC)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 61
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    const-string v2, "syntax error "

    if-eqz v1, :cond_9

    .line 65
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v1, v12, :cond_3

    .line 66
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 67
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

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
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->c()Lcom/alibaba/fastjson2/n;

    move-result-object v1

    .line 80
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 84
    new-instance v2, Lcom/alibaba/fastjson2/t;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/fastjson2/k;->g:Lcom/alibaba/fastjson2/k;

    new-array v3, v3, [Lcom/alibaba/fastjson2/g$b;

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/alibaba/fastjson2/t;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v2

    .line 81
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_17

    .line 90
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v11, :cond_b

    .line 92
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->E()V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->c()Lcom/alibaba/fastjson2/n;

    move-result-object v2

    goto :goto_3

    .line 94
    :cond_b
    iget-object v13, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v13, v13, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v14, 0x5b

    if-ne v13, v14, :cond_c

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->b()Lcom/alibaba/fastjson2/n;

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
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->c()Lcom/alibaba/fastjson2/n;

    move-result-object v2

    goto :goto_3

    :cond_10
    const/16 v13, 0x3f

    if-ne v2, v13, :cond_12

    .line 99
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/m;->c:Z

    if-eqz v2, :cond_11

    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    if-nez v2, :cond_11

    .line 100
    sget-object v2, Lcom/alibaba/fastjson2/n$m;->a:Lcom/alibaba/fastjson2/n$m;

    iput-object v2, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    .line 101
    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    .line 103
    :cond_11
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->E()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->a()Lcom/alibaba/fastjson2/n;

    move-result-object v2

    goto :goto_3

    :cond_12
    if-ne v2, v12, :cond_16

    .line 106
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->E()V

    .line 107
    sget-object v2, Lcom/alibaba/fastjson2/n$n;->a:Lcom/alibaba/fastjson2/n$n;

    .line 112
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson2/m;->f:I

    if-nez v13, :cond_13

    .line 113
    iput-object v2, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    goto :goto_4

    :cond_13
    if-ne v13, v5, :cond_14

    .line 115
    iput-object v2, v0, Lcom/alibaba/fastjson2/m;->h:Lcom/alibaba/fastjson2/n;

    goto :goto_4

    :cond_14
    if-ne v13, v3, :cond_15

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    .line 118
    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    iget-object v13, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    iget-object v13, v0, Lcom/alibaba/fastjson2/m;->h:Lcom/alibaba/fastjson2/n;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 122
    :cond_15
    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    goto/16 :goto_2

    .line 109
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_17
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/m;->k:Z

    if-eqz v2, :cond_1a

    .line 128
    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    if-ne v2, v5, :cond_18

    .line 129
    sget-object v2, Lcom/alibaba/fastjson2/k;->f:Lcom/alibaba/fastjson2/k;

    iput-object v2, v0, Lcom/alibaba/fastjson2/m;->h:Lcom/alibaba/fastjson2/n;

    goto :goto_5

    :cond_18
    if-ne v2, v3, :cond_19

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    .line 132
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->h:Lcom/alibaba/fastjson2/n;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    sget-object v4, Lcom/alibaba/fastjson2/k;->f:Lcom/alibaba/fastjson2/k;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 136
    :cond_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    sget-object v4, Lcom/alibaba/fastjson2/k;->f:Lcom/alibaba/fastjson2/k;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_5
    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    .line 141
    :cond_1a
    iget v2, v0, Lcom/alibaba/fastjson2/m;->f:I

    if-ne v2, v5, :cond_1d

    .line 142
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    instance-of v3, v2, Lcom/alibaba/fastjson2/p;

    if-eqz v3, :cond_1b

    .line 143
    new-instance v3, Lcom/alibaba/fastjson2/s;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    check-cast v2, Lcom/alibaba/fastjson2/p;

    invoke-direct {v3, v4, v2, v1}, Lcom/alibaba/fastjson2/s;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/p;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v3

    .line 146
    :cond_1b
    instance-of v3, v2, Lcom/alibaba/fastjson2/o;

    if-eqz v3, :cond_1c

    .line 147
    check-cast v2, Lcom/alibaba/fastjson2/o;

    .line 148
    iget v3, v2, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v3, :cond_1c

    .line 149
    new-instance v3, Lcom/alibaba/fastjson2/r;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1}, Lcom/alibaba/fastjson2/r;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/o;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v3

    .line 153
    :cond_1c
    new-instance v2, Lcom/alibaba/fastjson2/q;

    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/q;-><init>(Lcom/alibaba/fastjson2/n;Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v2

    :cond_1d
    if-ne v2, v3, :cond_1e

    .line 157
    new-instance v2, Lcom/alibaba/fastjson2/t;

    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->g:Lcom/alibaba/fastjson2/n;

    iget-object v5, v0, Lcom/alibaba/fastjson2/m;->h:Lcom/alibaba/fastjson2/n;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/alibaba/fastjson2/t;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v2

    .line 160
    :cond_1e
    new-instance v2, Lcom/alibaba/fastjson2/l;

    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->i:Ljava/util/List;

    invoke-direct {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/l;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/alibaba/fastjson2/g$b;)V

    return-object v2
.end method

.method a()Lcom/alibaba/fastjson2/n;
    .locals 27

    move-object/from16 v0, p0

    .line 524
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 525
    iget v4, v0, Lcom/alibaba/fastjson2/m;->j:I

    if-lez v4, :cond_0

    add-int/2addr v4, v3

    .line 526
    iput v4, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 529
    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v4, v4, Lcom/alibaba/fastjson2/u;->f:C

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
    iget-object v5, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_2

    .line 532
    :cond_2
    iget-object v10, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v11, 0x65

    const/16 v12, 0x78

    const/16 v13, 0x69

    const/16 v14, 0x73

    const/16 v15, 0x74

    const/16 v16, 0x73

    invoke-virtual/range {v10 .. v16}, Lcom/alibaba/fastjson2/u;->a(CCCCCC)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 533
    iget-object v3, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 537
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 538
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->M()J

    move-result-wide v2

    .line 540
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v4

    .line 542
    iget-object v5, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    .line 544
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 545
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_4
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/j$e;

    invoke-direct {v1, v4, v2, v3}, Lcom/alibaba/fastjson2/j$e;-><init>(Ljava/lang/String;J)V

    return-object v1

    .line 553
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const-string v3, "exists"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_7
    :goto_2
    iget-object v10, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v11, 0x73

    const/16 v12, 0x74

    const/16 v13, 0x61

    const/16 v14, 0x72

    const/16 v15, 0x74

    const/16 v16, 0x73

    invoke-virtual/range {v10 .. v16}, Lcom/alibaba/fastjson2/u;->a(CCCCCC)Z

    move-result v5

    if-nez v5, :cond_8

    .line 557
    iget-object v10, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v11, 0x65

    const/16 v12, 0x6e

    const/16 v13, 0x64

    const/16 v14, 0x73

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/alibaba/fastjson2/u;->a(CCCC)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v3

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    const-wide/16 v11, 0x0

    const/16 v13, 0x7c

    const/16 v14, 0x26

    const/4 v15, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    if-nez v5, :cond_a

    if-nez v10, :cond_a

    .line 558
    :cond_9
    iget-object v8, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v8, v8, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v8, v7, :cond_1b

    iget-object v8, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v8, v8, Lcom/alibaba/fastjson2/u;->f:C

    invoke-static {v8}, Lcom/alibaba/fastjson2/u;->b(C)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 559
    :cond_a
    iget-object v7, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 560
    iget v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 561
    iget v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/m;->a()Lcom/alibaba/fastjson2/n;

    move-result-object v1

    return-object v1

    :cond_b
    if-eqz v4, :cond_1a

    if-nez v5, :cond_d

    if-eqz v10, :cond_c

    goto :goto_5

    .line 577
    :cond_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-static {v2}, Lcom/alibaba/fastjson2/g;->b(Lcom/alibaba/fastjson2/u;)Lcom/alibaba/fastjson2/j$r;

    move-result-object v2

    :goto_4
    move-object/from16 v24, v2

    goto :goto_6

    .line 570
    :cond_d
    :goto_5
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->M()J

    .line 571
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v2

    const-string v4, "with"

    .line 572
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v5, :cond_e

    .line 575
    sget-object v2, Lcom/alibaba/fastjson2/j$r;->STARTS_WITH:Lcom/alibaba/fastjson2/j$r;

    goto :goto_4

    :cond_e
    sget-object v2, Lcom/alibaba/fastjson2/j$r;->ENDS_WITH:Lcom/alibaba/fastjson2/j$r;

    goto :goto_4

    .line 581
    :goto_6
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 582
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v2

    .line 583
    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_f

    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_13

    .line 584
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson2/j$i;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v25

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v26}, Lcom/alibaba/fastjson2/j$i;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;J)V

    move-object v6, v4

    goto :goto_7

    .line 586
    :cond_10
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 587
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v2

    .line 589
    sget-object v4, Lcom/alibaba/fastjson2/m$1;->a:[I

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_12

    if-ne v4, v15, :cond_11

    .line 594
    new-instance v4, Lcom/alibaba/fastjson2/j$a;

    invoke-direct {v4, v6, v11, v12, v2}, Lcom/alibaba/fastjson2/j$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8

    .line 597
    :cond_11
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_12
    new-instance v4, Lcom/alibaba/fastjson2/j$s;

    invoke-direct {v4, v6, v11, v12, v2}, Lcom/alibaba/fastjson2/j$s;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_8

    :cond_13
    :goto_7
    move-object v4, v6

    .line 601
    :goto_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v2, v14, :cond_18

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v13, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v4, :cond_17

    if-eqz v1, :cond_16

    .line 608
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_9

    .line 609
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_9
    return-object v4

    .line 615
    :cond_17
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_18
    :goto_a
    iget v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 603
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/m;->a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;

    move-result-object v4

    goto :goto_8

    .line 573
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support operator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_1a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    if-eqz v4, :cond_1c

    .line 619
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u;->E()V

    .line 622
    :cond_1c
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u;->M()J

    move-result-wide v4

    .line 623
    iget-object v8, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v8}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_1e

    .line 626
    iget-object v10, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v6, 0x29

    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 627
    iget v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    if-lez v1, :cond_1d

    sub-int/2addr v1, v3

    .line 628
    iput v1, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 630
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson2/j$e;

    invoke-direct {v1, v8, v4, v5}, Lcom/alibaba/fastjson2/j$e;-><init>(Ljava/lang/String;J)V

    return-object v1

    :cond_1e
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 638
    :goto_b
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v11, v11, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v11, v7, :cond_21

    .line 639
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v11}, Lcom/alibaba/fastjson2/u;->E()V

    .line 640
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v11}, Lcom/alibaba/fastjson2/u;->M()J

    move-result-wide v11

    .line 641
    iget-object v7, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v7}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v7

    .line 643
    iget-object v13, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v13, v13, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v13, v2, :cond_1f

    goto :goto_d

    :cond_1f
    if-nez v6, :cond_20

    .line 649
    new-array v6, v3, [J

    const/4 v10, 0x0

    aput-wide v11, v6, v10

    .line 650
    new-array v11, v3, [Ljava/lang/String;

    aput-object v7, v11, v10

    move-object v10, v11

    goto :goto_c

    .line 652
    :cond_20
    array-length v13, v6

    add-int/2addr v13, v3

    invoke-static {v6, v13}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 653
    array-length v13, v6

    sub-int/2addr v13, v3

    aput-wide v11, v6, v13

    .line 654
    array-length v11, v10

    add-int/2addr v11, v3

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 655
    array-length v11, v10

    sub-int/2addr v11, v3

    aput-object v7, v10, v11

    :goto_c
    const/16 v7, 0x2e

    const/16 v13, 0x7c

    goto :goto_b

    :cond_21
    const/4 v7, 0x0

    .line 661
    :goto_d
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v11, v11, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v11, v2, :cond_2c

    if-nez v7, :cond_22

    move-object v7, v8

    const/4 v8, 0x0

    :cond_22
    const/4 v4, -0x1

    .line 667
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v11, -0x21d289e1

    if-eq v5, v11, :cond_25

    const v11, 0x35e001

    if-eq v5, v11, :cond_24

    const v11, 0x368f3a

    if-eq v5, v11, :cond_23

    goto :goto_e

    :cond_23
    const-string v5, "type"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x0

    goto :goto_e

    :cond_24
    const-string v5, "size"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move v4, v3

    goto :goto_e

    :cond_25
    const-string v5, "contains"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    move v4, v15

    :cond_26
    :goto_e
    if-eqz v4, :cond_29

    if-eq v4, v3, :cond_28

    if-ne v4, v15, :cond_27

    .line 678
    sget-object v4, Lcom/alibaba/fastjson2/j$r;->CONTAINS:Lcom/alibaba/fastjson2/j$r;

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_10

    .line 681
    :cond_27
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, function not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_28
    sget-object v4, Lcom/alibaba/fastjson2/k$e;->a:Lcom/alibaba/fastjson2/k$e;

    goto :goto_f

    .line 670
    :cond_29
    sget-object v4, Lcom/alibaba/fastjson2/k$f;->a:Lcom/alibaba/fastjson2/k$f;

    :goto_f
    const/4 v5, 0x0

    :goto_10
    if-eqz v4, :cond_2b

    .line 685
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v11}, Lcom/alibaba/fastjson2/u;->E()V

    .line 686
    iget-object v11, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v11

    if-eqz v11, :cond_2a

    goto :goto_11

    .line 687
    :cond_2a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    :goto_11
    move-object/from16 v23, v4

    move-object/from16 v19, v8

    const-wide/16 v20, 0x0

    goto :goto_12

    :cond_2c
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    const/4 v5, 0x0

    const/16 v23, 0x0

    :goto_12
    if-nez v5, :cond_2d

    .line 693
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-static {v4}, Lcom/alibaba/fastjson2/g;->b(Lcom/alibaba/fastjson2/u;)Lcom/alibaba/fastjson2/j$r;

    move-result-object v4

    goto :goto_13

    :cond_2d
    move-object v4, v5

    .line 696
    :goto_13
    sget-object v5, Lcom/alibaba/fastjson2/m$1;->a:[I

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v7

    aget v5, v5, v7

    const/16 v7, 0x6f

    const/16 v8, 0x61

    packed-switch v5, :pswitch_data_0

    .line 852
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    goto/16 :goto_23

    .line 827
    :pswitch_0
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 828
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v2

    .line 829
    iget-object v5, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v5

    const-string v6, "and"

    .line 830
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 833
    iget-object v5, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v5}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v5

    .line 834
    new-instance v6, Lcom/alibaba/fastjson2/j$g;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v22

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    sget-object v2, Lcom/alibaba/fastjson2/j$r;->NOT_BETWEEN:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v2, :cond_2e

    move/from16 v26, v3

    goto :goto_14

    :cond_2e
    const/16 v26, 0x0

    :goto_14
    move-object/from16 v18, v6

    invoke-direct/range {v18 .. v26}, Lcom/alibaba/fastjson2/j$g;-><init>(Ljava/lang/String;JJJZ)V

    if-eqz v1, :cond_30

    .line 840
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_15

    .line 841
    :cond_2f
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_15
    return-object v6

    .line 831
    :cond_31
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_32
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :pswitch_1
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v1, v2, :cond_3a

    .line 776
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 779
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 780
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :goto_16
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 782
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 784
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 785
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 786
    new-instance v1, Lcom/alibaba/fastjson2/j$o;

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v24}, Lcom/alibaba/fastjson2/j$o;-><init>(Ljava/lang/String;J[Ljava/lang/String;[J[Ljava/lang/String;Z)V

    goto :goto_19

    .line 794
    :cond_34
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_17
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 797
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 799
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 800
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 801
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 803
    :cond_36
    new-instance v1, Lcom/alibaba/fastjson2/j$k;

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v24}, Lcom/alibaba/fastjson2/j$k;-><init>(Ljava/lang/String;J[Ljava/lang/String;[J[JZ)V

    .line 815
    :goto_19
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 818
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_37

    return-object v1

    .line 819
    :cond_37
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_38
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_39
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_3a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 726
    :pswitch_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v1, v2, :cond_46

    .line 729
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 732
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    :goto_1a
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 735
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 737
    :cond_3b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 738
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 739
    new-instance v1, Lcom/alibaba/fastjson2/j$p;

    sget-object v5, Lcom/alibaba/fastjson2/j$r;->NOT_IN:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v5, :cond_3c

    move/from16 v23, v3

    goto :goto_1b

    :cond_3c
    const/16 v23, 0x0

    :goto_1b
    move-object/from16 v18, v1

    move-object/from16 v22, v2

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson2/j$p;-><init>(Ljava/lang/String;J[Ljava/lang/String;Z)V

    goto :goto_1f

    .line 745
    :cond_3d
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 747
    :goto_1c
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->u()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 748
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 750
    :cond_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v5, 0x0

    .line 751
    :goto_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3f

    .line 752
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    aput-wide v11, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 754
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/j$h;

    sget-object v5, Lcom/alibaba/fastjson2/j$r;->NOT_IN:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v5, :cond_40

    move/from16 v25, v3

    goto :goto_1e

    :cond_40
    const/16 v25, 0x0

    :goto_1e
    move-object/from16 v17, v1

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v2

    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson2/j$h;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;[JZ)V

    .line 759
    :goto_1f
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 762
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v2, v14, :cond_41

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_41

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v2, v8, :cond_41

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v7, :cond_42

    .line 763
    :cond_41
    iget v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 764
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/m;->a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;

    move-result-object v1

    .line 766
    :cond_42
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_43

    return-object v1

    .line 767
    :cond_43
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_44
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_45
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    :cond_46
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :pswitch_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 703
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    goto :goto_20

    .line 706
    :cond_47
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->C()Ljava/lang/String;

    move-result-object v1

    .line 707
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v5, 0x69

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v6

    :goto_20
    if-eqz v6, :cond_48

    .line 711
    invoke-static {v1, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_21

    .line 712
    :cond_48
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :goto_21
    move-object/from16 v22, v1

    .line 714
    new-instance v1, Lcom/alibaba/fastjson2/j$n;

    sget-object v2, Lcom/alibaba/fastjson2/j$r;->NOT_RLIKE:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v2, :cond_49

    move/from16 v23, v3

    goto :goto_22

    :cond_49
    const/16 v23, 0x0

    :goto_22
    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson2/j$n;-><init>(Ljava/lang/String;JLjava/util/regex/Pattern;Z)V

    .line 715
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v2, v14, :cond_4a

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v4, 0x7c

    if-eq v2, v4, :cond_4a

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v2, v8, :cond_4a

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v2, v2, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v7, :cond_4b

    .line 716
    :cond_4a
    iget v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 717
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/m;->a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;

    move-result-object v1

    .line 719
    :cond_4b
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    return-object v1

    .line 720
    :cond_4c
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_23
    const/16 v5, 0x22

    if-eq v2, v5, :cond_58

    const/16 v5, 0x27

    if-eq v2, v5, :cond_58

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_54

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_54

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_53

    const/16 v5, 0x66

    if-eq v2, v5, :cond_51

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_4f

    const/16 v5, 0x74

    if-eq v2, v5, :cond_4e

    const/16 v5, 0x7b

    if-eq v2, v5, :cond_4d

    packed-switch v2, :pswitch_data_1

    .line 970
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    :cond_4d
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const-class v5, Lcom/alibaba/fastjson2/e;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/alibaba/fastjson2/e;

    .line 959
    new-instance v2, Lcom/alibaba/fastjson2/j$m;

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson2/j$m;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;Lcom/alibaba/fastjson2/e;)V

    goto/16 :goto_2d

    .line 937
    :cond_4e
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v2

    const-string v5, "true"

    .line 938
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 939
    new-instance v2, Lcom/alibaba/fastjson2/j$i;

    const-wide/16 v25, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v26}, Lcom/alibaba/fastjson2/j$i;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;J)V

    goto/16 :goto_2d

    .line 963
    :cond_4f
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 965
    new-instance v2, Lcom/alibaba/fastjson2/j$j;

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Lcom/alibaba/fastjson2/j$j;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    goto/16 :goto_2d

    .line 968
    :cond_50
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_51
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v2

    const-string v5, "false"

    .line 946
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 947
    new-instance v2, Lcom/alibaba/fastjson2/j$i;

    const-wide/16 v25, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v26}, Lcom/alibaba/fastjson2/j$i;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;J)V

    goto/16 :goto_2d

    :cond_52
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 953
    :cond_53
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/alibaba/fastjson2/JSONArray;

    .line 954
    new-instance v2, Lcom/alibaba/fastjson2/j$c;

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson2/j$c;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;Lcom/alibaba/fastjson2/JSONArray;)V

    goto/16 :goto_2d

    .line 865
    :cond_54
    :pswitch_4
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v2

    .line 866
    instance-of v5, v2, Ljava/lang/Integer;

    if-nez v5, :cond_57

    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_55

    goto :goto_24

    .line 868
    :cond_55
    instance-of v5, v2, Ljava/math/BigDecimal;

    if-eqz v5, :cond_56

    .line 869
    new-instance v5, Lcom/alibaba/fastjson2/j$d;

    move-object/from16 v23, v2

    check-cast v23, Ljava/math/BigDecimal;

    move-object/from16 v18, v5

    move-object/from16 v22, v4

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson2/j$d;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson2/j$r;Ljava/math/BigDecimal;)V

    goto :goto_25

    .line 871
    :cond_56
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 867
    :cond_57
    :goto_24
    new-instance v5, Lcom/alibaba/fastjson2/j$i;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v25

    move-object/from16 v17, v5

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v26}, Lcom/alibaba/fastjson2/j$i;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;J)V

    :goto_25
    move-object v2, v5

    goto/16 :goto_2d

    .line 877
    :cond_58
    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x25

    .line 878
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5a

    .line 880
    sget-object v12, Lcom/alibaba/fastjson2/j$r;->LIKE:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v12, :cond_59

    .line 881
    sget-object v4, Lcom/alibaba/fastjson2/j$r;->EQ:Lcom/alibaba/fastjson2/j$r;

    goto :goto_26

    .line 882
    :cond_59
    sget-object v12, Lcom/alibaba/fastjson2/j$r;->NOT_LIKE:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v12, :cond_5a

    .line 883
    sget-object v4, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    .line 887
    :cond_5a
    :goto_26
    sget-object v12, Lcom/alibaba/fastjson2/j$r;->LIKE:Lcom/alibaba/fastjson2/j$r;

    if-eq v4, v12, :cond_5c

    sget-object v12, Lcom/alibaba/fastjson2/j$r;->NOT_LIKE:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v12, :cond_5b

    goto :goto_27

    .line 932
    :cond_5b
    new-instance v5, Lcom/alibaba/fastjson2/j$q;

    move-object/from16 v17, v5

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-object/from16 v21, v10

    move-object/from16 v22, v6

    move-object/from16 v24, v4

    move-object/from16 v25, v2

    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson2/j$q;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;Ljava/lang/String;)V

    goto :goto_25

    :cond_5c
    :goto_27
    const-string v6, "%"

    .line 888
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v11, :cond_5f

    .line 894
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_5d

    .line 895
    array-length v2, v6

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 896
    array-length v5, v2

    const/4 v10, 0x0

    invoke-static {v6, v3, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v24, v2

    :goto_28
    const/16 v22, 0x0

    const/16 v23, 0x0

    goto :goto_2b

    :cond_5d
    const/4 v10, 0x0

    .line 898
    array-length v2, v6

    sub-int/2addr v2, v3

    aget-object v2, v6, v2

    .line 899
    array-length v5, v6

    if-le v5, v15, :cond_5e

    .line 900
    array-length v5, v6

    sub-int/2addr v5, v15

    new-array v5, v5, [Ljava/lang/String;

    .line 901
    array-length v11, v5

    invoke-static {v6, v3, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v23, v2

    move-object/from16 v24, v5

    const/16 v22, 0x0

    goto :goto_2b

    :cond_5e
    move-object/from16 v23, v2

    const/16 v22, 0x0

    :goto_29
    const/16 v24, 0x0

    goto :goto_2b

    :cond_5f
    const/4 v10, 0x0

    .line 904
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_61

    .line 905
    array-length v2, v6

    if-ne v2, v3, :cond_60

    .line 906
    aget-object v6, v6, v10

    goto :goto_2a

    :cond_60
    move-object/from16 v24, v6

    goto :goto_28

    .line 911
    :cond_61
    array-length v2, v6

    if-ne v2, v3, :cond_62

    .line 912
    aget-object v6, v6, v10

    :goto_2a
    move-object/from16 v22, v6

    const/16 v23, 0x0

    goto :goto_29

    .line 913
    :cond_62
    array-length v2, v6

    if-ne v2, v15, :cond_63

    .line 914
    aget-object v2, v6, v10

    .line 915
    aget-object v6, v6, v3

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    goto :goto_29

    .line 917
    :cond_63
    aget-object v2, v6, v10

    .line 918
    array-length v5, v6

    sub-int/2addr v5, v3

    aget-object v5, v6, v5

    .line 919
    array-length v11, v6

    sub-int/2addr v11, v15

    new-array v11, v11, [Ljava/lang/String;

    .line 920
    array-length v12, v11

    invoke-static {v6, v3, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v11

    .line 923
    :goto_2b
    new-instance v2, Lcom/alibaba/fastjson2/j$l;

    sget-object v5, Lcom/alibaba/fastjson2/j$r;->NOT_LIKE:Lcom/alibaba/fastjson2/j$r;

    if-ne v4, v5, :cond_64

    move/from16 v25, v3

    goto :goto_2c

    :cond_64
    move/from16 v25, v10

    :goto_2c
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson2/j$l;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 973
    :goto_2d
    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v4, v4, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v4, v14, :cond_65

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v4, v4, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_65

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v4, v4, Lcom/alibaba/fastjson2/u;->f:C

    if-eq v4, v8, :cond_65

    iget-object v4, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v4, v4, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v4, v7, :cond_66

    .line 974
    :cond_65
    iget v4, v0, Lcom/alibaba/fastjson2/m;->j:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/alibaba/fastjson2/m;->j:I

    .line 975
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/m;->a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;

    move-result-object v2

    :cond_66
    if-eqz v1, :cond_68

    .line 979
    iget-object v1, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_67

    goto :goto_2e

    .line 980
    :cond_67
    new-instance v1, Lcom/alibaba/fastjson2/c;

    iget-object v2, v0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_68
    :goto_2e
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method a(Lcom/alibaba/fastjson2/n;)Lcom/alibaba/fastjson2/n;
    .locals 6

    .line 459
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v0, v0, Lcom/alibaba/fastjson2/u;->f:C

    const-string v1, "jsonpath syntax error"

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41

    const-string v5, "syntax error : "

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 469
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    iget-char v1, v1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

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
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->N()Ljava/lang/String;

    move-result-object v0

    const-string v1, "and"

    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 478
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 461
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 496
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/m;->a()Lcom/alibaba/fastjson2/n;

    move-result-object v0

    .line 497
    instance-of v1, p1, Lcom/alibaba/fastjson2/j$b;

    if-eqz v1, :cond_7

    .line 498
    check-cast p1, Lcom/alibaba/fastjson2/j$b;

    .line 499
    iget-object v1, p1, Lcom/alibaba/fastjson2/j$b;->a:Ljava/util/List;

    check-cast v0, Lcom/alibaba/fastjson2/j;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/j;->a(Z)Lcom/alibaba/fastjson2/j;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 503
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    check-cast p1, Lcom/alibaba/fastjson2/j;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    instance-of p1, v0, Lcom/alibaba/fastjson2/j$b;

    if-eqz p1, :cond_9

    .line 506
    check-cast v0, Lcom/alibaba/fastjson2/j$b;

    .line 507
    iget-object p1, v0, Lcom/alibaba/fastjson2/j$b;->a:Ljava/util/List;

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

    check-cast v0, Lcom/alibaba/fastjson2/j;

    if-nez v3, :cond_8

    .line 512
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/j;->a(Z)Lcom/alibaba/fastjson2/j;

    .line 514
    :cond_8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 518
    :cond_9
    check-cast v0, Lcom/alibaba/fastjson2/j;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/j;->a(Z)Lcom/alibaba/fastjson2/j;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson2/j$b;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson2/j$b;-><init>(Ljava/util/List;)V

    return-object p1

    .line 463
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/c;

    iget-object v0, p0, Lcom/alibaba/fastjson2/m;->b:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
