.class public final Lwh;
.super Lzw;
.source "ObjectArrayReader.java"


# static fields
.field public static final a:Lwh;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lwh;

    invoke-direct {v0}, Lwh;-><init>()V

    sput-object v0, Lwh;->a:Lwh;

    const-string v0, "[O"

    .line 16
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lwh;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v0

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_0

    .line 104
    const-class v3, [Ljava/lang/Object;

    sget-wide v4, Lwh;->b:J

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v6

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    .line 106
    invoke-interface/range {v6 .. v11}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    move-object/from16 v0, p0

    .line 110
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    return-object v4

    .line 114
    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v6

    const/16 v7, 0x49

    if-lt v6, v7, :cond_3

    const/16 v7, 0x7d

    if-gt v6, v7, :cond_3

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    if-ne v6, v1, :cond_5

    .line 123
    const-class v8, Ljava/lang/Object;

    const-wide/16 v9, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v15, p4

    .line 125
    invoke-interface/range {v11 .. v16}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_5
    const/16 v7, -0x51

    if-ne v6, v7, :cond_6

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    move-object v6, v4

    goto :goto_1

    :cond_6
    const/16 v7, -0x4f

    if-ne v6, v7, :cond_7

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 134
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    const/16 v7, -0x50

    if-ne v6, v7, :cond_8

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 137
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_8
    const/16 v7, -0x42

    if-ne v6, v7, :cond_9

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_1

    .line 141
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v6

    .line 143
    :goto_1
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    return-object v3
.end method

.method public a(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4

    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 27
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lwh;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 13
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x10

    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p5

    if-nez p5, :cond_9

    add-int/lit8 p5, p4, 0x1

    .line 43
    array-length v0, p2

    sub-int v0, p5, v0

    if-lez v0, :cond_2

    .line 44
    array-length v0, p2

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    sub-int v1, v0, p5

    if-gez v1, :cond_1

    move v0, p5

    .line 50
    :cond_1
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x66

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    move-object v0, p3

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_7
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object v0

    goto :goto_1

    .line 57
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_1
    aput-object v0, p2, p4

    move p4, p5

    goto :goto_0

    .line 93
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 95
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :cond_a
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

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
