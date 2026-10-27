.class public Ldd$a$a;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field private final c:Ldd$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldd$a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 756
    iput v0, p0, Ldd$a$a;->a:I

    const/16 v0, 0x11

    .line 757
    iput v0, p0, Ldd$a$a;->b:I

    .line 765
    iput-object p2, p0, Ldd$a$a;->c:Ldd$a;

    .line 766
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/widget/h$b;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 767
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 769
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 770
    sget v1, Landroidx/constraintlayout/widget/h$b;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 771
    iget v1, p0, Ldd$a$a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Ldd$a$a;->a:I

    goto :goto_1

    .line 772
    :cond_0
    sget v1, Landroidx/constraintlayout/widget/h$b;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 773
    iget v1, p0, Ldd$a$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Ldd$a$a;->b:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Ldb;)V
    .locals 2

    .line 810
    iget v0, p0, Ldd$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-virtual {p1, v0}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (*)  could not find id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldd$a$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 818
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ldb;ILdd$a;)V
    .locals 5

    .line 786
    iget v0, p0, Ldd$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OnClick could not find id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Ldd$a$a;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 791
    :cond_1
    invoke-static {p3}, Ldd$a;->b(Ldd$a;)I

    move-result v0

    .line 792
    invoke-static {p3}, Ldd$a;->a(Ldd$a;)I

    move-result p3

    if-ne v0, v1, :cond_2

    .line 794
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 798
    :cond_2
    iget v1, p0, Ldd$a$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-ne p2, v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    .line 799
    :goto_1
    iget v4, p0, Ldd$a$a;->b:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    if-ne p2, v0, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    .line 800
    iget v4, p0, Ldd$a$a;->b:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    if-ne p2, v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    or-int/2addr v0, v1

    .line 801
    iget v1, p0, Ldd$a$a;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    if-ne p2, p3, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    or-int/2addr v0, v1

    .line 802
    iget v1, p0, Ldd$a$a;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    or-int p2, v0, v2

    if-eqz p2, :cond_8

    .line 805
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method a(Ldd$a;Ldb;)Z
    .locals 4

    .line 822
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 825
    :cond_0
    invoke-static {v0}, Ldd$a;->a(Ldd$a;)I

    move-result p1

    .line 826
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v0}, Ldd$a;->b(Ldd$a;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 828
    iget p2, p2, Ldb;->f:I

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 830
    :cond_2
    iget v2, p2, Ldb;->f:I

    if-eq v2, v0, :cond_4

    iget p2, p2, Ldb;->f:I

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 836
    iget-object p1, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {p1}, Ldd$a;->h(Ldd$a;)Ldd;

    move-result-object p1

    invoke-static {p1}, Ldd;->a(Ldd;)Ldb;

    move-result-object p1

    .line 837
    invoke-virtual {p1}, Ldb;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v0}, Ldd$a;->b(Ldd$a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 841
    invoke-virtual {p1}, Ldb;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 843
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v0}, Ldd$a;->a(Ldd$a;)I

    move-result v0

    invoke-virtual {p1, v0}, Ldb;->b(I)V

    return-void

    .line 846
    :cond_1
    new-instance v1, Ldd$a;

    iget-object v2, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v2}, Ldd$a;->h(Ldd$a;)Ldd;

    move-result-object v2

    iget-object v3, p0, Ldd$a$a;->c:Ldd$a;

    invoke-direct {v1, v2, v3}, Ldd$a;-><init>(Ldd;Ldd$a;)V

    .line 847
    invoke-static {v1, v0}, Ldd$a;->a(Ldd$a;I)I

    .line 848
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v0}, Ldd$a;->a(Ldd$a;)I

    move-result v0

    invoke-static {v1, v0}, Ldd$a;->b(Ldd$a;I)I

    .line 849
    invoke-virtual {p1, v1}, Ldb;->setTransition(Ldd$a;)V

    .line 850
    invoke-virtual {p1}, Ldb;->c()V

    return-void

    .line 853
    :cond_2
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v0}, Ldd$a;->h(Ldd$a;)Ldd;

    move-result-object v0

    iget-object v0, v0, Ldd;->b:Ldd$a;

    .line 854
    iget v1, p0, Ldd$a$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v4

    .line 855
    :goto_1
    iget v2, p0, Ldd$a$a;->b:I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_6

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v4

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-eqz v5, :cond_b

    .line 858
    iget-object v5, p0, Ldd$a$a;->c:Ldd$a;

    invoke-static {v5}, Ldd$a;->h(Ldd$a;)Ldd;

    move-result-object v5

    iget-object v5, v5, Ldd;->b:Ldd$a;

    iget-object v6, p0, Ldd$a$a;->c:Ldd$a;

    if-eq v5, v6, :cond_8

    .line 859
    invoke-virtual {p1, v6}, Ldb;->setTransition(Ldd$a;)V

    .line 861
    :cond_8
    invoke-virtual {p1}, Ldb;->getCurrentState()I

    move-result v5

    invoke-virtual {p1}, Ldb;->getEndState()I

    move-result v6

    if-eq v5, v6, :cond_a

    invoke-virtual {p1}, Ldb;->getProgress()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    goto :goto_5

    :cond_9
    move v2, v3

    goto :goto_6

    :cond_a
    :goto_5
    move v1, v3

    .line 867
    :cond_b
    :goto_6
    invoke-virtual {p0, v0, p1}, Ldd$a$a;->a(Ldd$a;Ldb;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v1, :cond_c

    .line 868
    iget v0, p0, Ldd$a$a;->b:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_c

    .line 869
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-virtual {p1, v0}, Ldb;->setTransition(Ldd$a;)V

    .line 870
    invoke-virtual {p1}, Ldb;->c()V

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_d

    .line 871
    iget v0, p0, Ldd$a$a;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 872
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-virtual {p1, v0}, Ldb;->setTransition(Ldd$a;)V

    .line 873
    invoke-virtual {p1}, Ldb;->b()V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    .line 874
    iget v0, p0, Ldd$a$a;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 875
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-virtual {p1, v0}, Ldb;->setTransition(Ldd$a;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 876
    invoke-virtual {p1, v0}, Ldb;->setProgress(F)V

    goto :goto_7

    :cond_e
    if-eqz v2, :cond_f

    .line 877
    iget v0, p0, Ldd$a$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_f

    .line 878
    iget-object v0, p0, Ldd$a$a;->c:Ldd$a;

    invoke-virtual {p1, v0}, Ldb;->setTransition(Ldd$a;)V

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p1, v0}, Ldb;->setProgress(F)V

    :cond_f
    :goto_7
    return-void
.end method
