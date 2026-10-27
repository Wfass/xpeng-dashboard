.class public Lcom/google/android/material/internal/h;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/h$g;,
        Lcom/google/android/material/internal/h$c;,
        Lcom/google/android/material/internal/h$e;,
        Lcom/google/android/material/internal/h$f;,
        Lcom/google/android/material/internal/h$d;,
        Lcom/google/android/material/internal/h$b;,
        Lcom/google/android/material/internal/h$a;,
        Lcom/google/android/material/internal/h$i;,
        Lcom/google/android/material/internal/h$j;,
        Lcom/google/android/material/internal/h$h;,
        Lcom/google/android/material/internal/h$k;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroidx/appcompat/view/menu/g;

.field c:Lcom/google/android/material/internal/h$b;

.field d:Landroid/view/LayoutInflater;

.field e:I

.field f:Z

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/content/res/ColorStateList;

.field i:Landroid/graphics/drawable/Drawable;

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:I

.field final p:Landroid/view/View$OnClickListener;

.field private q:Lcom/google/android/material/internal/NavigationMenuView;

.field private r:Landroidx/appcompat/view/menu/l$a;

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/google/android/material/internal/h;->n:Z

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/google/android/material/internal/h;->v:I

    .line 408
    new-instance v0, Lcom/google/android/material/internal/h$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/h$1;-><init>(Lcom/google/android/material/internal/h;)V

    iput-object v0, p0, Lcom/google/android/material/internal/h;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/internal/h;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/android/material/internal/h;->t:I

    return p0
.end method

.method private l()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/h;->n:Z

    if-eqz v0, :cond_0

    .line 342
    iget v0, p0, Lcom/google/android/material/internal/h;->u:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {v0}, Lcom/google/android/material/internal/h$b;->b()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/m;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/google/android/material/internal/h;->d:Landroid/view/LayoutInflater;

    sget v1, Laiv$h;->design_navigation_menu:I

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    .line 109
    iget-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v0, Lcom/google/android/material/internal/h$g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/internal/h$g;-><init>(Lcom/google/android/material/internal/h;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    if-nez p1, :cond_0

    .line 112
    new-instance p1, Lcom/google/android/material/internal/h$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/h$b;-><init>(Lcom/google/android/material/internal/h;)V

    iput-object p1, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    .line 114
    :cond_0
    iget p1, p0, Lcom/google/android/material/internal/h;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/h;->d:Landroid/view/LayoutInflater;

    sget v0, Laiv$h;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    .line 119
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    .line 120
    iget-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/google/android/material/internal/h;->s:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/h;->d:Landroid/view/LayoutInflater;

    .line 98
    iput-object p2, p0, Lcom/google/android/material/internal/h;->b:Landroidx/appcompat/view/menu/g;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 100
    sget p2, Laiv$d;->design_navigation_separator_vertical_padding:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/h;->o:I

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/internal/h;->h:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/android/material/internal/h;->i:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 195
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 196
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/h$b;->a(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/material/internal/h;->r:Landroidx/appcompat/view/menu/l$a;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/l$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h$b;->a(Landroidx/appcompat/view/menu/i;)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/l$a;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/google/android/material/internal/h;->r:Landroidx/appcompat/view/menu/l$a;

    return-void
.end method

.method public a(Lgr;)V
    .locals 4

    .line 349
    invoke-virtual {p1}, Lgr;->b()I

    move-result v0

    .line 350
    iget v1, p0, Lcom/google/android/material/internal/h;->u:I

    if-eq v1, v0, :cond_0

    .line 351
    iput v0, p0, Lcom/google/android/material/internal/h;->u:I

    .line 353
    invoke-direct {p0}, Lcom/google/android/material/internal/h;->l()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Lgr;->d()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 358
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lgj;->b(Landroid/view/View;Lgr;)Lgr;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/google/android/material/internal/h$b;->a()V

    :cond_0
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

.method public b(I)Landroid/view/View;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/google/android/material/internal/h;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/android/material/internal/h;->g:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 235
    iget-object p1, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/h;->u:I

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h$b;->a(Z)V

    :cond_0
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

    .line 166
    iget v0, p0, Lcom/google/android/material/internal/h;->s:I

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/google/android/material/internal/h;->n:Z

    if-eq v0, p1, :cond_0

    .line 328
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->n:Z

    .line 329
    invoke-direct {p0}, Lcom/google/android/material/internal/h;->l()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/google/android/material/internal/h;->e:I

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->f:Z

    const/4 p1, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/android/material/internal/h;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/google/android/material/internal/h;->j:I

    const/4 p1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public f()Landroid/os/Parcelable;
    .locals 3

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 180
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/h;->c:Lcom/google/android/material/internal/h$b;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Lcom/google/android/material/internal/h$b;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 187
    iget-object v2, p0, Lcom/google/android/material/internal/h;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/google/android/material/internal/h;->k:I

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public g()Landroid/content/res/ColorStateList;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/internal/h;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/google/android/material/internal/h;->t:I

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    return-void
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/material/internal/h;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .line 312
    iget v0, p0, Lcom/google/android/material/internal/h;->l:I

    if-eq v0, p1, :cond_0

    .line 313
    iput p1, p0, Lcom/google/android/material/internal/h;->l:I

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->m:Z

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/google/android/material/internal/h;->j:I

    return v0
.end method

.method public i(I)V
    .locals 1

    .line 362
    iput p1, p0, Lcom/google/android/material/internal/h;->v:I

    .line 363
    iget-object v0, p0, Lcom/google/android/material/internal/h;->q:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/google/android/material/internal/h;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/google/android/material/internal/h;->t:I

    return v0
.end method
