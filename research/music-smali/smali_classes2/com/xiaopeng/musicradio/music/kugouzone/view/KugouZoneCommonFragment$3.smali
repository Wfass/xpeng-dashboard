.class Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;
.super Ljava/lang/Object;
.source "KugouZoneCommonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getTipsState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->access$100(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->access$000(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(I)V

    :cond_0
    return-void
.end method
