.class abstract Ladh;
.super Labq;
.source "FieldWriterInt64.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final A:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 25
    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 26
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    move-object v0, p0

    iput-boolean v1, v0, Ladh;->A:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson2/ab;J)V
    .locals 6

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v0

    iget-wide v2, p0, Ladh;->d:J

    or-long/2addr v0, v2

    .line 31
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Ladh;->a(Lcom/alibaba/fastjson2/ab;)V

    if-nez v0, :cond_2

    .line 34
    iget-boolean v0, p0, Ladh;->A:Z

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Labo;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 37
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    :goto_2
    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p2}, Ladh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0, p2}, Ladh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 56
    iget-wide v2, p0, Ladh;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 57
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v4, v6

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Ladh;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return v1

    .line 65
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Ladh;->a(Lcom/alibaba/fastjson2/ab;J)V

    return v1

    :catch_0
    move-exception p2

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 52
    :cond_2
    throw p2
.end method
