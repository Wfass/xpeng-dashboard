.class Lcom/a/a/f;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field mInterpolator:Landroid/view/animation/Interpolator;

.field mNumKeyframes:I

.field mO:Lcom/a/a/e;

.field mP:Lcom/a/a/e;

.field mQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field mR:Lcom/a/a/h;


# direct methods
.method public varargs constructor <init>([Lcom/a/a/e;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/a/a/f;->mNumKeyframes:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object p1, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/e;

    iput-object p1, p0, Lcom/a/a/f;->mO:Lcom/a/a/e;

    .line 49
    iget-object p1, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    iget v0, p0, Lcom/a/a/f;->mNumKeyframes:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/e;

    iput-object p1, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    .line 50
    iget-object p1, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {p1}, Lcom/a/a/e;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/f;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method

.method public static varargs a([F)Lcom/a/a/f;
    .locals 6

    .line 69
    array-length v0, p0

    .line 70
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lcom/a/a/e$a;

    .line 71
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 72
    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    aput-object v0, v1, v3

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    aget p0, p0, v3

    invoke-static {v0, p0}, Lcom/a/a/e;->b(FF)Lcom/a/a/e;

    move-result-object p0

    check-cast p0, Lcom/a/a/e$a;

    aput-object p0, v1, v4

    goto :goto_1

    .line 75
    :cond_0
    aget v5, p0, v3

    invoke-static {v2, v5}, Lcom/a/a/e;->b(FF)Lcom/a/a/e;

    move-result-object v2

    check-cast v2, Lcom/a/a/e$a;

    aput-object v2, v1, v3

    .line 76
    :goto_0
    if-ge v4, v0, :cond_1

    .line 77
    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    aget v3, p0, v4

    invoke-static {v2, v3}, Lcom/a/a/e;->b(FF)Lcom/a/a/e;

    move-result-object v2

    check-cast v2, Lcom/a/a/e$a;

    aput-object v2, v1, v4

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    new-instance p0, Lcom/a/a/c;

    invoke-direct {p0, v1}, Lcom/a/a/c;-><init>([Lcom/a/a/e$a;)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/a/a/h;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/a/a/f;->mR:Lcom/a/a/h;

    .line 140
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/a/a/f;->dp()Lcom/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public dp()Lcom/a/a/f;
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    .line 145
    iget-object v1, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    new-array v2, v1, [Lcom/a/a/e;

    .line 147
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/e;

    invoke-virtual {v4}, Lcom/a/a/e;->dq()Lcom/a/a/e;

    move-result-object v4

    aput-object v4, v2, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/a/a/f;

    invoke-direct {v0, v2}, Lcom/a/a/f;-><init>([Lcom/a/a/e;)V

    .line 151
    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 4

    .line 169
    iget v0, p0, Lcom/a/a/f;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/a/a/f;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/a/a/f;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/a/a/f;->mR:Lcom/a/a/h;

    iget-object v1, p0, Lcom/a/a/f;->mO:Lcom/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {v2}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gtz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    .line 178
    invoke-virtual {v0}, Lcom/a/a/e;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/a/a/f;->mO:Lcom/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/e;->getFraction()F

    move-result v1

    .line 183
    sub-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/a/a/e;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 185
    iget-object v1, p0, Lcom/a/a/f;->mR:Lcom/a/a/h;

    iget-object v2, p0, Lcom/a/a/f;->mO:Lcom/a/a/e;

    invoke-virtual {v2}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 187
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    iget v2, p0, Lcom/a/a/f;->mNumKeyframes:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    .line 189
    iget-object v1, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {v1}, Lcom/a/a/e;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 193
    :cond_4
    invoke-virtual {v0}, Lcom/a/a/e;->getFraction()F

    move-result v1

    .line 194
    sub-float/2addr p1, v1

    iget-object v2, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {v2}, Lcom/a/a/e;->getFraction()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 196
    iget-object v1, p0, Lcom/a/a/f;->mR:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {v2}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/a/a/f;->mO:Lcom/a/a/e;

    .line 200
    :goto_0
    iget v1, p0, Lcom/a/a/f;->mNumKeyframes:I

    if-ge v2, v1, :cond_8

    .line 201
    iget-object v1, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/e;

    .line 202
    invoke-virtual {v1}, Lcom/a/a/e;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/a/a/e;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_6

    .line 205
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 207
    :cond_6
    invoke-virtual {v0}, Lcom/a/a/e;->getFraction()F

    move-result v2

    .line 208
    sub-float/2addr p1, v2

    invoke-virtual {v1}, Lcom/a/a/e;->getFraction()F

    move-result v3

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    .line 210
    iget-object v2, p0, Lcom/a/a/f;->mR:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 213
    :cond_7
    nop

    .line 200
    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_0

    .line 216
    :cond_8
    iget-object p1, p0, Lcom/a/a/f;->mP:Lcom/a/a/e;

    invoke-virtual {p1}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    const-string v0, " "

    .line 222
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/a/a/f;->mNumKeyframes:I

    if-ge v1, v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/a/f;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v0
.end method
