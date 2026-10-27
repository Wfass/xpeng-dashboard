.class Lcom/google/android/material/appbar/d;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/appbar/d;->f:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/appbar/d;->g:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/d;->b:I

    .line 47
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/d;->c:I

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/material/appbar/d;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/d;->d:I

    if-eq v0, p1, :cond_0

    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/d;->d:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/d;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/d;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/d;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lgj;->g(Landroid/view/View;I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/d;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/d;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/d;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lgj;->h(Landroid/view/View;I)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/android/material/appbar/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/d;->e:I

    if-eq v0, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/google/android/material/appbar/d;->e:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/appbar/d;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/android/material/appbar/d;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/android/material/appbar/d;->b:I

    return v0
.end method
