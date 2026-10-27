.class Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;
.super Ljava/lang/Object;
.source "SearchResultSingerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->updateHighlightWordsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment;)Lbnt;

    move-result-object v0

    invoke-virtual {v0}, Lbnt;->i()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    .line 155
    sget v2, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 156
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v6

    invoke-virtual {v6}, Lbnz;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 155
    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(ILjava/lang/String;[Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->setHighlightName(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2$1;-><init>(Lcom/xiaopeng/musicradio/search/result/singer/view/SearchResultSingerFragment$2;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
