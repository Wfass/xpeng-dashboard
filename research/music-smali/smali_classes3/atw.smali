.class public abstract Latw;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityAlbumListBinding.java"


# instance fields
.field public final c:Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;

.field public final d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field public final e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 30
    iput-object p4, p0, Latw;->c:Lcom/xiaopeng/musicradio/widget/ClickableLoadingTipsView;

    .line 31
    iput-object p5, p0, Latw;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 32
    iput-object p6, p0, Latw;->e:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    return-void
.end method
