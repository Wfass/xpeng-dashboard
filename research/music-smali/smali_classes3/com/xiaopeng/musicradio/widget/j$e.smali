.class public Lcom/xiaopeng/musicradio/widget/j$e;
.super Ljava/lang/Object;
.source "RecyclerTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/xiaopeng/musicradio/widget/j;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/j;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j$e;->a:Lcom/xiaopeng/musicradio/widget/j;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j$e;->b:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 446
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/j$e;->a:Lcom/xiaopeng/musicradio/widget/j;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/j;->a(IFZ)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 456
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j$e;->b:I

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$e;->a:Lcom/xiaopeng/musicradio/widget/j;

    iget v0, v0, Lcom/xiaopeng/musicradio/widget/j;->r:I

    if-eq v0, p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j$e;->a:Lcom/xiaopeng/musicradio/widget/j;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j;->a(I)V

    :cond_0
    return-void
.end method
