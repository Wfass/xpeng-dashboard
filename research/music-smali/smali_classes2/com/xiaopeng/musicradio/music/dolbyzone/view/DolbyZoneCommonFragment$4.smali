.class Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;
.super Ljava/lang/Object;
.source "DolbyZoneCommonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getTipsState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$4;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->access$000(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->d()V

    :cond_0
    return-void
.end method
