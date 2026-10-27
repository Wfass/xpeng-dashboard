.class Lcom/xiaopeng/musicradio/program/model/dui/a$4;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a;->a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/util/Pair<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/model/dui/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a;Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->b:Lcom/xiaopeng/musicradio/program/model/dui/a;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;>;)V"
        }
    .end annotation

    .line 276
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 277
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 278
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    const-string v1, "source"

    const-string v2, "type"

    const-string v3, "speech"

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    goto/16 :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 303
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 304
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v4

    .line 307
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v6

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 309
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getQuery()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 310
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 311
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v8, ""

    .line 305
    invoke-static/range {v4 .. v11}, Lbry;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 317
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "reading"

    .line 318
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p1}, Lbrw;->d(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 280
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 281
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 282
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 287
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getQuery()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 288
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 289
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "headspeech"

    .line 283
    invoke-static/range {v4 .. v11}, Lbry;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_3
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    new-instance v4, Lbms$a;

    invoke-direct {v4}, Lbms$a;-><init>()V

    const-string v5, "headspeech"

    .line 293
    invoke-virtual {v4, v5}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v4

    const/16 v5, 0xa

    .line 294
    invoke-virtual {v4, v5}, Lbms$a;->b(I)Lbms$a;

    move-result-object v4

    .line 295
    invoke-virtual {v4, p1}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lbms$a;->a()Lbms;

    move-result-object p1

    .line 293
    invoke-virtual {v0, p1}, Lbmt;->a(Lass;)V

    .line 297
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "news"

    .line 298
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p1}, Lbrw;->d(Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/model/dui/a$4;->a(Landroid/util/Pair;)V

    return-void
.end method
