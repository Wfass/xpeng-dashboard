.class public abstract Lanc;
.super Landroid/widget/RelativeLayout;
.source "SimpleComponent.java"

# interfaces
.implements Lamh;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lamp;

.field protected c:Lamh;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 37
    instance-of v0, p1, Lamh;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lamh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lanc;-><init>(Landroid/view/View;Lamh;)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Lamh;)V
    .locals 3

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p1, p0, Lanc;->a:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lanc;->c:Lamh;

    .line 44
    instance-of p1, p0, Lamj;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lanc;->c:Lamh;

    instance-of v1, p1, Lamk;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    sget-object v1, Lamp;->e:Lamp;

    if-ne p1, v1, :cond_0

    .line 45
    invoke-interface {p2}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 46
    :cond_0
    instance-of p1, p0, Lamk;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lanc;->c:Lamh;

    instance-of v1, p1, Lamj;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    sget-object v1, Lamp;->e:Lamp;

    if-ne p1, v1, :cond_1

    .line 47
    invoke-interface {p2}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lamm;Z)I
    .locals 1

    .line 74
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 75
    invoke-interface {v0, p1, p2}, Lamh;->a(Lamm;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(FII)V
    .locals 1

    .line 136
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lamh;->a(FII)V

    :cond_0
    return-void
.end method

.method public a(Laml;II)V
    .locals 1

    .line 119
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 120
    invoke-interface {v0, p1, p2, p3}, Lamh;->a(Laml;II)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p2, p0, Lanc;->a:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 123
    instance-of p3, p2, Lamg$c;

    if-eqz p3, :cond_1

    .line 124
    check-cast p2, Lamg$c;

    iget p2, p2, Lamg$c;->a:I

    invoke-interface {p1, p0, p2}, Laml;->requestDrawBackgroundFor(Lamh;I)Laml;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lamm;II)V
    .locals 1

    .line 150
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 151
    invoke-interface {v0, p1, p2, p3}, Lamh;->a(Lamm;II)V

    :cond_0
    return-void
.end method

.method public a(Lamm;Lamo;Lamo;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 165
    instance-of v1, p0, Lamj;

    if-eqz v1, :cond_1

    instance-of v0, v0, Lamk;

    if-eqz v0, :cond_1

    .line 166
    iget-boolean v0, p2, Lamo;->isFooter:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p2}, Lamo;->b()Lamo;

    move-result-object p2

    .line 169
    :cond_0
    iget-boolean v0, p3, Lamo;->isFooter:Z

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p3}, Lamo;->b()Lamo;

    move-result-object p3

    goto :goto_0

    .line 172
    :cond_1
    instance-of v0, p0, Lamk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanc;->c:Lamh;

    instance-of v0, v0, Lamj;

    if-eqz v0, :cond_3

    .line 173
    iget-boolean v0, p2, Lamo;->isHeader:Z

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p2}, Lamo;->a()Lamo;

    move-result-object p2

    .line 176
    :cond_2
    iget-boolean v0, p3, Lamo;->isHeader:Z

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {p3}, Lamo;->a()Lamo;

    move-result-object p3

    .line 180
    :cond_3
    :goto_0
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_4

    .line 182
    invoke-interface {v0, p1, p2, p3}, Lamz;->a(Lamm;Lamo;Lamo;)V

    :cond_4
    return-void
.end method

.method public a(ZFIII)V
    .locals 6

    .line 143
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 144
    invoke-interface/range {v0 .. v5}, Lamh;->a(ZFIII)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-interface {v0}, Lamh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(IFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Z)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lanc;->c:Lamh;

    instance-of v1, v0, Lamj;

    if-eqz v1, :cond_0

    check-cast v0, Lamj;

    invoke-interface {v0, p1}, Lamj;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lamm;II)V
    .locals 1

    .line 157
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lamh;->b(Lamm;II)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 57
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 58
    instance-of v0, p1, Lamh;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {p0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    check-cast p1, Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getSpinnerStyle()Lamp;
    .locals 5

    .line 90
    iget-object v0, p0, Lanc;->b:Lamp;

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 94
    invoke-interface {v0}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    iget-object v0, p0, Lanc;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lamg$c;

    if-eqz v1, :cond_2

    .line 99
    move-object v1, v0

    check-cast v1, Lamg$c;

    iget-object v1, v1, Lamg$c;->b:Lamp;

    iput-object v1, p0, Lanc;->b:Lamp;

    .line 100
    iget-object v1, p0, Lanc;->b:Lamp;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_5

    .line 105
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v1, :cond_3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 106
    :cond_3
    sget-object v0, Lamp;->f:[Lamp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 107
    iget-boolean v4, v3, Lamp;->i:Z

    if-eqz v4, :cond_4

    .line 108
    iput-object v3, p0, Lanc;->b:Lamp;

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_5
    sget-object v0, Lamp;->a:Lamp;

    iput-object v0, p0, Lanc;->b:Lamp;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lanc;->a:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lanc;->c:Lamh;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 83
    invoke-interface {v0, p1}, Lamh;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
