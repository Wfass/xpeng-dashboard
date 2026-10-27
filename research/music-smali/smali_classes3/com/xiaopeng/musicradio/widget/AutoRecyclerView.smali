.class public Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.source "AutoRecyclerView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->getSpanCount()I

    move-result v1

    .line 64
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->e:I

    if-eq v2, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->invalidateItemDecorations()V

    .line 66
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->e:I

    .line 67
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_three_two_grid_count:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a:I

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_three_one_grid_count:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->b:I

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_front_full_grid_count:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->c:I

    .line 44
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_back_full_grid_count:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->d:I

    return-void
.end method

.method private getSpanCount()I
    .locals 1

    .line 76
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a:I

    return v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->b:I

    return v0

    .line 82
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->c:I

    return v0

    .line 84
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->d:I

    return v0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoRecyclerView;->a()V

    .line 56
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onMeasure(II)V

    return-void
.end method
