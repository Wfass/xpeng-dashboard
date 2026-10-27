.class Landroidx/recyclerview/selection/DefaultBandHost$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DefaultBandHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/selection/DefaultBandHost;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/selection/ItemKeyProvider;Landroidx/recyclerview/selection/SelectionTracker$SelectionPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/selection/DefaultBandHost;


# direct methods
.method constructor <init>(Landroidx/recyclerview/selection/DefaultBandHost;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroidx/recyclerview/selection/DefaultBandHost$1;->this$0:Landroidx/recyclerview/selection/DefaultBandHost;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 72
    iget-object p2, p0, Landroidx/recyclerview/selection/DefaultBandHost$1;->this$0:Landroidx/recyclerview/selection/DefaultBandHost;

    invoke-static {p2, p1}, Landroidx/recyclerview/selection/DefaultBandHost;->access$000(Landroidx/recyclerview/selection/DefaultBandHost;Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method
