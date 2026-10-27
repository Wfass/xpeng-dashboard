.class public abstract Laus;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineMainBinding.java"


# instance fields
.field public final c:Landroid/widget/FrameLayout;

.field public final d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 25
    iput-object p4, p0, Laus;->c:Landroid/widget/FrameLayout;

    .line 26
    iput-object p5, p0, Laus;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    return-void
.end method
