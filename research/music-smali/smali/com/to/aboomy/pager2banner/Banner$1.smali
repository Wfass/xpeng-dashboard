.class Lcom/to/aboomy/pager2banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)I

    .line 121
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->c(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    .line 123
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->e(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->d(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 124
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->f(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    .line 127
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->e(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 128
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->f(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
