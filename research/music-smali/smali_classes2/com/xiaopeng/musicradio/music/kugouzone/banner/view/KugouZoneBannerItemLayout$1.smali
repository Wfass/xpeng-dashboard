.class Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;
.super Ljava/lang/Object;
.source "KugouZoneBannerItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->c(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->b(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(Landroid/content/Context;II)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->a(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)I

    move-result p1

    invoke-static {p1}, Lbjl;->q(I)V

    return-void
.end method
