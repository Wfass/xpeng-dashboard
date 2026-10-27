.class final Lach;
.super Lacg;
.source "FieldWriterDateField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lacg<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 18
    const-class v7, Ljava/util/Date;

    const-class v8, Ljava/util/Date;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lacg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p2}, Lach;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    if-nez p2, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lach;->a(Lcom/alibaba/fastjson2/ab;ZJ)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p2}, Lach;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 37
    iget-wide v1, p0, Lach;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 38
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lach;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 47
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lach;->b(Lcom/alibaba/fastjson2/ab;J)V

    return v0
.end method
