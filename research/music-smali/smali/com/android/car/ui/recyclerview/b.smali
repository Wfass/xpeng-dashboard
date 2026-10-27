.class public final Lcom/android/car/ui/recyclerview/b;
.super Ljava/lang/Object;
.source "CarUiGridLayoutStyle.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/d;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/android/car/ui/recyclerview/b;->a:I

    .line 34
    iput v0, p0, Lcom/android/car/ui/recyclerview/b;->b:I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/b;->c:Z

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/android/car/ui/recyclerview/b;->d:I

    .line 39
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/b;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/android/car/ui/recyclerview/b;

    invoke-direct {v0}, Lcom/android/car/ui/recyclerview/b;-><init>()V

    .line 54
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/b;->a(I)V

    .line 55
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getReverseLayout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/b;->a(Z)V

    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/b;->a(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "GridLayoutManager required."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/car/ui/recyclerview/b;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lcom/android/car/ui/recyclerview/b;->a:I

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Span count must be bigger than 0"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public a(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/b;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/b;->c:Z

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/car/ui/recyclerview/b;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/car/ui/recyclerview/b;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/android/car/ui/recyclerview/b;->d:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/b;->c:Z

    return v0
.end method

.method public e()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/b;->e:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method
