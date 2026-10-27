.class public abstract Lwz;
.super Ljava/lang/Object;
.source "ObjectReaderBean.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final Y:Ljava/lang/Class;

.field protected final Z:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final aa:Ljava/util/function/Function;

.field protected final ab:J

.field protected final ac:Ljava/lang/String;

.field protected final ad:J

.field protected ae:Lsu;

.field protected af:Z

.field protected final ag:Z

.field protected final ah:Laai;

.field protected ai:Lcom/alibaba/fastjson2/u$a;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/lang/String;JLaai;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "J",
            "Laai;",
            "Ljava/util/function/Function;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 47
    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 51
    :cond_0
    iput-object p1, p0, Lwz;->Y:Ljava/lang/Class;

    .line 52
    iput-object p2, p0, Lwz;->Z:Ljava/util/function/Supplier;

    .line 53
    iput-object p7, p0, Lwz;->aa:Ljava/util/function/Function;

    .line 54
    iput-wide p4, p0, Lwz;->ab:J

    .line 55
    iput-object p3, p0, Lwz;->ac:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 56
    invoke-static {p3}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    :goto_0
    iput-wide p2, p0, Lwz;->ad:J

    .line 58
    iput-object p6, p0, Lwz;->ah:Laai;

    if-eqz p1, :cond_2

    .line 59
    const-class p2, Ljava/io/Serializable;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lwz;->ag:Z

    return-void
.end method

.method private b(Lcom/alibaba/fastjson2/u;)Lcom/alibaba/fastjson2/c;
    .locals 2

    .line 228
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "auotype not support"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Lcom/alibaba/fastjson2/c;
    .locals 3

    .line 224
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwz;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwz;->Y:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u$a;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lwz;->ai:Lcom/alibaba/fastjson2/u$a;

    return-void
.end method

.method protected a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 6

    .line 96
    iget-object v0, p0, Lwz;->ae:Lsu;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2}, Lsu;->c(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    iget-wide v0, p0, Lwz;->ab:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    invoke-virtual {p0, v0, v1}, Lwz;->c(J)Lsu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v1, v0, Lsu;->c:Ljava/lang/Class;

    .line 109
    const-class v4, Ljava/lang/Boolean;

    if-eq v1, v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_2

    .line 110
    :cond_1
    invoke-virtual {v0, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->d()Lqn;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Lqn;->a(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 121
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 122
    invoke-interface {v0, p2, v1, p1}, Lqn;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_3
    iget-wide v0, p0, Lwz;->ab:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v0

    sget-object p2, Lcom/alibaba/fastjson2/u$d;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v4

    cmp-long p2, v0, v2

    if-nez p2, :cond_4

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    return-void

    .line 127
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;J)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v0

    .line 247
    invoke-virtual {p0, v0, v1}, Lwz;->b(J)Lsu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lwz;->getFeatures()J

    move-result-wide v1

    or-long/2addr v1, p3

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v0

    .line 250
    invoke-virtual {p0, v0, v1}, Lwz;->c(J)Lsu;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p0, p1, p2}, Lwz;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 263
    iget-object p1, p0, Lwz;->ah:Laai;

    if-eqz p1, :cond_4

    .line 264
    invoke-virtual {p1, p2}, Laai;->b(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 242
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 3

    .line 133
    iget-object v0, p0, Lwz;->ae:Lsu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "is"

    .line 134
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 137
    invoke-virtual {p0, v0, v1}, Lwz;->c(J)Lsu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v1, v0, Lsu;->c:Ljava/lang/Class;

    .line 140
    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 141
    :cond_2
    invoke-virtual {v0, p1, p3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/u$d;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long p3, p4, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_4

    return-void

    .line 148
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Property "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/alibaba/fastjson2/u;J)Lwk;
    .locals 1

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lwz;->c(Lcom/alibaba/fastjson2/u;J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final c(Lcom/alibaba/fastjson2/u;J)Lwk;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    .line 169
    iget-object v9, v0, Lwz;->Y:Ljava/lang/Class;

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v10

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v12

    .line 172
    iget-wide v1, v0, Lwz;->ab:J

    or-long/2addr v1, v7

    move-object/from16 v13, p1

    invoke-virtual {v13, v1, v2}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v14

    .line 173
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/u$c;->c()Lcom/alibaba/fastjson2/u$a;

    move-result-object v5

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    if-eqz v5, :cond_2

    move-object v1, v5

    move-wide v2, v10

    move-object v4, v9

    move-object v10, v5

    move-wide/from16 v5, p2

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/u$a;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-interface {v10, v1, v9, v7, v8}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v1

    .line 182
    invoke-virtual {v9, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v17

    if-eqz v1, :cond_0

    move-object v1, v9

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct/range {p0 .. p0}, Lwz;->f()Lcom/alibaba/fastjson2/c;

    move-result-object v1

    throw v1

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    move-wide v2, v10

    move-object v4, v9

    move-wide/from16 v5, p2

    .line 193
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(JLjava/lang/Class;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 199
    invoke-interface {v1}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v2

    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    .line 202
    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 203
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v14

    cmp-long v1, v1, v17

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct/range {p0 .. p0}, Lwz;->f()Lcom/alibaba/fastjson2/c;

    move-result-object v1

    throw v1

    .line 209
    :cond_4
    iget-wide v2, v0, Lwz;->ad:J

    cmp-long v2, v10, v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v14

    cmp-long v2, v2, v17

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v1, v16

    :cond_6
    :goto_1
    if-eq v1, v0, :cond_8

    if-eqz v1, :cond_7

    .line 216
    invoke-interface {v1}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lwz;->Y:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v16, v1

    :cond_8
    :goto_2
    return-object v16

    .line 196
    :cond_9
    invoke-direct/range {p0 .. p1}, Lwz;->b(Lcom/alibaba/fastjson2/u;)Lcom/alibaba/fastjson2/c;

    move-result-object v1

    throw v1
.end method

.method protected d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expect {, but [, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwz;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parent fieldName "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 79
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide p4

    .line 80
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-eqz p4, :cond_3

    if-nez p2, :cond_1

    .line 81
    iget-object p2, p0, Lwz;->Y:Ljava/lang/Class;

    .line 82
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    const/4 p2, 0x0

    .line 88
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, p3}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lwz;->Y:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    .line 270
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p5}, Lwz;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v2

    .line 279
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lwz;->getFeatures()J

    move-result-wide v3

    or-long v3, v3, p4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v4

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual/range {p0 .. p5}, Lwz;->c(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 285
    invoke-virtual/range {v0 .. v5}, Lwz;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v0

    if-nez v0, :cond_7

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    const/16 v3, 0x74

    if-eq v0, v3, :cond_6

    const/16 v3, 0x66

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x22

    if-eq v0, v3, :cond_7

    const/16 v3, 0x27

    if-eq v0, v3, :cond_7

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_5

    goto :goto_1

    .line 299
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    return-object v2

    :cond_7
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v2

    .line 304
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v0, :cond_8

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long v2, v2, p4

    invoke-virtual {v6, v2, v3}, Lwz;->a(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 307
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_8

    .line 308
    invoke-virtual {v6, v0}, Lwz;->b(Ljava/lang/Object;)V

    .line 392
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 394
    invoke-virtual/range {p0 .. p0}, Lwz;->e()Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 396
    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    :cond_9
    iget-object v1, v6, Lwz;->ah:Laai;

    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {v1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_a
    return-object v0

    .line 314
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v9

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v10

    .line 316
    iget-object v12, v6, Lwz;->ai:Lcom/alibaba/fastjson2/u$a;

    if-nez v12, :cond_c

    .line 318
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/u$c;->c()Lcom/alibaba/fastjson2/u$a;

    move-result-object v12

    :cond_c
    if-nez v3, :cond_17

    .line 322
    invoke-virtual/range {p0 .. p0}, Lwz;->d()J

    move-result-wide v13

    cmp-long v13, v10, v13

    if-nez v13, :cond_17

    .line 323
    invoke-virtual/range {p0 .. p0}, Lwz;->getFeatures()J

    move-result-wide v13

    or-long v13, p4, v13

    invoke-virtual {v9}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v15

    or-long v14, v13, v15

    sget-object v13, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    move/from16 p2, v3

    iget-wide v2, v13, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v14

    cmp-long v2, v2, v7

    if-nez v2, :cond_d

    if-eqz v12, :cond_18

    .line 327
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    if-eqz v12, :cond_f

    .line 329
    iget-object v13, v6, Lwz;->Y:Ljava/lang/Class;

    move-object/from16 v16, v13

    move-object v13, v12

    move-wide/from16 v19, v14

    move-wide v14, v2

    move-wide/from16 v17, v19

    invoke-interface/range {v13 .. v18}, Lcom/alibaba/fastjson2/u$a;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v13

    if-nez v13, :cond_e

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v6, Lwz;->Y:Ljava/lang/Class;

    move-wide/from16 v7, v19

    invoke-interface {v12, v13, v14, v7, v8}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 333
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v12

    goto :goto_4

    :cond_e
    move-wide/from16 v7, v19

    goto :goto_3

    :cond_f
    move-wide v7, v14

    :cond_10
    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-nez v12, :cond_11

    .line 339
    invoke-virtual {v6, v9, v2, v3}, Lwz;->a(Lcom/alibaba/fastjson2/u$c;J)Lwk;

    move-result-object v12

    :cond_11
    if-nez v12, :cond_13

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    .line 345
    iget-object v3, v6, Lwz;->Y:Ljava/lang/Class;

    invoke-virtual {v9, v2, v3, v7, v8}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object v12, v3

    goto :goto_5

    .line 350
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable ObjectReader found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v2, 0x0

    :goto_5
    if-ne v12, v6, :cond_14

    goto :goto_6

    .line 358
    :cond_14
    invoke-interface {v12, v10, v11}, Lwk;->b(J)Lsu;

    move-result-object v7

    if-eqz v7, :cond_15

    if-nez v2, :cond_15

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    :cond_15
    move-object v8, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 364
    invoke-virtual/range {p0 .. p0}, Lwz;->getFeatures()J

    move-result-wide v4

    or-long v4, p4, v4

    move-object v0, v12

    move-object/from16 v1, p1

    .line 363
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v7, :cond_16

    .line 368
    invoke-virtual {v7, v0, v8}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-object v0

    :cond_17
    move/from16 p2, v3

    .line 374
    :cond_18
    invoke-virtual {v6, v10, v11}, Lwz;->b(J)Lsu;

    move-result-object v2

    if-nez v2, :cond_19

    .line 375
    invoke-virtual/range {p0 .. p0}, Lwz;->getFeatures()J

    move-result-wide v7

    or-long v7, p4, v7

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v2

    .line 377
    invoke-virtual {v6, v2, v3}, Lwz;->c(J)Lsu;

    move-result-object v2

    :cond_19
    if-nez v0, :cond_1a

    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v7

    or-long v7, v7, p4

    invoke-virtual {v6, v7, v8}, Lwz;->a(J)Ljava/lang/Object;

    move-result-object v0

    :cond_1a
    if-nez v2, :cond_1b

    .line 385
    invoke-virtual {v6, v1, v0}, Lwz;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_6

    .line 389
    :cond_1b
    invoke-virtual {v2, v1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v3, p2, 0x1

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_2
.end method
