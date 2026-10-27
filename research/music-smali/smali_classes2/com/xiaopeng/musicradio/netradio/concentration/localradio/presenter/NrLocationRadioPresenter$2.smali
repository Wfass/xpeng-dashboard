.class Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;
.super Lbkv;
.source "NrLocationRadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 162
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/b;->showErrorView(Ljava/lang/String;)V

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local Radio error ==> code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NrLocationRadioPresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    sget p2, Lasf;->c:I

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V
    .locals 1

    .line 156
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 153
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListV2Bean;)V

    return-void
.end method
