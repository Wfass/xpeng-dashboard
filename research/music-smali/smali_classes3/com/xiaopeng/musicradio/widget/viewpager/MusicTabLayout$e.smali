.class public final Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

.field b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

.field private c:Ljava/lang/Object;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1266
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 3

    .line 1343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1344
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    .line 1390
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h()V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 0

    .line 1323
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h:Landroid/view/View;

    .line 1324
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h()V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->e:Ljava/lang/CharSequence;

    .line 1418
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h()V

    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->f:Ljava/lang/CharSequence;

    .line 1486
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h()V

    return-object p0
.end method

.method b(I)V
    .locals 0

    .line 1368
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1364
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g:I

    return v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-eqz v0, :cond_0

    .line 1444
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;)V

    return-void

    .line 1442
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-eqz v0, :cond_1

    .line 1454
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getSelectedTabPosition()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1452
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method h()V
    .locals 1

    .line 1503
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;->b()V

    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    const/4 v0, 0x0

    .line 1509
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->a:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    .line 1510
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->b:Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$g;

    .line 1511
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->c:Ljava/lang/Object;

    .line 1512
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->d:Landroid/graphics/drawable/Drawable;

    .line 1513
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->e:Ljava/lang/CharSequence;

    .line 1514
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->f:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 1515
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->g:I

    .line 1516
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;->h:Landroid/view/View;

    return-void
.end method
