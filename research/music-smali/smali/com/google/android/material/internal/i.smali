.class public Lcom/google/android/material/internal/i;
.super Landroidx/appcompat/view/menu/q;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/g;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/q;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/q;->b(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    return-void
.end method
