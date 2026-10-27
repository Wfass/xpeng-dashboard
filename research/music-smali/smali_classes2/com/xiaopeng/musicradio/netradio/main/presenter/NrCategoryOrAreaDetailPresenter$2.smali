.class Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;
.super Lbkv;
.source "NrCategoryOrAreaDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    const-string v1, "getCategoryNetRadio"

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a(Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method
