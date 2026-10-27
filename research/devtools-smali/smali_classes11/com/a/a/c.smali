.class Lcom/a/a/c;
.super Lcom/a/a/f;
.source "FloatKeyframeSet.java"


# instance fields
.field private mK:F

.field private mL:F

.field private mM:F

.field private mN:Z


# direct methods
.method public varargs constructor <init>([Lcom/a/a/e$a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/a/a/f;-><init>([Lcom/a/a/e;)V

    .line 39
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/a/a/c;->mN:Z

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/a/a/c;->do()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/a/a/c;
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    .line 53
    iget-object v1, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 54
    new-array v2, v1, [Lcom/a/a/e$a;

    .line 55
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/e;

    invoke-virtual {v4}, Lcom/a/a/e;->dq()Lcom/a/a/e;

    move-result-object v4

    check-cast v4, Lcom/a/a/e$a;

    aput-object v4, v2, v3

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0, v2}, Lcom/a/a/c;-><init>([Lcom/a/a/e$a;)V

    .line 59
    return-object v0
.end method

.method public synthetic dp()Lcom/a/a/f;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/a/a/c;->do()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 5

    .line 63
    iget v0, p0, Lcom/a/a/c;->mNumKeyframes:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 64
    iget-boolean v0, p0, Lcom/a/a/c;->mN:Z

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v2, p0, Lcom/a/a/c;->mN:Z

    .line 66
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    invoke-virtual {v0}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v0

    iput v0, p0, Lcom/a/a/c;->mK:F

    .line 67
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    invoke-virtual {v0}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v0

    iput v0, p0, Lcom/a/a/c;->mL:F

    .line 68
    iget v0, p0, Lcom/a/a/c;->mL:F

    iget v1, p0, Lcom/a/a/c;->mK:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/a/a/c;->mM:F

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/a/a/c;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/a/a/c;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    if-nez v0, :cond_2

    .line 74
    iget v0, p0, Lcom/a/a/c;->mK:F

    iget v1, p0, Lcom/a/a/c;->mM:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    iget v1, p0, Lcom/a/a/c;->mK:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/a/a/c;->mL:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 79
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    .line 81
    iget-object v1, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/e$a;

    .line 82
    invoke-virtual {v0}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v2

    .line 83
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v3

    .line 84
    invoke-virtual {v0}, Lcom/a/a/e$a;->getFraction()F

    move-result v0

    .line 85
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFraction()F

    move-result v4

    .line 86
    invoke-virtual {v1}, Lcom/a/a/e$a;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 90
    :cond_4
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 91
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    if-nez v0, :cond_5

    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_0
    return v2

    .line 95
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    iget v2, p0, Lcom/a/a/c;->mNumKeyframes:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    .line 97
    iget-object v1, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    iget v2, p0, Lcom/a/a/c;->mNumKeyframes:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/e$a;

    .line 98
    invoke-virtual {v0}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v2

    .line 99
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v3

    .line 100
    invoke-virtual {v0}, Lcom/a/a/e$a;->getFraction()F

    move-result v0

    .line 101
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFraction()F

    move-result v4

    .line 102
    invoke-virtual {v1}, Lcom/a/a/e$a;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 106
    :cond_7
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 107
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    if-nez v0, :cond_8

    sub-float/2addr v3, v2

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_1
    return v2

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/e$a;

    .line 113
    move-object v1, v0

    move v0, v3

    :goto_2
    iget v2, p0, Lcom/a/a/c;->mNumKeyframes:I

    if-ge v0, v2, :cond_d

    .line 114
    iget-object v2, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/e$a;

    .line 115
    invoke-virtual {v2}, Lcom/a/a/e$a;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_c

    .line 116
    invoke-virtual {v2}, Lcom/a/a/e$a;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 120
    :cond_a
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFraction()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {v2}, Lcom/a/a/e$a;->getFraction()F

    move-result v0

    invoke-virtual {v1}, Lcom/a/a/e$a;->getFraction()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr p1, v0

    .line 122
    invoke-virtual {v1}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v0

    .line 123
    invoke-virtual {v2}, Lcom/a/a/e$a;->getFloatValue()F

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    if-nez v2, :cond_b

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/a/a/c;->mR:Lcom/a/a/h;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lcom/a/a/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_3
    return v0

    .line 129
    :cond_c
    nop

    .line 113
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_2

    .line 132
    :cond_d
    iget-object p1, p0, Lcom/a/a/c;->mQ:Ljava/util/ArrayList;

    iget v0, p0, Lcom/a/a/c;->mNumKeyframes:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/a/a/e;

    invoke-virtual {p1}, Lcom/a/a/e;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/a/a/c;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
