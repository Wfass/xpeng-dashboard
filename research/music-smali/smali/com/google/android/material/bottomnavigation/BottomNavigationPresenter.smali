.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/menu/g;

.field private b:Lcom/google/android/material/bottomnavigation/b;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Landroidx/appcompat/view/menu/g;

    .line 53
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/b;->a(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 120
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/b;->b(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->b:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 123
    invoke-static {v0, p1}, Lcom/google/android/material/badge/a;->a(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/b;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/l$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/material/bottomnavigation/b;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/b;->b()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/b;->c()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/q;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:I

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2

    .line 111
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/b;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->a:I

    .line 113
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Lcom/google/android/material/bottomnavigation/b;

    .line 114
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/b;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/badge/a;->a(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->b:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method
