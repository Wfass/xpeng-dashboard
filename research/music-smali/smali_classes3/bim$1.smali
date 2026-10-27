.class Lbim$1;
.super Lbkv;
.source "MusicRequestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbim;->a(ILbim$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbim$b;

.field final synthetic b:I

.field final synthetic c:Lbim;


# direct methods
.method constructor <init>(Lbim;Lbim$b;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lbim$1;->c:Lbim;

    iput-object p2, p0, Lbim$1;->a:Lbim$b;

    iput p3, p0, Lbim$1;->b:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const-string p1, "MusicRequestModel"

    const-string p2, "getRadioData error"

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lbim$1;->a:Lbim$b;

    invoke-interface {p1}, Lbim$b;->a()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)V
    .locals 5

    const-string v0, "MusicRequestModel"

    const-string v1, "getRadioData getresult"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 129
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    .line 135
    new-instance v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v4, "listsign_tags"

    .line 136
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 145
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    iget p1, p0, Lbim$1;->b:I

    if-lez p1, :cond_4

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioData datas.size():"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v2, p0, Lbim$1;->b:I

    if-lt p1, v2, :cond_3

    .line 150
    iget-object p1, p0, Lbim$1;->a:Lbim$b;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lbim$b;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    const-string p1, "getRadioData error"

    .line 152
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object p1, p0, Lbim$1;->a:Lbim$b;

    invoke-interface {p1}, Lbim$b;->a()V

    goto :goto_3

    .line 156
    :cond_4
    iget-object p1, p0, Lbim$1;->a:Lbim$b;

    invoke-interface {p1, v1}, Lbim$b;->a(Ljava/util/List;)V

    goto :goto_3

    .line 130
    :cond_5
    :goto_2
    iget-object p1, p0, Lbim$1;->a:Lbim$b;

    invoke-interface {p1}, Lbim$b;->a()V

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    invoke-virtual {p0, p1}, Lbim$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)V

    return-void
.end method
