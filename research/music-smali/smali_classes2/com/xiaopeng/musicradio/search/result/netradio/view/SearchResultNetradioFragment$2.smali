.class Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;
.super Ljava/lang/Object;
.source "SearchResultNetradioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->updateHighlightWordsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Lbnq;

    move-result-object v1

    invoke-virtual {v1}, Lbnq;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 90
    sget v3, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 91
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v7

    invoke-virtual {v7}, Lbnz;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 90
    invoke-static {v3, v4, v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(ILjava/lang/String;[Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setHighlightName(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;-><init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
