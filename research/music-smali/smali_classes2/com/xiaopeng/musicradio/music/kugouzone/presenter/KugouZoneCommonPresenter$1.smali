.class Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;
.super Lbkv;
.source "KugouZoneCommonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->showLoadingFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->updateData(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean;II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;)V

    return-void
.end method
