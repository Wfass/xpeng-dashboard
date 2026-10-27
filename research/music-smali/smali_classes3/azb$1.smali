.class Lazb$1;
.super Lbkv;
.source "NetRadioFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazb;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lazb;


# direct methods
.method constructor <init>(Lazb;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lazb$1;->b:Lazb;

    iput p2, p0, Lazb$1;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetRadioFetchModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lazb$1;->b:Lazb;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lazb;->b(Lazb;Z)Z

    .line 116
    iget-object p1, p0, Lazb$1;->b:Lazb;

    invoke-static {p1, p2}, Lazb;->a(Lazb;Z)Z

    .line 117
    new-instance p1, Lbju$b;

    invoke-direct {p1, p2}, Lbju$b;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;)V
    .locals 10

    const-string v0, "NetRadioFetchModel"

    const-string v1, "downnetRadioLove: "

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;->getData()Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$PageBean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$PageBean;->getTotalPage()I

    move-result p1

    const/4 v1, 0x0

    move v3, v1

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;

    .line 87
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->getRadioDto()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lazb$1;->b:Lazb;

    invoke-static {v6}, Lazb;->a(Lazb;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->getRadioDto()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean$DataBean$ListBean;->getRadioDto()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v4

    .line 89
    invoke-static {}, Lazb;->e()J

    move-result-wide v6

    int-to-long v8, v3

    sub-long/2addr v6, v8

    iget v8, p0, Lazb$1;->a:I

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0x32

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setCacheTime(J)V

    .line 90
    iget-object v5, p0, Lazb$1;->b:Lazb;

    invoke-static {v5}, Lazb;->a(Lazb;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 93
    :cond_2
    iget v2, p0, Lazb$1;->a:I

    if-lt v2, p1, :cond_5

    const-string p1, "downnetRadioLove: success"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, p0, Lazb$1;->b:Lazb;

    invoke-static {p1, v5}, Lazb;->a(Lazb;Z)Z

    .line 96
    iget-object p1, p0, Lazb$1;->b:Lazb;

    invoke-static {p1, v1}, Lazb;->b(Lazb;Z)Z

    const-string p1, "SP_HAS_UPDATE_LOVE_NETRADIO"

    .line 97
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectRadioList: hasUpdateLoveRadio---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 100
    iget-object v0, p0, Lazb$1;->b:Lazb;

    invoke-static {v0}, Lazb;->a(Lazb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 101
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/av;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_4
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbda;->a(Ljava/util/List;)V

    goto :goto_3

    .line 107
    :cond_5
    iget-object p1, p0, Lazb$1;->b:Lazb;

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Lazb;->a(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;

    invoke-virtual {p0, p1}, Lazb$1;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetCollectListBean;)V

    return-void
.end method
