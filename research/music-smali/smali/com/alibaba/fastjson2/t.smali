.class Lcom/alibaba/fastjson2/t;
.super Lcom/alibaba/fastjson2/g;
.source "JSONPathTwoSegment.java"


# instance fields
.field final f:Lcom/alibaba/fastjson2/n;

.field final g:Lcom/alibaba/fastjson2/n;

.field final h:Z

.field final i:Z


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;[Lcom/alibaba/fastjson2/g$b;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p4}, Lcom/alibaba/fastjson2/g;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    .line 20
    iput-object p3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    .line 21
    instance-of p1, p2, Lcom/alibaba/fastjson2/o;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    instance-of v1, p2, Lcom/alibaba/fastjson2/p;

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, p3, Lcom/alibaba/fastjson2/o;

    if-nez v1, :cond_2

    instance-of v1, p3, Lcom/alibaba/fastjson2/p;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p4

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/t;->h:Z

    .line 25
    instance-of v1, p2, Lcom/alibaba/fastjson2/n$d;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 27
    move-object p1, p2

    check-cast p1, Lcom/alibaba/fastjson2/o;

    iget p1, p1, Lcom/alibaba/fastjson2/o;->e:I

    if-gez p1, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    instance-of p1, p3, Lcom/alibaba/fastjson2/n$d;

    if-eqz p1, :cond_5

    goto :goto_2

    .line 31
    :cond_5
    instance-of p1, p3, Lcom/alibaba/fastjson2/o;

    if-eqz p1, :cond_6

    move-object p1, p3

    check-cast p1, Lcom/alibaba/fastjson2/o;

    iget p1, p1, Lcom/alibaba/fastjson2/o;->e:I

    if-gez p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, p4

    .line 34
    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/t;->i:Z

    .line 36
    instance-of p1, p2, Lcom/alibaba/fastjson2/n$b;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/alibaba/fastjson2/n$b;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/n$b;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    instance-of p1, p3, Lcom/alibaba/fastjson2/j$f;

    if-eqz p1, :cond_7

    .line 38
    check-cast p3, Lcom/alibaba/fastjson2/j$f;

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/j$f;->c()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/t;->i:Z

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/t;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 221
    :cond_1
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    iget-object v4, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V

    .line 224
    new-instance v8, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 226
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/g$a;->h:Z

    if-eqz v0, :cond_2

    .line 227
    iget-object p1, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1, v8}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V

    .line 232
    :goto_0
    iget-object p1, v8, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 234
    iget-wide v0, p0, Lcom/alibaba/fastjson2/t;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 236
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_1

    .line 237
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_4

    .line 238
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    .line 242
    :cond_4
    :goto_1
    instance-of v0, p1, Lcom/alibaba/fastjson2/g$e;

    if-eqz v0, :cond_5

    .line 243
    check-cast p1, Lcom/alibaba/fastjson2/g$e;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    :cond_5
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 107
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    iget-object v4, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 108
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 110
    iget-object v0, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    instance-of v1, v0, Lcom/alibaba/fastjson2/o;

    if-eqz v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/u$c;->t:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/u$c;->t:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, v0, Lcom/alibaba/fastjson2/p;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->b:Lcom/alibaba/fastjson2/u$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/u$c;->s:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    .line 128
    :goto_0
    iput-object v0, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 129
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    instance-of v2, v1, Lcom/alibaba/fastjson2/p;

    if-eqz v2, :cond_3

    .line 130
    check-cast p1, Ljava/util/Map;

    check-cast v1, Lcom/alibaba/fastjson2/p;

    iget-object v1, v1, Lcom/alibaba/fastjson2/p;->c:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    instance-of v2, v1, Lcom/alibaba/fastjson2/o;

    if-eqz v2, :cond_4

    .line 132
    check-cast p1, Ljava/util/List;

    check-cast v1, Lcom/alibaba/fastjson2/o;

    iget v1, v1, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/t;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    instance-of v3, v2, Lcom/alibaba/fastjson2/p;

    if-eqz v3, :cond_6

    .line 138
    check-cast v2, Lcom/alibaba/fastjson2/p;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/p;->d:J

    invoke-interface {v0, v2, v3}, Lwk;->b(J)Lsu;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 140
    invoke-virtual {v0, v1}, Lsu;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Lwk;->b()Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-virtual {v0, p1, v1}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iput-object v1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void

    .line 149
    :cond_6
    :goto_1
    new-instance p1, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/t;->h:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 8

    .line 67
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    iget-object v4, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 68
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 70
    iget-object p1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/n;->c(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 85
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    iget-object v4, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 86
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 88
    iget-object p1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 94
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 95
    iget-wide v0, p0, Lcom/alibaba/fastjson2/t;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 97
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_2

    .line 99
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 8

    .line 54
    new-instance v7, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    iget-object v4, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 55
    iput-object p1, v7, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/alibaba/fastjson2/t;->f:Lcom/alibaba/fastjson2/n;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 57
    iget-object p1, v7, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/g$a;

    iget-object v3, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson2/t;->g:Lcom/alibaba/fastjson2/n;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/n;->b(Lcom/alibaba/fastjson2/g$a;)Z

    move-result p1

    return p1
.end method
