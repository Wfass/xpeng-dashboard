.class public Lcom/google/android/material/tabs/TabLayout$f;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/tabs/TabLayout;

.field public b:Lcom/google/android/material/tabs/TabLayout$h;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1969
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    const/4 v1, 0x1

    .line 1971
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    .line 1977
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$f;)I
    .locals 0

    .line 1953
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 0

    .line 1953
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;
    .locals 0

    .line 1953
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/tabs/TabLayout$f;)I
    .locals 0

    .line 1953
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    return p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(I)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 3

    .line 2066
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2067
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 2

    .line 2112
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    .line 2113
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2114
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 2116
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    .line 2117
    sget-boolean p1, Lcom/google/android/material/badge/a;->a:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 2118
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 2119
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$h;->b(Lcom/google/android/material/tabs/TabLayout$h;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2121
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$h;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 2047
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    .line 2048
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2155
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 2156
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;
    .locals 0

    .line 2288
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 2289
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$f;->h()V

    return-object p0
.end method

.method b(I)V
    .locals 0

    .line 2091
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 2087
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    return v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .line 2101
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 2241
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->i:I

    return v0
.end method

.method public f()V
    .locals 2

    .line 2246
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 2249
    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    return-void

    .line 2247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 2

    .line 2254
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 2257
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h()V
    .locals 1

    .line 2308
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v0, :cond_0

    .line 2309
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->b()V

    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    const/4 v0, 0x0

    .line 2314
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2315
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->b:Lcom/google/android/material/tabs/TabLayout$h;

    .line 2316
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/Object;

    .line 2317
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    .line 2318
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->j:I

    .line 2319
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->e:Ljava/lang/CharSequence;

    .line 2320
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->f:Ljava/lang/CharSequence;

    .line 2321
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    .line 2322
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$f;->h:Landroid/view/View;

    return-void
.end method
