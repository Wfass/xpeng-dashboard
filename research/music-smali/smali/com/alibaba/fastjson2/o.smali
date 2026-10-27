.class final Lcom/alibaba/fastjson2/o;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegmentIndex.java"


# static fields
.field static final a:Lcom/alibaba/fastjson2/o;

.field static final b:Lcom/alibaba/fastjson2/o;

.field static final c:Lcom/alibaba/fastjson2/o;

.field static final d:Lcom/alibaba/fastjson2/o;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/o;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson2/o;->a:Lcom/alibaba/fastjson2/o;

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/o;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson2/o;->b:Lcom/alibaba/fastjson2/o;

    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/o;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson2/o;->c:Lcom/alibaba/fastjson2/o;

    .line 20
    new-instance v0, Lcom/alibaba/fastjson2/o;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/o;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson2/o;->d:Lcom/alibaba/fastjson2/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 25
    iput p1, p0, Lcom/alibaba/fastjson2/o;->e:I

    return-void
.end method

.method static a(I)Lcom/alibaba/fastjson2/o;
    .locals 1

    if-nez p0, :cond_0

    .line 30
    sget-object p0, Lcom/alibaba/fastjson2/o;->a:Lcom/alibaba/fastjson2/o;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 33
    sget-object p0, Lcom/alibaba/fastjson2/o;->b:Lcom/alibaba/fastjson2/o;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 36
    sget-object p0, Lcom/alibaba/fastjson2/o;->c:Lcom/alibaba/fastjson2/o;

    return-object p0

    :cond_2
    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    .line 39
    sget-object p0, Lcom/alibaba/fastjson2/o;->d:Lcom/alibaba/fastjson2/o;

    return-object p0

    .line 41
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/o;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/o;-><init>(I)V

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/Object;
    .locals 7

    .line 161
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_6

    .line 167
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    .line 169
    instance-of v4, p1, Ljava/util/LinkedHashMap;

    if-nez v4, :cond_3

    instance-of v4, p1, Ljava/util/SortedMap;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-gt v3, v1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 190
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 191
    iget v5, p0, Lcom/alibaba/fastjson2/o;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_3
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-gt v3, p1, :cond_6

    if-ge v3, v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 173
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 174
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 175
    iget v5, p0, Lcom/alibaba/fastjson2/o;->e:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v0, p1

    goto :goto_2

    .line 180
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ne v3, v4, :cond_5

    move-object v0, p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 11

    .line 46
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 51
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 55
    :cond_1
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 56
    check-cast v0, Ljava/util/List;

    .line 57
    iget v2, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v2, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 59
    iget v2, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/alibaba/fastjson2/o;->e:I

    add-int/2addr v2, v3

    if-ltz v2, :cond_3

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 69
    :cond_3
    :goto_1
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 73
    :cond_4
    instance-of v2, v0, Ljava/util/SortedSet;

    if-nez v2, :cond_11

    instance-of v2, v0, Ljava/util/LinkedHashSet;

    if-nez v2, :cond_11

    iget v2, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-nez v2, :cond_5

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 74
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_6

    .line 89
    :cond_5
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 90
    check-cast v0, [Ljava/lang/Object;

    .line 91
    iget v2, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v2, :cond_6

    .line 92
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 93
    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_2

    .line 96
    :cond_6
    array-length v3, v0

    add-int/2addr v3, v2

    if-ltz v3, :cond_7

    .line 98
    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 99
    aget-object v0, v0, v3

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 103
    :cond_7
    :goto_2
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 107
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 109
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 110
    iget v3, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v3, :cond_9

    if-ge v3, v2, :cond_a

    .line 112
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    add-int/2addr v3, v2

    if-ltz v3, :cond_a

    if-ge v3, v2, :cond_a

    .line 118
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 122
    :cond_a
    :goto_3
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 126
    :cond_b
    instance-of v3, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v3, :cond_e

    .line 127
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    .line 128
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 130
    iput-object v3, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 131
    new-instance v3, Lcom/alibaba/fastjson2/g$a;

    iget-object v5, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-object v7, p1, Lcom/alibaba/fastjson2/g$a;->c:Lcom/alibaba/fastjson2/n;

    iget-object v8, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    iget-wide v9, p1, Lcom/alibaba/fastjson2/g$a;->e:J

    move-object v4, v3

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/g$a;-><init>(Lcom/alibaba/fastjson2/g;Lcom/alibaba/fastjson2/g$a;Lcom/alibaba/fastjson2/n;Lcom/alibaba/fastjson2/n;J)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/o;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 133
    iget-object v3, v3, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 135
    :cond_c
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v0, :cond_d

    .line 136
    new-instance v0, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_5

    .line 138
    :cond_d
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 140
    :goto_5
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 144
    :cond_e
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 145
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/o;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 146
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 151
    :cond_f
    iget v3, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-nez v3, :cond_10

    .line 152
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 157
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonpath not support operate : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", objectClass"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    :goto_6
    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x0

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 80
    iget v4, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ne v2, v4, :cond_12

    .line 81
    iput-object v3, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_8

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 85
    :cond_13
    :goto_8
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 8

    .line 438
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

    .line 442
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/o;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void

    .line 446
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 447
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_6

    .line 449
    iget v4, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ne v4, v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_3

    .line 451
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    :cond_4
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 461
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 462
    iput-boolean v2, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    :cond_6
    :goto_2
    return-void

    .line 468
    :cond_7
    iget-char v0, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_8

    .line 469
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object p1

    .line 470
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/o;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 471
    iput-boolean v2, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 475
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    move v0, v1

    .line 477
    :goto_3
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_17

    .line 478
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_9

    .line 479
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    if-nez v0, :cond_17

    .line 481
    iput-boolean v2, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    goto/16 :goto_8

    .line 486
    :cond_9
    iget v4, p0, Lcom/alibaba/fastjson2/o;->e:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    if-ne v4, v0, :cond_a

    goto :goto_4

    :cond_a
    move v4, v1

    goto :goto_5

    :cond_b
    :goto_4
    move v4, v2

    :goto_5
    if-nez v4, :cond_c

    .line 489
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    .line 490
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_16

    .line 491
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_7

    .line 497
    :cond_c
    iget-char v4, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v7, 0x22

    if-eq v4, v7, :cond_14

    const/16 v7, 0x27

    if-eq v4, v7, :cond_14

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_13

    const/16 v7, 0x5b

    if-eq v4, v7, :cond_11

    const/16 v7, 0x66

    if-eq v4, v7, :cond_10

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_f

    const/16 v7, 0x74

    if-eq v4, v7, :cond_10

    if-eq v4, v3, :cond_d

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_13

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_13

    packed-switch v4, :pswitch_data_0

    .line 539
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 521
    :cond_d
    iget-object v4, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v4, :cond_e

    iget-object v4, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v4, v4, Lcom/alibaba/fastjson2/n$d;

    if-nez v4, :cond_e

    goto :goto_8

    .line 524
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v4

    goto :goto_6

    .line 535
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v4, 0x0

    goto :goto_6

    .line 532
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    .line 515
    :cond_11
    iget-object v4, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v4, :cond_12

    iget-object v4, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    instance-of v4, v4, Lcom/alibaba/fastjson2/n$d;

    if-nez v4, :cond_12

    goto :goto_8

    .line 518
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v4

    goto :goto_6

    .line 511
    :cond_13
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 512
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v4

    goto :goto_6

    .line 528
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    .line 542
    :goto_6
    iget v7, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ne v7, v6, :cond_15

    .line 543
    iget-char v6, p1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v6, v5, :cond_16

    .line 544
    iput-object v4, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_7

    .line 547
    :cond_15
    iput-object v4, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :cond_16
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_17
    :goto_8
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
    .locals 2

    .line 204
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 205
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 208
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 209
    check-cast p1, Ljava/util/List;

    .line 210
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v0, :cond_3

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 217
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 219
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 224
    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void

    .line 230
    :cond_5
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 231
    check-cast p1, [Ljava/lang/Object;

    .line 232
    array-length v0, p1

    .line 233
    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v1, :cond_6

    if-ge v1, v0, :cond_7

    .line 235
    aput-object p2, p1, v1

    goto :goto_3

    :cond_6
    add-int/2addr v1, v0

    if-ltz v1, :cond_7

    if-ge v1, v0, :cond_7

    .line 241
    aput-object p2, p1, v1

    :cond_7
    :goto_3
    return-void

    :cond_8
    if-eqz p1, :cond_b

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 250
    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-ltz v1, :cond_9

    if-ge v1, v0, :cond_a

    .line 252
    invoke-static {p1, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    add-int/2addr v1, v0

    if-ltz v1, :cond_a

    if-ge v1, v0, :cond_a

    .line 258
    invoke-static {p1, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_a
    :goto_4
    return-void

    .line 265
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 3

    .line 336
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 337
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 340
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 341
    check-cast p1, Ljava/util/List;

    .line 342
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 344
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v1

    .line 348
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/fastjson2/o;->e:I

    add-int/2addr v0, v2

    if-ltz v0, :cond_2

    .line 350
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 357
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 554
    iget v0, p0, Lcom/alibaba/fastjson2/o;->e:I

    if-gez v0, :cond_0

    neg-int v0, v0

    invoke-static {v0}, Labe;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Labe;->a(I)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    .line 555
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x5b

    .line 556
    aput-byte v2, v0, v1

    .line 557
    iget v1, p0, Lcom/alibaba/fastjson2/o;->e:I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2, v0}, Labe;->a(II[B)V

    .line 558
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    .line 561
    sget-object v1, Labf;->A:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1

    .line 562
    sget-object v1, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v2, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v1, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 564
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method
