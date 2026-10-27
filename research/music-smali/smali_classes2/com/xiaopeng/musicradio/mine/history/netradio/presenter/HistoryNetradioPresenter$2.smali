.class Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "HistoryNetradioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;->b:Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter;

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;->a:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 126
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/netradio/presenter/HistoryNetradioPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result p1

    return p1
.end method
