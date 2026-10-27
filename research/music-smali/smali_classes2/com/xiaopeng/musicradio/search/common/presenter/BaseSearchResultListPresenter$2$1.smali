.class Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;
.super Lbkv;
.source "BaseSearchResultListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    invoke-interface {v0, p2, v2}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoadingFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadPageData more fail, at page:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalPage:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseSearchPresenter"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-boolean p2, p2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->d:Z

    if-nez p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/search/result/view/b;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v3, v3, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    invoke-interface {p2, v0, v2, v3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoading(ZII)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v3, v3, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    invoke-static {p2, v0, v2, v3}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;ILjava/lang/String;I)V

    :cond_2
    :goto_0
    const p2, 0x4c9965

    if-ne p1, p2, :cond_3

    .line 171
    new-instance p1, Lasi$a;

    invoke-direct {p1}, Lasi$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbdm;->a(Lbdm$b;)V

    goto :goto_1

    .line 174
    :cond_3
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-boolean v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->d:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/view/b;->showLoading(ZII)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/result/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/search/result/view/b;->updateData(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;II)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget v1, v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;ILjava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->c:I

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;->getData()Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result p1

    iput p1, v0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->b:I

    .line 151
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;->a(Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean;)V

    return-void
.end method
