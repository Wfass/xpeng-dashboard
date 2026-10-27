.class Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MineCollectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment$1;->a:Lcom/xiaopeng/musicradio/mine/collect/main/view/MineCollectFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 116
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 118
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
