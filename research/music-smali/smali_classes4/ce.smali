.class public abstract Lce;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Lbs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce$a;
    }
.end annotation


# instance fields
.field public c:I

.field d:Lbf;

.field e:Lcb;

.field protected f:Lbf$a;

.field g:Lbv;

.field public h:I

.field i:Z

.field public j:Lbu;

.field public k:Lbu;

.field protected l:Lce$a;


# direct methods
.method public constructor <init>(Lbf;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lbv;

    invoke-direct {v0, p0}, Lbv;-><init>(Lce;)V

    iput-object v0, p0, Lce;->g:Lbv;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lce;->h:I

    .line 37
    iput-boolean v0, p0, Lce;->i:Z

    .line 38
    new-instance v0, Lbu;

    invoke-direct {v0, p0}, Lbu;-><init>(Lce;)V

    iput-object v0, p0, Lce;->j:Lbu;

    .line 39
    new-instance v0, Lbu;

    invoke-direct {v0, p0}, Lbu;-><init>(Lce;)V

    iput-object v0, p0, Lce;->k:Lbu;

    .line 41
    sget-object v0, Lce$a;->NONE:Lce$a;

    iput-object v0, p0, Lce;->l:Lce$a;

    .line 44
    iput-object p1, p0, Lce;->d:Lbf;

    return-void
.end method

.method private b(II)V
    .locals 4

    .line 172
    iget v0, p0, Lce;->c:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 p2, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq v0, p2, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 200
    :cond_0
    iget-object v0, p0, Lce;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->f:Lbf$a;

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lce;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget v0, v0, Lca;->c:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lce;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->f:Lbf$a;

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lce;->d:Lbf;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget v0, v0, Lcc;->c:I

    if-ne v0, p2, :cond_1

    goto/16 :goto_4

    :cond_1
    if-nez p1, :cond_2

    .line 206
    iget-object p2, p0, Lce;->d:Lbf;

    iget-object p2, p2, Lbf;->g:Lcc;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lce;->d:Lbf;

    iget-object p2, p2, Lbf;->f:Lca;

    .line 207
    :goto_0
    iget-object v0, p2, Lce;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lce;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v0

    if-ne p1, v1, :cond_3

    .line 211
    iget-object p1, p2, Lce;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_1

    .line 213
    :cond_3
    iget-object p1, p2, Lce;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    float-to-int p1, v0

    .line 215
    :goto_1
    iget-object p2, p0, Lce;->g:Lbv;

    invoke-virtual {p2, p1}, Lbv;->a(I)V

    goto :goto_4

    .line 178
    :cond_4
    iget-object p2, p0, Lce;->d:Lbf;

    invoke-virtual {p2}, Lbf;->A()Lbf;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_5

    .line 180
    iget-object p2, p2, Lbf;->f:Lca;

    goto :goto_2

    :cond_5
    iget-object p2, p2, Lbf;->g:Lcc;

    .line 183
    :goto_2
    iget-object v0, p2, Lce;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_6

    .line 184
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->s:F

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->v:F

    .line 187
    :goto_3
    iget-object p2, p2, Lce;->g:Lbv;

    iget p2, p2, Lbv;->g:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 189
    iget-object v0, p0, Lce;->g:Lbv;

    invoke-virtual {p0, p2, p1}, Lce;->a(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lbv;->a(I)V

    goto :goto_4

    .line 195
    :cond_7
    iget-object v0, p0, Lce;->g:Lbv;

    iget v0, v0, Lbv;->m:I

    invoke-virtual {p0, v0, p1}, Lce;->a(II)I

    move-result p1

    .line 196
    iget-object v0, p0, Lce;->g:Lbv;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lbv;->a(I)V

    goto :goto_4

    .line 174
    :cond_8
    iget-object v0, p0, Lce;->g:Lbv;

    invoke-virtual {p0, p2, p1}, Lce;->a(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lbv;->a(I)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method protected final a(II)I
    .locals 1

    if-nez p2, :cond_1

    .line 236
    iget-object p2, p0, Lce;->d:Lbf;

    iget p2, p2, Lbf;->r:I

    .line 237
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->q:I

    .line 238
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_0

    .line 240
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    if-eq v0, p1, :cond_3

    move p1, v0

    goto :goto_1

    .line 246
    :cond_1
    iget-object p2, p0, Lce;->d:Lbf;

    iget p2, p2, Lbf;->u:I

    .line 247
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->t:I

    .line 248
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez p2, :cond_2

    .line 250
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    if-eq p2, p1, :cond_3

    move p1, p2

    :cond_3
    :goto_1
    return p1
.end method

.method protected final a(Lbe;)Lbu;
    .locals 3

    .line 95
    iget-object v0, p1, Lbe;->c:Lbe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    iget-object v0, p1, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->a:Lbf;

    .line 100
    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->b:Lbe$a;

    .line 101
    sget-object v2, Lce$1;->a:[I

    invoke-virtual {p1}, Lbe$a;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, v0, Lbf;->g:Lcc;

    .line 120
    iget-object v1, p1, Lcc;->k:Lbu;

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, v0, Lbf;->g:Lcc;

    .line 116
    iget-object v1, p1, Lcc;->a:Lbu;

    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, v0, Lbf;->g:Lcc;

    .line 112
    iget-object v1, p1, Lcc;->j:Lbu;

    goto :goto_0

    .line 107
    :cond_4
    iget-object p1, v0, Lbf;->f:Lca;

    .line 108
    iget-object v1, p1, Lca;->k:Lbu;

    goto :goto_0

    .line 103
    :cond_5
    iget-object p1, v0, Lbf;->f:Lca;

    .line 104
    iget-object v1, p1, Lca;->j:Lbu;

    :goto_0
    return-object v1
.end method

.method protected final a(Lbe;I)Lbu;
    .locals 2

    .line 260
    iget-object v0, p1, Lbe;->c:Lbe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 264
    :cond_0
    iget-object v0, p1, Lbe;->c:Lbe;

    iget-object v0, v0, Lbe;->a:Lbf;

    if-nez p2, :cond_1

    .line 265
    iget-object p2, v0, Lbf;->f:Lca;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lbf;->g:Lcc;

    .line 267
    :goto_0
    iget-object p1, p1, Lbe;->c:Lbe;

    iget-object p1, p1, Lbe;->b:Lbe$a;

    .line 268
    sget-object v0, Lce$1;->a:[I

    invoke-virtual {p1}, Lbe$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 275
    :cond_2
    iget-object v1, p2, Lce;->k:Lbu;

    goto :goto_1

    .line 271
    :cond_3
    iget-object v1, p2, Lce;->j:Lbu;

    :goto_1
    return-object v1
.end method

.method public a(Lbs;)V
    .locals 0

    return-void
.end method

.method protected a(Lbs;Lbe;Lbe;I)V
    .locals 4

    .line 128
    invoke-virtual {p0, p2}, Lce;->a(Lbe;)Lbu;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p3}, Lce;->a(Lbe;)Lbu;

    move-result-object v0

    .line 131
    iget-boolean v1, p1, Lbu;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lbu;->j:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget v1, p1, Lbu;->g:I

    invoke-virtual {p2}, Lbe;->j()I

    move-result p2

    add-int/2addr v1, p2

    .line 136
    iget p2, v0, Lbu;->g:I

    invoke-virtual {p3}, Lbe;->j()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p2, v1

    .line 139
    iget-object v2, p0, Lce;->g:Lbv;

    iget-boolean v2, v2, Lbv;->j:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lce;->f:Lbf$a;

    sget-object v3, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v2, v3, :cond_1

    .line 141
    invoke-direct {p0, p4, p3}, Lce;->b(II)V

    .line 144
    :cond_1
    iget-object v2, p0, Lce;->g:Lbv;

    iget-boolean v2, v2, Lbv;->j:Z

    if-nez v2, :cond_2

    return-void

    .line 148
    :cond_2
    iget-object v2, p0, Lce;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    if-ne v2, p3, :cond_3

    .line 149
    iget-object p1, p0, Lce;->j:Lbu;

    invoke-virtual {p1, v1}, Lbu;->a(I)V

    .line 150
    iget-object p1, p0, Lce;->k:Lbu;

    invoke-virtual {p1, p2}, Lbu;->a(I)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    .line 155
    iget-object p3, p0, Lce;->d:Lbf;

    invoke-virtual {p3}, Lbf;->N()F

    move-result p3

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lce;->d:Lbf;

    .line 156
    invoke-virtual {p3}, Lbf;->O()F

    move-result p3

    :goto_0
    const/high16 p4, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_5

    .line 159
    iget v1, p1, Lbu;->g:I

    .line 160
    iget p2, v0, Lbu;->g:I

    move p3, p4

    :cond_5
    sub-int/2addr p2, v1

    .line 166
    iget-object p1, p0, Lce;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    sub-int/2addr p2, p1

    .line 167
    iget-object p1, p0, Lce;->j:Lbu;

    int-to-float v0, v1

    add-float/2addr v0, p4

    int-to-float p2, p2

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lbu;->a(I)V

    .line 168
    iget-object p1, p0, Lce;->k:Lbu;

    iget-object p2, p0, Lce;->j:Lbu;

    iget p2, p2, Lbu;->g:I

    iget-object p3, p0, Lce;->g:Lbv;

    iget p3, p3, Lbv;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lbu;->a(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected final a(Lbu;Lbu;I)V
    .locals 1

    .line 283
    iget-object v0, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iput p3, p1, Lbu;->f:I

    .line 285
    iget-object p2, p2, Lbu;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Lbu;Lbu;ILbv;)V
    .locals 2

    .line 289
    iget-object v0, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p1, Lbu;->l:Ljava/util/List;

    iget-object v1, p0, Lce;->g:Lbv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iput p3, p1, Lbu;->h:I

    .line 292
    iput-object p4, p1, Lbu;->i:Lbv;

    .line 293
    iget-object p2, p2, Lbu;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object p2, p4, Lbv;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract a()Z
.end method

.method public b()J
    .locals 2

    .line 298
    iget-object v0, p0, Lce;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lce;->g:Lbv;

    iget v0, v0, Lbv;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected b(Lbs;)V
    .locals 0

    return-void
.end method

.method abstract c()V
.end method

.method protected c(Lbs;)V
    .locals 0

    return-void
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method public g()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lce;->i:Z

    return v0
.end method
