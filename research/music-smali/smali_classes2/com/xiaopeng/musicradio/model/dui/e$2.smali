.class Lcom/xiaopeng/musicradio/model/dui/e$2;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;ILio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;I)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->c:Lcom/xiaopeng/musicradio/model/dui/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    iput p3, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 6

    .line 618
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u5faa\u73af"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 622
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    .line 627
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getSongList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 628
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$2$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$2;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getAlbumList()Ljava/util/List;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    new-instance v4, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v5, "listsign_singer_single_music"

    .line 665
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v0, "singer_music"

    .line 668
    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->b:I

    invoke-virtual {v3, v0, v4}, Lbij;->a(Ljava/lang/String;I)V

    .line 671
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 674
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-static {v0, v2, v3, p1}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getCollectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getCollectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getCollectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getCollectList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    new-instance v4, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v5, "listsign_recommend_music"

    .line 682
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v4, v3}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v0, "new_music_radio"

    .line 685
    invoke-virtual {v4, v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->b:I

    invoke-virtual {v3, v0, v4}, Lbij;->a(Ljava/lang/String;I)V

    .line 688
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 691
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-static {v0, v2, v3, p1}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 694
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getRadioList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getRadioList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 695
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbjr;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbjr;

    if-eqz p1, :cond_6

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;->getRadioList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Lbjr;->play(Ljava/lang/Object;Z)V

    .line 700
    :cond_6
    :goto_2
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 615
    check-cast p1, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$2;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    return-void
.end method
