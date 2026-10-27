.class public Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;
.source "AutoListRecyclerView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_three_two_grid_count:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->a:I

    .line 41
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_three_one_grid_count:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->b:I

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_front_full_grid_count:I

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->c:I

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoRecyclerView_back_full_grid_count:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->d:I

    return-void
.end method


# virtual methods
.method public getSpanCount()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->a:I

    return v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->b:I

    return v0

    .line 71
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->c:I

    return v0

    .line 73
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->d:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->getSpanCount()I

    move-result v1

    .line 52
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->e:I

    if-eq v2, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->invalidateItemDecorations()V

    .line 54
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->e:I

    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMeasure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoListRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->onMeasure(II)V

    return-void
.end method
