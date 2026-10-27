.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;
.super Lbkv;
.source "NrAllRadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All Radio error ==> code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NrAllRadioPresenter"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    sget p2, Lasf;->c:I

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;I)V

    .line 81
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/view/a;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/netradio/main/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V
    .locals 2

    const-string v0, "NrAllRadioPresenter"

    const-string v1, "response: ======= "

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lbke;->a()Lbke;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbke;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;->a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfoListBean;)V

    return-void
.end method
