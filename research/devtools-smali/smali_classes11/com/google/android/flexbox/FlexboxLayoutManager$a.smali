.class Lcom/google/android/flexbox/FlexboxLayoutManager$a;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private hW:I

.field private hX:I

.field private hY:Z

.field final synthetic hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

.field private mCoordinate:I

.field private mLayoutFromEnd:Z

.field private mPosition:I

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2792
    const-class v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .locals 0

    .line 2792
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2803
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hX:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .locals 0

    .line 2792
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I
    .locals 0

    .line 2792
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Landroid/view/View;)V
    .locals 0

    .line 2792
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->assignFromView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z
    .locals 0

    .line 2792
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mValid:Z

    return p0
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z
    .locals 0

    .line 2792
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mValid:Z

    return p1
.end method

.method private assignCoordinateFromPadding()V
    .locals 2

    .line 2833
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2835
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    goto :goto_2

    .line 2837
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2838
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    .line 2840
    :goto_2
    return-void
.end method

.method private assignFromView(Landroid/view/View;)V
    .locals 2

    .line 2843
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2846
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2848
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    goto :goto_0

    .line 2850
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    goto :goto_0

    .line 2853
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    if-eqz v0, :cond_2

    .line 2854
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2855
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    goto :goto_0

    .line 2857
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    .line 2860
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    .line 2861
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hY:Z

    .line 2862
    nop

    .line 2863
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/flexbox/c;->hC:[I

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    aget v0, v0, v1

    .line 2864
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move p1, v0

    nop

    :cond_3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    .line 2868
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    if-le p1, v0, :cond_4

    .line 2869
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/b;

    iget p1, p1, Lcom/google/android/flexbox/b;->hy:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    .line 2871
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I
    .locals 0

    .line 2792
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V
    .locals 0

    .line 2792
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->reset()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z
    .locals 0

    .line 2792
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hY:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I
    .locals 0

    .line 2792
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z
    .locals 0

    .line 2792
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z
    .locals 0

    .line 2792
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I
    .locals 0

    .line 2792
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I
    .locals 0

    .line 2792
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hX:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I
    .locals 0

    .line 2792
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V
    .locals 0

    .line 2792
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->assignCoordinateFromPadding()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I
    .locals 0

    .line 2792
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hX:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I
    .locals 0

    .line 2792
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    return p0
.end method

.method private reset()V
    .locals 4

    .line 2812
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    .line 2813
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    .line 2814
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    .line 2815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mValid:Z

    .line 2816
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hY:Z

    .line 2817
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2818
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2819
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    goto :goto_0

    .line 2821
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v3

    nop

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    goto :goto_0

    .line 2824
    :cond_3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-nez v1, :cond_5

    .line 2825
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v0, v3

    nop

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    goto :goto_0

    .line 2827
    :cond_5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hZ:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v0, v3

    nop

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    .line 2830
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexLinePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPerpendicularCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAssignedFromSavedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->hY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
