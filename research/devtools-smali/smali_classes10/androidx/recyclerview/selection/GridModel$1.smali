.class Landroidx/recyclerview/selection/GridModel$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GridModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/selection/GridModel;-><init>(Landroidx/recyclerview/selection/GridModel$GridHost;Landroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/selection/GridModel;


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/GridModel;)V
    .locals 0

    .line 117
    iput-object p1, p0, Landroidx/recyclerview/selection/GridModel$1;->this$0:Landroidx/recyclerview/selection/GridModel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/recyclerview/selection/GridModel$1;->this$0:Landroidx/recyclerview/selection/GridModel;

    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/selection/GridModel;->access$000(Landroidx/recyclerview/selection/GridModel;Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 121
    return-void
.end method
