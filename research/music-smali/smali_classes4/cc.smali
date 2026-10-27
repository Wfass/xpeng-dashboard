.class public Lcc;
.super Lce;
.source "VerticalWidgetRun.java"


# instance fields
.field public a:Lbu;

.field b:Lbv;


# direct methods
.method public constructor <init>(Lbf;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lce;-><init>(Lbf;)V

    .line 34
    new-instance p1, Lbu;

    invoke-direct {p1, p0}, Lbu;-><init>(Lce;)V

    iput-object p1, p0, Lcc;->a:Lbu;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcc;->b:Lbv;

    .line 39
    iget-object p1, p0, Lcc;->j:Lbu;

    sget-object v0, Lbu$a;->TOP:Lbu$a;

    iput-object v0, p1, Lbu;->e:Lbu$a;

    .line 40
    iget-object p1, p0, Lcc;->k:Lbu;

    sget-object v0, Lbu$a;->BOTTOM:Lbu$a;

    iput-object v0, p1, Lbu;->e:Lbu$a;

    .line 41
    iget-object p1, p0, Lcc;->a:Lbu;

    sget-object v0, Lbu$a;->BASELINE:Lbu$a;

    iput-object v0, p1, Lbu;->e:Lbu$a;

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcc;->h:I

    return-void
.end method


# virtual methods
.method public a(Lbs;)V
    .locals 6

    .line 85
    sget-object v0, Lcc$1;->a:[I

    iget-object v1, p0, Lcc;->l:Lce$a;

    invoke-virtual {v1}, Lce$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->B:Lbe;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->D:Lbe;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcc;->a(Lbs;Lbe;Lbe;I)V

    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcc;->c(Lbs;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, p1}, Lcc;->b(Lbs;)V

    .line 99
    :goto_0
    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->c:Z

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-nez p1, :cond_8

    .line 100
    iget-object p1, p0, Lcc;->f:Lbf$a;

    sget-object v5, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p1, v5, :cond_8

    .line 101
    iget-object p1, p0, Lcc;->d:Lbf;

    iget p1, p1, Lbf;->o:I

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_3

    goto/16 :goto_4

    .line 103
    :cond_3
    iget-object p1, p0, Lcc;->d:Lbf;

    iget-object p1, p1, Lbf;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-eqz p1, :cond_8

    .line 105
    iget-object p1, p0, Lcc;->d:Lbf;

    invoke-virtual {p1}, Lbf;->T()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    move p1, v4

    goto :goto_3

    .line 111
    :cond_4
    iget-object p1, p0, Lcc;->d:Lbf;

    iget-object p1, p1, Lbf;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    goto :goto_1

    .line 108
    :cond_5
    iget-object p1, p0, Lcc;->d:Lbf;

    iget-object p1, p1, Lbf;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    mul-float/2addr p1, v1

    goto :goto_2

    .line 114
    :cond_6
    iget-object p1, p0, Lcc;->d:Lbf;

    iget-object p1, p1, Lbf;->f:Lca;

    iget-object p1, p1, Lca;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->S()F

    move-result v1

    :goto_1
    div-float/2addr p1, v1

    :goto_2
    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 118
    :goto_3
    iget-object v1, p0, Lcc;->g:Lbv;

    invoke-virtual {v1, p1}, Lbv;->a(I)V

    goto :goto_4

    .line 122
    :cond_7
    iget-object p1, p0, Lcc;->d:Lbf;

    invoke-virtual {p1}, Lbf;->A()Lbf;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 124
    iget-object v1, p1, Lbf;->g:Lcc;

    iget-object v1, v1, Lcc;->g:Lbv;

    iget-boolean v1, v1, Lbv;->j:Z

    if-eqz v1, :cond_8

    .line 125
    iget-object v1, p0, Lcc;->d:Lbf;

    iget v1, v1, Lbf;->v:F

    .line 126
    iget-object p1, p1, Lbf;->g:Lcc;

    iget-object p1, p1, Lcc;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 128
    iget-object v1, p0, Lcc;->g:Lbv;

    invoke-virtual {v1, p1}, Lbv;->a(I)V

    .line 137
    :cond_8
    :goto_4
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-boolean p1, p1, Lbu;->c:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcc;->k:Lbu;

    iget-boolean p1, p1, Lbu;->c:Z

    if-nez p1, :cond_9

    goto/16 :goto_6

    .line 140
    :cond_9
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-boolean p1, p1, Lbu;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcc;->k:Lbu;

    iget-boolean p1, p1, Lbu;->j:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-eqz p1, :cond_a

    return-void

    .line 144
    :cond_a
    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcc;->d:Lbf;

    iget p1, p1, Lbf;->n:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lcc;->d:Lbf;

    .line 147
    invoke-virtual {p1}, Lbf;->ab()Z

    move-result p1

    if-nez p1, :cond_b

    .line 149
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbu;

    .line 150
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v0, v0, Lbu;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    .line 151
    iget p1, p1, Lbu;->g:I

    iget-object v1, p0, Lcc;->j:Lbu;

    iget v1, v1, Lbu;->f:I

    add-int/2addr p1, v1

    .line 152
    iget v0, v0, Lbu;->g:I

    iget-object v1, p0, Lcc;->k:Lbu;

    iget v1, v1, Lbu;->f:I

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    .line 155
    iget-object v2, p0, Lcc;->j:Lbu;

    invoke-virtual {v2, p1}, Lbu;->a(I)V

    .line 156
    iget-object p1, p0, Lcc;->k:Lbu;

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    .line 157
    iget-object p1, p0, Lcc;->g:Lbv;

    invoke-virtual {p1, v1}, Lbv;->a(I)V

    return-void

    .line 161
    :cond_b
    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne p1, v1, :cond_d

    iget p1, p0, Lcc;->c:I

    if-ne p1, v3, :cond_d

    .line 164
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcc;->k:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 165
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbu;

    .line 166
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu;

    .line 167
    iget p1, p1, Lbu;->g:I

    iget-object v2, p0, Lcc;->j:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr p1, v2

    .line 168
    iget v1, v1, Lbu;->g:I

    iget-object v2, p0, Lcc;->k:Lbu;

    iget v2, v2, Lbu;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 170
    iget-object p1, p0, Lcc;->g:Lbv;

    iget p1, p1, Lbv;->m:I

    if-ge v1, p1, :cond_c

    .line 171
    iget-object p1, p0, Lcc;->g:Lbv;

    invoke-virtual {p1, v1}, Lbv;->a(I)V

    goto :goto_5

    .line 173
    :cond_c
    iget-object p1, p0, Lcc;->g:Lbv;

    iget-object v1, p0, Lcc;->g:Lbv;

    iget v1, v1, Lbv;->m:I

    invoke-virtual {p1, v1}, Lbv;->a(I)V

    .line 178
    :cond_d
    :goto_5
    iget-object p1, p0, Lcc;->g:Lbv;

    iget-boolean p1, p1, Lbv;->j:Z

    if-nez p1, :cond_e

    return-void

    .line 182
    :cond_e
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    iget-object p1, p0, Lcc;->k:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 183
    iget-object p1, p0, Lcc;->j:Lbu;

    iget-object p1, p1, Lbu;->l:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbu;

    .line 184
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v1, v1, Lbu;->l:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu;

    .line 185
    iget v2, p1, Lbu;->g:I

    iget-object v3, p0, Lcc;->j:Lbu;

    iget v3, v3, Lbu;->f:I

    add-int/2addr v2, v3

    .line 186
    iget v3, v1, Lbu;->g:I

    iget-object v4, p0, Lcc;->k:Lbu;

    iget v4, v4, Lbu;->f:I

    add-int/2addr v3, v4

    .line 187
    iget-object v4, p0, Lcc;->d:Lbf;

    invoke-virtual {v4}, Lbf;->O()F

    move-result v4

    if-ne p1, v1, :cond_f

    .line 189
    iget v2, p1, Lbu;->g:I

    .line 190
    iget v3, v1, Lbu;->g:I

    move v4, v0

    :cond_f
    sub-int/2addr v3, v2

    .line 195
    iget-object p1, p0, Lcc;->g:Lbv;

    iget p1, p1, Lbv;->g:I

    sub-int/2addr v3, p1

    .line 196
    iget-object p1, p0, Lcc;->j:Lbu;

    int-to-float v1, v2

    add-float/2addr v1, v0

    int-to-float v0, v3

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    .line 197
    iget-object p1, p0, Lcc;->k:Lbu;

    iget-object v0, p0, Lcc;->j:Lbu;

    iget v0, v0, Lbu;->g:I

    iget-object v1, p0, Lcc;->g:Lbv;

    iget v1, v1, Lbv;->g:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lbu;->a(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method a()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lce;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lce;->d:Lbf;

    iget v0, v0, Lbf;->o:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcc;->e:Lcb;

    .line 53
    iget-object v0, p0, Lcc;->j:Lbu;

    invoke-virtual {v0}, Lbu;->a()V

    .line 54
    iget-object v0, p0, Lcc;->k:Lbu;

    invoke-virtual {v0}, Lbu;->a()V

    .line 55
    iget-object v0, p0, Lcc;->a:Lbu;

    invoke-virtual {v0}, Lbu;->a()V

    .line 56
    iget-object v0, p0, Lcc;->g:Lbv;

    invoke-virtual {v0}, Lbv;->a()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcc;->i:Z

    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcc;->i:Z

    .line 63
    iget-object v1, p0, Lcc;->j:Lbu;

    invoke-virtual {v1}, Lbu;->a()V

    .line 64
    iget-object v1, p0, Lcc;->j:Lbu;

    iput-boolean v0, v1, Lbu;->j:Z

    .line 65
    iget-object v1, p0, Lcc;->k:Lbu;

    invoke-virtual {v1}, Lbu;->a()V

    .line 66
    iget-object v1, p0, Lcc;->k:Lbu;

    iput-boolean v0, v1, Lbu;->j:Z

    .line 67
    iget-object v1, p0, Lcc;->a:Lbu;

    invoke-virtual {v1}, Lbu;->a()V

    .line 68
    iget-object v1, p0, Lcc;->a:Lbu;

    iput-boolean v0, v1, Lbu;->j:Z

    .line 69
    iget-object v1, p0, Lcc;->g:Lbv;

    iput-boolean v0, v1, Lbv;->j:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-boolean v0, v0, Lbu;->j:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget v1, v1, Lbu;->g:I

    invoke-virtual {v0, v1}, Lbf;->p(I)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 7

    .line 203
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-boolean v0, v0, Lbf;->b:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_3

    .line 207
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->Z()Lbf$a;

    move-result-object v0

    iput-object v0, p0, Lce;->f:Lbf$a;

    .line 208
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Lbp;

    invoke-direct {v0, p0}, Lbp;-><init>(Lce;)V

    iput-object v0, p0, Lcc;->b:Lbv;

    .line 211
    :cond_1
    iget-object v0, p0, Lce;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-eq v0, v1, :cond_4

    .line 212
    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {v0}, Lbf;->Z()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-ne v1, v2, :cond_2

    .line 215
    invoke-virtual {v0}, Lbf;->G()I

    move-result v1

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->B:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->D:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    sub-int/2addr v1, v2

    .line 216
    iget-object v2, p0, Lcc;->j:Lbu;

    iget-object v3, v0, Lbf;->g:Lcc;

    iget-object v3, v3, Lcc;->j:Lbu;

    iget-object v4, p0, Lcc;->d:Lbf;

    iget-object v4, v4, Lbf;->B:Lbe;

    invoke-virtual {v4}, Lbe;->j()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcc;->a(Lbu;Lbu;I)V

    .line 217
    iget-object v2, p0, Lcc;->k:Lbu;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-object v3, p0, Lcc;->d:Lbf;

    iget-object v3, v3, Lbf;->D:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lcc;->a(Lbu;Lbu;I)V

    .line 218
    iget-object v0, p0, Lcc;->g:Lbv;

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->FIXED:Lbf$a;

    if-ne v0, v1, :cond_4

    .line 223
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lbv;->a(I)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_PARENT:Lbf$a;

    if-ne v0, v1, :cond_4

    .line 228
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {v0}, Lbf;->Z()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-ne v1, v2, :cond_4

    .line 230
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, v0, Lbf;->g:Lcc;

    iget-object v2, v2, Lcc;->j:Lbu;

    iget-object v3, p0, Lcc;->d:Lbf;

    iget-object v3, v3, Lbf;->B:Lbe;

    invoke-virtual {v3}, Lbe;->j()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcc;->a(Lbu;Lbu;I)V

    .line 231
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->D:Lbe;

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    return-void

    .line 245
    :cond_4
    :goto_0
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcc;->d:Lbf;

    iget-boolean v0, v0, Lbf;->b:Z

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_8

    .line 247
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->ab()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    iput v1, v0, Lbu;->f:I

    .line 249
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lbu;->f:I

    goto :goto_1

    .line 251
    :cond_5
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 253
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 255
    :cond_6
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 257
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 259
    :cond_7
    iget-object v0, p0, Lcc;->j:Lbu;

    iput-boolean v3, v0, Lbu;->b:Z

    .line 260
    iget-object v0, p0, Lcc;->k:Lbu;

    iput-boolean v3, v0, Lbu;->b:Z

    .line 262
    :goto_1
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 263
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->Q()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    goto/16 :goto_5

    .line 265
    :cond_8
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 268
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 269
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 270
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 271
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->Q()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    goto/16 :goto_5

    .line 274
    :cond_9
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 277
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 278
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 280
    :cond_a
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 281
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->Q()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    goto/16 :goto_5

    .line 283
    :cond_b
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 286
    iget-object v2, p0, Lcc;->a:Lbu;

    invoke-virtual {p0, v2, v0, v1}, Lcc;->a(Lbu;Lbu;I)V

    .line 287
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->a:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->Q()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 288
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    goto/16 :goto_5

    .line 292
    :cond_c
    iget-object v0, p0, Lcc;->d:Lbf;

    instance-of v0, v0, Lbj;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcc;->d:Lbf;

    sget-object v1, Lbe$a;->CENTER:Lbe$a;

    .line 293
    invoke-virtual {v0, v1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v0

    iget-object v0, v0, Lbe;->c:Lbe;

    if-nez v0, :cond_1e

    .line 294
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    .line 295
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->E()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 296
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    iget v2, v2, Lbv;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 297
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 298
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->Q()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcc;->a(Lbu;Lbu;I)V

    goto/16 :goto_5

    .line 303
    :cond_d
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-boolean v0, v0, Lbv;->j:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v6, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v6, :cond_12

    .line 304
    iget-object v0, p0, Lcc;->d:Lbf;

    iget v0, v0, Lbf;->o:I

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_10

    if-eq v0, v5, :cond_e

    goto :goto_2

    .line 306
    :cond_e
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->ab()Z

    move-result v0

    if-nez v0, :cond_13

    .line 307
    iget-object v0, p0, Lcc;->d:Lbf;

    iget v0, v0, Lbf;->n:I

    if-ne v0, v5, :cond_f

    goto :goto_2

    .line 313
    :cond_f
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->g:Lbv;

    .line 314
    iget-object v6, p0, Lcc;->g:Lbv;

    iget-object v6, v6, Lbv;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->g:Lbv;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcc;->g:Lbv;

    iput-boolean v3, v0, Lbv;->b:Z

    .line 317
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->j:Lbu;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->k:Lbu;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 323
    :cond_10
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_2

    .line 327
    :cond_11
    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->g:Lbv;

    .line 328
    iget-object v6, p0, Lcc;->g:Lbv;

    iget-object v6, v6, Lbv;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, v0, Lbu;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->g:Lbv;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcc;->g:Lbv;

    iput-boolean v3, v0, Lbv;->b:Z

    .line 331
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->j:Lbu;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v6, p0, Lcc;->k:Lbu;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    :cond_12
    iget-object v0, p0, Lcc;->g:Lbv;

    invoke-virtual {v0, p0}, Lbv;->b(Lbs;)V

    .line 342
    :cond_13
    :goto_2
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_17

    .line 343
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->ab()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 344
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    iput v1, v0, Lbu;->f:I

    .line 345
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lbe;->j()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lbu;->f:I

    goto :goto_3

    .line 347
    :cond_14
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->I:[Lbe;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Lcc;->a(Lbe;)Lbu;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 358
    invoke-virtual {v0, p0}, Lbu;->b(Lbs;)V

    :cond_15
    if-eqz v1, :cond_16

    .line 361
    invoke-virtual {v1, p0}, Lbu;->b(Lbs;)V

    .line 364
    :cond_16
    sget-object v0, Lce$a;->CENTER:Lce$a;

    iput-object v0, p0, Lcc;->l:Lce$a;

    .line 366
    :goto_3
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 367
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->b:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    goto/16 :goto_4

    .line 369
    :cond_17
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    iget-object v0, v0, Lbe;->c:Lbe;

    const/4 v6, 0x0

    if-eqz v0, :cond_19

    .line 370
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 372
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 373
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 374
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 375
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->b:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 377
    :cond_18
    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_1d

    .line 378
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1d

    .line 379
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_1d

    .line 380
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v1, p0, Lcc;->g:Lbv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->f:Lca;

    iget-object v1, v1, Lca;->g:Lbv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcc;->g:Lbv;

    iput-object p0, v0, Lbv;->a:Lbs;

    goto/16 :goto_4

    .line 387
    :cond_19
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    iget-object v0, v0, Lbe;->c:Lbe;

    const/4 v4, -0x1

    if-eqz v0, :cond_1a

    .line 388
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 390
    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    iget-object v2, v2, Lbf;->I:[Lbe;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lbe;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 391
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->k:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    invoke-virtual {p0, v0, v1, v4, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 392
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 393
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->b:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    goto/16 :goto_4

    .line 396
    :cond_1a
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    iget-object v0, v0, Lbe;->c:Lbe;

    if-eqz v0, :cond_1b

    .line 397
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->I:[Lbe;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcc;->a(Lbe;)Lbu;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 399
    iget-object v2, p0, Lcc;->a:Lbu;

    invoke-virtual {p0, v2, v0, v1}, Lcc;->a(Lbu;Lbu;I)V

    .line 400
    iget-object v0, p0, Lcc;->j:Lbu;

    iget-object v1, p0, Lcc;->a:Lbu;

    iget-object v2, p0, Lcc;->b:Lbv;

    invoke-virtual {p0, v0, v1, v4, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 401
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    goto :goto_4

    .line 405
    :cond_1b
    iget-object v0, p0, Lcc;->d:Lbf;

    instance-of v0, v0, Lbj;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 406
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->A()Lbf;

    move-result-object v0

    iget-object v0, v0, Lbf;->g:Lcc;

    iget-object v0, v0, Lcc;->j:Lbu;

    .line 407
    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->d:Lbf;

    invoke-virtual {v2}, Lbf;->E()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcc;->a(Lbu;Lbu;I)V

    .line 408
    iget-object v0, p0, Lcc;->k:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->g:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 409
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->P()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 410
    iget-object v0, p0, Lcc;->a:Lbu;

    iget-object v1, p0, Lcc;->j:Lbu;

    iget-object v2, p0, Lcc;->b:Lbv;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcc;->a(Lbu;Lbu;ILbv;)V

    .line 412
    :cond_1c
    iget-object v0, p0, Lcc;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_1d

    .line 413
    iget-object v0, p0, Lcc;->d:Lbf;

    invoke-virtual {v0}, Lbf;->S()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1d

    .line 414
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->f:Lbf$a;

    sget-object v1, Lbf$a;->MATCH_CONSTRAINT:Lbf$a;

    if-ne v0, v1, :cond_1d

    .line 415
    iget-object v0, p0, Lcc;->d:Lbf;

    iget-object v0, v0, Lbf;->f:Lca;

    iget-object v0, v0, Lca;->g:Lbv;

    iget-object v0, v0, Lbv;->k:Ljava/util/List;

    iget-object v1, p0, Lcc;->g:Lbv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    iget-object v1, p0, Lcc;->d:Lbf;

    iget-object v1, v1, Lbf;->f:Lca;

    iget-object v1, v1, Lca;->g:Lbv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcc;->g:Lbv;

    iput-object p0, v0, Lbv;->a:Lbs;

    .line 425
    :cond_1d
    :goto_4
    iget-object v0, p0, Lcc;->g:Lbv;

    iget-object v0, v0, Lbv;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 426
    iget-object v0, p0, Lcc;->g:Lbv;

    iput-boolean v3, v0, Lbv;->c:Z

    :cond_1e
    :goto_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerticalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcc;->d:Lbf;

    invoke-virtual {v1}, Lbf;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
