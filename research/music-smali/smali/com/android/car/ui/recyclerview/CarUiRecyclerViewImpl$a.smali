.class Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;
.super Ljava/lang/Object;
.source "CarUiRecyclerViewImpl.java"

# interfaces
.implements Lair$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;


# direct methods
.method private constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;)V
    .locals 0

    .line 818
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)V

    return-void
.end method


# virtual methods
.method public onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$a;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->access$400(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 826
    instance-of v1, v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 831
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 834
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxCumulativeContentItems()I

    move-result v1

    .line 837
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 838
    move-object v2, v0

    check-cast v2, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;

    invoke-interface {v2, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$a;->a(I)V

    .line 839
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    if-ge v1, p1, :cond_3

    sub-int/2addr p1, v1

    .line 846
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_3
    sub-int/2addr v1, p1

    .line 848
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method
