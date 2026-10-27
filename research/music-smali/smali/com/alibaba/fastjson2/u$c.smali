.class public final Lcom/alibaba/fastjson2/u$c;
.super Ljava/lang/Object;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:I

.field m:I

.field n:Ljava/time/format/DateTimeFormatter;

.field o:Ljava/time/ZoneId;

.field p:J

.field q:Ljava/util/Locale;

.field r:Ljava/util/TimeZone;

.field s:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field u:Lcom/alibaba/fastjson2/u$a;

.field v:Lqn;

.field final w:Lzx;

.field final x:Lcom/alibaba/fastjson2/ak;


# direct methods
.method public constructor <init>(Lzx;)V
    .locals 2

    .line 4012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 3997
    iput v0, p0, Lcom/alibaba/fastjson2/u$c;->l:I

    const/high16 v0, 0x80000

    .line 3998
    iput v0, p0, Lcom/alibaba/fastjson2/u$c;->m:I

    .line 4013
    sget-wide v0, Lcom/alibaba/fastjson2/d;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    .line 4014
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    .line 4015
    sget-object p1, Lcom/alibaba/fastjson2/d;->j:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    .line 4016
    sget-object p1, Lcom/alibaba/fastjson2/d;->k:Ljava/util/function/Supplier;

    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->t:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    .line 4017
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->x:Lcom/alibaba/fastjson2/ak;

    .line 4018
    sget-object p1, Lcom/alibaba/fastjson2/d;->f:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    .line 4020
    sget-object p1, Lcom/alibaba/fastjson2/d;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4022
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lwk;
    .locals 1

    .line 4199
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    invoke-virtual {v0, p1, p2}, Lzx;->a(J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Lwk;
    .locals 3

    .line 4203
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->u:Lcom/alibaba/fastjson2/u$a;

    if-eqz v0, :cond_1

    .line 4204
    iget-wide v1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4206
    iget-wide p1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4207
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    invoke-virtual {p2, v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    return-object p1

    .line 4211
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;
    .locals 3

    .line 4219
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->u:Lcom/alibaba/fastjson2/u$a;

    if-eqz v0, :cond_1

    .line 4220
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4222
    sget-object p1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4223
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    invoke-virtual {p2, v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    return-object p1

    .line 4227
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    or-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;)Lwk;
    .locals 4

    .line 4190
    iget-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4191
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    invoke-virtual {v1, p1, v0}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u$d;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 4451
    iget-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    goto :goto_0

    .line 4453
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4273
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 4280
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "iso8601"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_5
    const-string v3, "unixtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_6
    const-string v3, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "millis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_8
    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x64

    .line 4312
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v2

    goto :goto_6

    .line 4309
    :pswitch_0
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/u$c;->d:Z

    goto/16 :goto_8

    .line 4304
    :pswitch_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/u$c;->e:Z

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v2

    goto :goto_4

    .line 4299
    :pswitch_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/u$c;->c:Z

    move v3, v1

    move v4, v3

    goto :goto_3

    :pswitch_3
    move v3, v1

    goto :goto_2

    :pswitch_4
    move v3, v2

    .line 4294
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/u$c;->b:Z

    move v4, v1

    :goto_3
    move v5, v4

    move v6, v2

    move v1, v6

    :goto_4
    move v2, v5

    goto :goto_a

    :pswitch_5
    move v3, v1

    move v4, v3

    move v6, v4

    move v5, v2

    goto :goto_5

    :pswitch_6
    move v3, v1

    move v5, v3

    move v6, v5

    move v4, v2

    :goto_5
    move v2, v6

    goto :goto_a

    :pswitch_7
    move v3, v1

    goto :goto_9

    :cond_2
    move v3, v1

    :goto_6
    const/16 v5, 0x48

    .line 4313
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x68

    .line 4314
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x4b

    .line 4315
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x6b

    .line 4316
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_3

    goto :goto_7

    :cond_3
    move v2, v1

    :cond_4
    :goto_7
    move v4, v1

    move v5, v4

    move v6, v3

    move v3, v5

    move v1, v2

    move v2, v3

    goto :goto_a

    :cond_5
    :goto_8
    move v2, v1

    move v3, v2

    :goto_9
    move v4, v3

    move v5, v4

    move v6, v5

    .line 4323
    :goto_a
    iget-object v7, p0, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4324
    iput-object v0, p0, Lcom/alibaba/fastjson2/u$c;->n:Ljava/time/format/DateTimeFormatter;

    .line 4326
    :cond_6
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    .line 4327
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/u$c;->g:Z

    .line 4328
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/u$c;->f:Z

    .line 4329
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/u$c;->h:Z

    .line 4331
    iput-boolean v6, p0, Lcom/alibaba/fastjson2/u$c;->i:Z

    .line 4332
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/u$c;->j:Z

    .line 4333
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/u$c;->k:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_8
        -0x400565ba -> :sswitch_7
        -0x14bad9d9 -> :sswitch_6
        -0x112ad7ab -> :sswitch_5
        -0x985fe00 -> :sswitch_4
        0x4f76f1a0 -> :sswitch_3
        0x6b2ed43a -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    .line 4376
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->q:Ljava/util/Locale;

    return-void
.end method

.method public a(Ljava/util/TimeZone;)V
    .locals 0

    .line 4384
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->r:Ljava/util/TimeZone;

    return-void
.end method

.method public a(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .line 4243
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    return-void
.end method

.method public a(Lqo;)V
    .locals 1

    .line 4408
    instance-of v0, p1, Lcom/alibaba/fastjson2/u$a;

    if-eqz v0, :cond_0

    .line 4409
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson2/u$a;

    iput-object v0, p0, Lcom/alibaba/fastjson2/u$c;->u:Lcom/alibaba/fastjson2/u$a;

    .line 4412
    :cond_0
    instance-of v0, p1, Lqn;

    if-eqz v0, :cond_1

    .line 4413
    check-cast p1, Lqn;

    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->v:Lqn;

    :cond_1
    return-void
.end method

.method public varargs a([Lcom/alibaba/fastjson2/u$d;)V
    .locals 5

    const/4 v0, 0x0

    .line 4388
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4389
    iget-wide v1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 4162
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/u$c;->g:Z

    return v0
.end method

.method public a(Lcom/alibaba/fastjson2/u$d;)Z
    .locals 4

    .line 4446
    iget-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lzx;
    .locals 1

    .line 4195
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->w:Lzx;

    return-object v0
.end method

.method public b(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List;",
            ">;)V"
        }
    .end annotation

    .line 4251
    iput-object p1, p0, Lcom/alibaba/fastjson2/u$c;->t:Ljava/util/function/Supplier;

    return-void
.end method

.method public c()Lcom/alibaba/fastjson2/u$a;
    .locals 1

    .line 4215
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->u:Lcom/alibaba/fastjson2/u$a;

    return-object v0
.end method

.method public d()Lqn;
    .locals 1

    .line 4231
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->v:Lqn;

    return-object v0
.end method

.method public e()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 4239
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public f()Ljava/time/format/DateTimeFormatter;
    .locals 2

    .line 4255
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->n:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/u$c;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/u$c;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/u$c;->g:Z

    if-nez v1, :cond_1

    .line 4256
    iget-object v1, p0, Lcom/alibaba/fastjson2/u$c;->q:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 4257
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    .line 4258
    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/u$c;->n:Ljava/time/format/DateTimeFormatter;

    .line 4260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->n:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 4268
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/time/ZoneId;
    .locals 1

    .line 4337
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    .line 4338
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    .line 4340
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 4344
    iget-wide v0, p0, Lcom/alibaba/fastjson2/u$c;->p:J

    return-wide v0
.end method

.method public j()Ljava/util/Locale;
    .locals 1

    .line 4372
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->q:Ljava/util/Locale;

    return-object v0
.end method

.method public k()Ljava/util/TimeZone;
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/alibaba/fastjson2/u$c;->r:Ljava/util/TimeZone;

    return-object v0
.end method
