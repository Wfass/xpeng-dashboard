.class Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;
.super Lbkv;
.source "KugooSingerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->g:Z

    .line 98
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string p2, "singer"

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;)V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_8

    .line 35
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_2

    if-ge v4, v6, :cond_1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string v4, ""

    invoke-interface {v0, v4}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;Z)Z

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->loadEnd()V

    goto :goto_2

    .line 53
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    if-ge v4, v6, :cond_4

    .line 55
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->i:Ljava/util/List;

    if-nez v4, :cond_3

    .line 56
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iput-object v0, v4, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->i:Ljava/util/List;

    .line 57
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v4, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setHotData(Ljava/util/List;)V

    goto :goto_1

    .line 59
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object v5, v4, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->i:Ljava/util/List;

    invoke-virtual {v4, v5, v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response: isSameData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KugooSingerPresenter"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    .line 62
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v4, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setHotData(Ljava/util/List;)V

    goto :goto_1

    .line 66
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {v4, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->addHotData(Ljava/util/List;)V

    .line 68
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iput-boolean v3, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->g:Z

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v4

    iput v4, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->c:I

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_9

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->c:I

    if-le p1, v0, :cond_9

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;Z)Z

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->loadEnd()V

    goto :goto_3

    .line 83
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iput v3, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->c:I

    goto :goto_3

    .line 86
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iput-boolean v1, p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->g:Z

    .line 87
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string v0, "singer"

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    .line 92
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->c:Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->j()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugooSingerResultBean;)V

    return-void
.end method
