.class final Lafa;
.super Lahp;
.source "ObjectWriterArray.java"


# static fields
.field static final a:Lafa;


# instance fields
.field final b:[B

.field final c:J

.field final d:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lafa;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lafa;-><init>(Ljava/lang/reflect/Type;)V

    sput-object v0, Lafa;->a:Lafa;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lahp;-><init>()V

    .line 20
    iput-object p1, p0, Lafa;->d:Ljava/lang/reflect/Type;

    .line 22
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const-string p1, "[O"

    .line 23
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lafa;->b:[B

    const-string p1, "[0"

    .line 24
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lafa;->c:J

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lafa;->b:[B

    .line 28
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lafa;->c:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    if-nez p2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result p3

    .line 103
    move-object p5, p2

    check-cast p5, [Ljava/lang/Object;

    .line 108
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    iget-object p2, p0, Lafa;->b:[B

    iget-wide v0, p0, Lafa;->c:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 112
    :cond_1
    array-length p2, p5

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p2, 0x0

    const/4 p4, 0x0

    move p6, p3

    move-object p3, p4

    .line 113
    :goto_0
    array-length v0, p5

    if-ge p2, v0, :cond_7

    .line 114
    aget-object v0, p5, p2

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p4, :cond_3

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result p6

    .line 126
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p3

    if-eqz p6, :cond_4

    .line 131
    invoke-static {v1}, Lahq;->d(Ljava/lang/Class;)Z

    move-result p4

    xor-int/lit8 p6, p4, 0x1

    :cond_4
    move-object p4, v1

    :goto_1
    if-eqz p6, :cond_5

    .line 136
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lafa;->d:Ljava/lang/reflect/Type;

    const-wide/16 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, v0

    invoke-interface/range {v1 .. v7}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz p6, :cond_6

    .line 147
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 15

    move-object/from16 v7, p1

    .line 34
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual/range {p0 .. p6}, Lafa;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 44
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v0

    .line 46
    move-object/from16 v8, p2

    check-cast v8, [Ljava/lang/Object;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v1

    move v1, v0

    move-object v0, v2

    .line 51
    :goto_0
    array-length v3, v8

    if-ge v9, v3, :cond_8

    if-eqz v9, :cond_2

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 56
    :cond_2
    aget-object v10, v8, v9

    if-nez v10, :cond_3

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    move-object v14, p0

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v2, :cond_4

    move-object v12, v0

    move v11, v1

    move-object v13, v2

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v1

    .line 67
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    if-eqz v1, :cond_5

    .line 72
    invoke-static {v3}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_5
    move-object v12, v0

    move v11, v1

    move-object v13, v3

    :goto_1
    if-eqz v11, :cond_6

    .line 77
    invoke-virtual {v7, v9, v10}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 79
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    move-object v14, p0

    goto :goto_2

    .line 85
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v14, p0

    iget-object v4, v14, Lafa;->d:Ljava/lang/reflect/Type;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v2, v10

    move-wide/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v11, :cond_7

    .line 88
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move v1, v11

    move-object v0, v12

    move-object v2, v13

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    move-object v14, p0

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method
