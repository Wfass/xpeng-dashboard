.class Lcb;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static a:I


# instance fields
.field public b:I

.field public c:Z

.field d:Lce;

.field e:Lce;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lce;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:I


# direct methods
.method public constructor <init>(Lce;I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcb;->b:I

    .line 34
    iput-boolean v0, p0, Lcb;->c:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcb;->d:Lce;

    .line 37
    iput-object v1, p0, Lcb;->e:Lce;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcb;->f:Ljava/util/ArrayList;

    .line 40
    iput v0, p0, Lcb;->g:I

    .line 44
    sget v0, Lcb;->a:I

    iput v0, p0, Lcb;->g:I

    add-int/lit8 v0, v0, 0x1

    .line 45
    sput v0, Lcb;->a:I

    .line 46
    iput-object p1, p0, Lcb;->d:Lce;

    .line 47
    iput-object p1, p0, Lcb;->e:Lce;

    .line 48
    iput p2, p0, Lcb;->h:I

    return-void
.end method

.method private a(Lbu;J)J
    .locals 8

    .line 57
    iget-object v0, p1, Lbu;->d:Lce;

    .line 58
    instance-of v1, v0, Lbz;

    if-eqz v1, :cond_0

    return-wide p2

    .line 65
    :cond_0
    iget-object v1, p1, Lbu;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 67
    iget-object v5, p1, Lbu;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbs;

    .line 68
    instance-of v6, v5, Lbu;

    if-eqz v6, :cond_2

    .line 69
    check-cast v5, Lbu;

    .line 70
    iget-object v6, v5, Lbu;->d:Lce;

    if-ne v6, v0, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    iget v6, v5, Lbu;->f:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-direct {p0, v5, v6, v7}, Lcb;->a(Lbu;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, v0, Lce;->j:Lbu;

    if-ne p1, v1, :cond_4

    .line 80
    invoke-virtual {v0}, Lce;->b()J

    move-result-wide v1

    .line 81
    iget-object p1, v0, Lce;->k:Lbu;

    add-long/2addr p2, v1

    invoke-direct {p0, p1, p2, p3}, Lcb;->a(Lbu;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    iget-object p1, v0, Lce;->k:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_4
    return-wide v3
.end method

.method private b(Lbu;J)J
    .locals 8

    .line 89
    iget-object v0, p1, Lbu;->d:Lce;

    .line 90
    instance-of v1, v0, Lbz;

    if-eqz v1, :cond_0

    return-wide p2

    .line 97
    :cond_0
    iget-object v1, p1, Lbu;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 99
    iget-object v5, p1, Lbu;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbs;

    .line 100
    instance-of v6, v5, Lbu;

    if-eqz v6, :cond_2

    .line 101
    check-cast v5, Lbu;

    .line 102
    iget-object v6, v5, Lbu;->d:Lce;

    if-ne v6, v0, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    iget v6, v5, Lbu;->f:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    invoke-direct {p0, v5, v6, v7}, Lcb;->b(Lbu;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_3
    iget-object v1, v0, Lce;->k:Lbu;

    if-ne p1, v1, :cond_4

    .line 112
    invoke-virtual {v0}, Lce;->b()J

    move-result-wide v1

    .line 113
    iget-object p1, v0, Lce;->j:Lbu;

    sub-long/2addr p2, v1

    invoke-direct {p0, p1, p2, p3}, Lcb;->b(Lbu;J)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    iget-object p1, v0, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v3, p1

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_4
    return-wide v3
.end method


# virtual methods
.method public a(Lbg;I)J
    .locals 10

    .line 121
    iget-object v0, p0, Lcb;->d:Lce;

    instance-of v1, v0, Lbr;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lbr;

    .line 123
    iget v0, v0, Lbr;->h:I

    if-eq v0, p2, :cond_2

    return-wide v2

    :cond_0
    if-nez p2, :cond_1

    .line 128
    instance-of v0, v0, Lca;

    if-nez v0, :cond_2

    return-wide v2

    .line 132
    :cond_1
    instance-of v0, v0, Lcc;

    if-nez v0, :cond_2

    return-wide v2

    :cond_2
    if-nez p2, :cond_3

    .line 137
    iget-object v0, p1, Lbg;->f:Lca;

    iget-object v0, v0, Lca;->j:Lbu;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lbg;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    :goto_0
    if-nez p2, :cond_4

    .line 138
    iget-object p1, p1, Lbg;->f:Lca;

    iget-object p1, p1, Lca;->k:Lbu;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lbg;->g:Lcc;

    iget-object p1, p1, Lcc;->k:Lbu;

    .line 140
    :goto_1
    iget-object v1, p0, Lcb;->d:Lce;

    iget-object v1, v1, Lce;->j:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcb;->d:Lce;

    iget-object v1, v1, Lce;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 143
    iget-object v1, p0, Lcb;->d:Lce;

    invoke-virtual {v1}, Lce;->b()J

    move-result-wide v4

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 146
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    invoke-direct {p0, p1, v2, v3}, Lcb;->a(Lbu;J)J

    move-result-wide v0

    .line 147
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->k:Lbu;

    invoke-direct {p0, p1, v2, v3}, Lcb;->b(Lbu;J)J

    move-result-wide v6

    sub-long/2addr v0, v4

    .line 151
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->k:Lbu;

    iget p1, p1, Lbu;->f:I

    neg-int p1, p1

    int-to-long v8, p1

    cmp-long p1, v0, v8

    if-ltz p1, :cond_5

    .line 152
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->k:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v8, p1

    add-long/2addr v0, v8

    :cond_5
    neg-long v6, v6

    sub-long/2addr v6, v4

    .line 154
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v8, p1

    sub-long/2addr v6, v8

    .line 155
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v8, p1

    cmp-long p1, v6, v8

    if-ltz p1, :cond_6

    .line 156
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long v8, p1

    sub-long/2addr v6, v8

    .line 158
    :cond_6
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->d:Lbf;

    invoke-virtual {p1, p2}, Lbf;->n(I)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez p2, :cond_7

    long-to-float p2, v6

    div-float/2addr p2, p1

    long-to-float v0, v0

    sub-float v1, v8, p1

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-long v2, p2

    :cond_7
    long-to-float p2, v2

    mul-float v0, p2, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-long v2, v0

    sub-float/2addr v8, p1

    mul-float/2addr p2, v8

    add-float/2addr p2, v1

    float-to-long p1, p2

    add-long/2addr v2, v4

    add-long/2addr v2, p1

    .line 168
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long p1, p1

    add-long/2addr p1, v2

    iget-object v0, p0, Lcb;->d:Lce;

    iget-object v0, v0, Lce;->k:Lbu;

    iget v0, v0, Lbu;->f:I

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    .line 171
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget-object p2, p0, Lcb;->d:Lce;

    iget-object p2, p2, Lce;->j:Lbu;

    iget p2, p2, Lbu;->f:I

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcb;->a(Lbu;J)J

    move-result-wide p1

    .line 172
    iget-object v0, p0, Lcb;->d:Lce;

    iget-object v0, v0, Lce;->j:Lbu;

    iget v0, v0, Lbu;->f:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    .line 173
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    .line 175
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->k:Lbu;

    iget-object p2, p0, Lcb;->d:Lce;

    iget-object p2, p2, Lce;->k:Lbu;

    iget p2, p2, Lbu;->f:I

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcb;->b(Lbu;J)J

    move-result-wide p1

    .line 176
    iget-object v0, p0, Lcb;->d:Lce;

    iget-object v0, v0, Lce;->k:Lbu;

    iget v0, v0, Lbu;->f:I

    neg-int v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v4

    neg-long p1, p1

    .line 177
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_3

    .line 179
    :cond_a
    iget-object p1, p0, Lcb;->d:Lce;

    iget-object p1, p1, Lce;->j:Lbu;

    iget p1, p1, Lbu;->f:I

    int-to-long p1, p1

    iget-object v0, p0, Lcb;->d:Lce;

    invoke-virtual {v0}, Lce;->b()J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lcb;->d:Lce;

    iget-object v0, v0, Lce;->k:Lbu;

    iget v0, v0, Lbu;->f:I

    :goto_2
    int-to-long v0, v0

    sub-long/2addr p1, v0

    :goto_3
    return-wide p1
.end method

.method public a(Lce;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p1, p0, Lcb;->e:Lce;

    return-void
.end method
