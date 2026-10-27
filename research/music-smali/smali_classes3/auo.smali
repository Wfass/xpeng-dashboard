.class public abstract Lauo;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineCollectBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

.field public final d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 25
    iput-object p4, p0, Lauo;->c:Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;

    .line 26
    iput-object p5, p0, Lauo;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    return-void
.end method
