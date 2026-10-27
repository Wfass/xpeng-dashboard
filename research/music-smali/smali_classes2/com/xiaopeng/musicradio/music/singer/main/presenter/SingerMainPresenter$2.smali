.class Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;
.super Lbkv;
.source "SingerMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string p2, "singer"

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    .line 116
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iput-object p1, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->i:Ljava/util/List;

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setHotData(Ljava/util/List;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->i:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: isSameData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingerMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setHotData(Ljava/util/List;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->g:Z

    .line 130
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string v0, "singer"

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    .line 135
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->j()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 110
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)V

    return-void
.end method
