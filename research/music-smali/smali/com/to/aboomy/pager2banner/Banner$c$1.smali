.class Lcom/to/aboomy/pager2banner/Banner$c$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/to/aboomy/pager2banner/Banner$c;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/to/aboomy/pager2banner/Banner$c;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner$c;Landroid/content/Context;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c$1;->a:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 4

    .line 391
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$c$1;->a:Lcom/to/aboomy/pager2banner/Banner$c;

    iget-object p1, p1, Lcom/to/aboomy/pager2banner/Banner$c;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {p1}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fe542c3c9eecbfbL    # 0.6644

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method
