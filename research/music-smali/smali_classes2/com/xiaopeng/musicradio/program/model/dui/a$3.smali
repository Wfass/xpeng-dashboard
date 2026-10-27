.class Lcom/xiaopeng/musicradio/program/model/dui/a$3;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a;->a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/model/dui/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a;Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->b:Lcom/xiaopeng/musicradio/program/model/dui/a;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getMetaDataList()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$3$1;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a$3;)V

    .line 176
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/model/dui/a$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 178
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbmt;->a(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "?voice_search_type=2"

    .line 197
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&voice_list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 202
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 203
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 204
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 206
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v5

    .line 207
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v7

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 209
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getQuery()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 210
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    .line 211
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v9, ""

    .line 205
    invoke-static/range {v5 .. v12}, Lbry;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/search/fragment/home/search_result"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$3;->a:Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/musicradio/utils/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
