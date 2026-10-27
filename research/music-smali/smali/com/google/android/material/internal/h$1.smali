.class Lcom/google/android/material/internal/h$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/h;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 413
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 414
    iget-object v0, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/h;->b(Z)V

    .line 415
    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object p1

    .line 416
    iget-object v0, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    iget-object v0, v0, Lcom/google/android/material/internal/h;->b:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/l;I)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    iget-object v0, v0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h$b;->a(Landroidx/appcompat/view/menu/i;)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 422
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/h;->b(Z)V

    if-eqz v1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/google/android/material/internal/h$1;->a:Lcom/google/android/material/internal/h;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/h;->a(Z)V

    :cond_1
    return-void
.end method
