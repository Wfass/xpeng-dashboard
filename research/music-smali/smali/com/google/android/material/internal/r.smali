.class Lcom/google/android/material/internal/r;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Lcom/google/android/material/internal/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/r$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/material/internal/r$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/material/internal/r$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/r$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/r;)V

    iput-object v0, p0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/r$a;

    return-void
.end method

.method static a(Landroid/view/View;)Lcom/google/android/material/internal/r;
    .locals 5

    .line 50
    invoke-static {p0}, Lcom/google/android/material/internal/u;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    instance-of v4, v3, Lcom/google/android/material/internal/r$a;

    if-eqz v4, :cond_0

    .line 56
    check-cast v3, Lcom/google/android/material/internal/r$a;

    iget-object p0, v3, Lcom/google/android/material/internal/r$a;->e:Lcom/google/android/material/internal/r;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Lcom/google/android/material/internal/p;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/p;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/material/internal/r;->a:Lcom/google/android/material/internal/r$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/r$a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
