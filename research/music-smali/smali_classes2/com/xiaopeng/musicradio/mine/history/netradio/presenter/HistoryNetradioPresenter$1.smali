.class Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;
.super Ljava/lang/Object;
.source "HistoryNetradioPresenter.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Lcom/xiaopeng/musicradio/datalist/g<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LiveData;

.field final synthetic b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/history/netradio/view/a;

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lawm;->a()Lawm;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->b(Ljava/util/List;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lawm;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$1;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method
