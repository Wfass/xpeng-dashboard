.class Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$2;
.super Ljava/lang/Object;
.source "RankListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$2;->a:Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment$2;->a:Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;->access$300(Lcom/xiaopeng/musicradio/program/rank/view/RankListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/rank/presenter/RankListPresenter;->c()V

    return-void
.end method
