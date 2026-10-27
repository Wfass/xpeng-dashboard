.class Lcom/google/android/material/bottomnavigation/b$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/b;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b$1;->a:Lcom/google/android/material/bottomnavigation/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 129
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 130
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b$1;->a:Lcom/google/android/material/bottomnavigation/b;

    invoke-static {v0}, Lcom/google/android/material/bottomnavigation/b;->b(Lcom/google/android/material/bottomnavigation/b;)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b$1;->a:Lcom/google/android/material/bottomnavigation/b;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/b;->a(Lcom/google/android/material/bottomnavigation/b;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/l;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 132
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
