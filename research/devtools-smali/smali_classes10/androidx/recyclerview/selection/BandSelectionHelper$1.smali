.class Landroidx/recyclerview/selection/BandSelectionHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BandSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/selection/BandSelectionHelper;-><init>(Landroidx/recyclerview/selection/BandSelectionHelper$BandHost;Landroidx/recyclerview/selection/AutoScroller;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker;Landroidx/recyclerview/selection/BandPredicate;Landroidx/recyclerview/selection/FocusDelegate;Landroidx/recyclerview/selection/OperationMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/selection/BandSelectionHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/BandSelectionHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/recyclerview/selection/BandSelectionHelper$1;->this$0:Landroidx/recyclerview/selection/BandSelectionHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/recyclerview/selection/BandSelectionHelper$1;->this$0:Landroidx/recyclerview/selection/BandSelectionHelper;

    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/selection/BandSelectionHelper;->access$000(Landroidx/recyclerview/selection/BandSelectionHelper;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 106
    return-void
.end method
