.class Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;
.super Ljava/lang/Object;
.source "BaseSearchResultListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(IIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Ljava/lang/String;IIZ)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->b:I

    iput p4, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    iput-boolean p5, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->d()I

    move-result v0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v4, v0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPageData searchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _searchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSearchPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->e:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->b:I

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->d()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;->c:I

    const/16 v6, 0x32

    new-instance v7, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;

    invoke-direct {v7, p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2$1;-><init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$2;)V

    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(ILjava/lang/String;IIILbkv;)V

    return-void
.end method
