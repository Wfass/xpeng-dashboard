.class Landroid/support/v7/widget/SnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 44
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 49
    if-nez p2, :cond_0

    iget-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    if-eqz p1, :cond_0

    .line 50
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    .line 51
    iget-object p1, p0, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    .line 53
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 57
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 58
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    .line 60
    :cond_1
    return-void
.end method
