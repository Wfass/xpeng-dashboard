.class public final Lcom/android/car/ui/recyclerview/e;
.super Ljava/lang/Object;
.source "CarUiLinearLayoutStyle.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/d;


# instance fields
.field private a:I

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/android/car/ui/recyclerview/e;->a:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/e;->b:Z

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcom/android/car/ui/recyclerview/e;->c:I

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/android/car/ui/recyclerview/e;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 48
    new-instance v0, Lcom/android/car/ui/recyclerview/e;

    invoke-direct {v0}, Lcom/android/car/ui/recyclerview/e;-><init>()V

    .line 49
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/car/ui/recyclerview/e;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/car/ui/recyclerview/e;->a(I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/e;->a(Z)V

    return-object v0

    .line 45
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "LinearLayoutManager required."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/car/ui/recyclerview/e;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/e;->b:Z

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/car/ui/recyclerview/e;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/car/ui/recyclerview/e;->a:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/e;->b:Z

    return v0
.end method
