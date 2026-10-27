.class public Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;
.super Ljava/lang/Object;
.source "MusicTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;)V
    .locals 1

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 2172
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->b:I

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-eqz v0, :cond_2

    .line 2158
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 2159
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 2162
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->b:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2165
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabAt(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2166
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->getTabAt(I)Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->selectTab(Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$e;Z)V

    :cond_2
    return-void
.end method

.method public a(IFI)V
    .locals 5

    .line 2140
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;

    if-eqz p3, :cond_4

    .line 2144
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->b:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 2149
    :goto_1
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    if-ne v4, v2, :cond_2

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->b:I

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    .line 2151
    :cond_3
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout;->setScrollPosition(IFZZ)V

    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2133
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->b:I

    .line 2134
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/viewpager/MusicTabLayout$f;->c:I

    return-void
.end method
