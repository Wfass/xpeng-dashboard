.class Lbcw$c$3;
.super Ljava/lang/Object;
.source "LiveDataProvider.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcw$c;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
        "Ljava/util/ArrayList<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbcw$c;


# direct methods
.method constructor <init>(Lbcw$c;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lbcw$c$3;->b:Lbcw$c;

    iput-object p2, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 308
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 309
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;

    .line 310
    iget-object v6, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v5, v6}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v5, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 315
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setDayOfWeek(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->c()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setTime(J)V

    .line 317
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    move p2, v1

    move v3, v2

    .line 324
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5

    .line 325
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;

    .line 326
    iget-object v5, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/av;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    .line 329
    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 331
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setDayOfWeek(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bs;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setTime(J)V

    .line 333
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 337
    :cond_5
    iget-object p1, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 338
    iget-object p1, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 339
    iget-object p1, p0, Lbcw$c$3;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;

    invoke-virtual {p0, p1, p2}, Lbcw$c$3;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
