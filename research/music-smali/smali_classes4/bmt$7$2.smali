.class Lbmt$7$2;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lbmt$7;


# direct methods
.method constructor <init>(Lbmt$7;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0

    .line 2047
    iput-object p1, p0, Lbmt$7$2;->d:Lbmt$7;

    iput-object p2, p0, Lbmt$7$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbmt$7$2;->b:Ljava/util/List;

    iput-wide p4, p0, Lbmt$7$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 2050
    iget-object v0, p0, Lbmt$7$2;->a:Ljava/lang/String;

    const-string v1, "headspeech"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2051
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    .line 2052
    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 2053
    invoke-virtual {v0, v2}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    const/16 v1, 0xa

    .line 2054
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 2055
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 2056
    iget-object v1, p0, Lbmt$7$2;->d:Lbmt$7;

    iget-object v1, v1, Lbmt$7;->a:Lbmt;

    invoke-virtual {v1, v0}, Lbmt;->b(Lass;)V

    return-void

    .line 2059
    :cond_0
    iget-object v0, p0, Lbmt$7$2;->b:Ljava/util/List;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 2061
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 2065
    :cond_1
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    iget-wide v3, p0, Lbmt$7$2;->c:J

    invoke-virtual {v0, v3, v4}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_2

    .line 2068
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v3

    :goto_0
    cmp-long v3, v5, v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 2073
    :goto_1
    iget-object v4, p0, Lbmt$7$2;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, -0x1

    if-ge v3, v4, :cond_4

    .line 2074
    iget-object v4, p0, Lbmt$7$2;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 2075
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v7

    :goto_2
    if-eq v3, v7, :cond_6

    .line 2081
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;-><init>()V

    .line 2082
    iget-wide v4, p0, Lbmt$7$2;->c:J

    invoke-virtual {v1, v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setId(J)V

    if-eqz v0, :cond_5

    .line 2086
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 2087
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSort()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v4, ""

    const-string v0, "timeAsc"

    .line 2089
    :goto_3
    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setTitle(Ljava/lang/String;)V

    .line 2090
    new-instance v4, Lbms$a;

    invoke-direct {v4}, Lbms$a;-><init>()V

    iget-object v5, p0, Lbmt$7$2;->a:Ljava/lang/String;

    .line 2091
    invoke-virtual {v4, v5}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v4

    .line 2092
    invoke-virtual {v4, v0}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 2093
    invoke-virtual {v0, v1}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    iget-object v1, p0, Lbmt$7$2;->b:Ljava/util/List;

    .line 2094
    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object v0

    .line 2095
    invoke-virtual {v0, v3}, Lbms$a;->c(I)Lbms$a;

    move-result-object v0

    .line 2096
    invoke-virtual {v0, v2}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    .line 2097
    invoke-virtual {v0, v2}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v0

    .line 2098
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 2099
    iget-object v1, p0, Lbmt$7$2;->d:Lbmt$7;

    iget-object v1, v1, Lbmt$7;->a:Lbmt;

    invoke-virtual {v1, v0}, Lbmt;->b(Lass;)V

    .line 2100
    iget-object v0, p0, Lbmt$7$2;->d:Lbmt$7;

    iget-object v0, v0, Lbmt$7;->a:Lbmt;

    invoke-static {v0}, Lbmt;->j(Lbmt;)V

    return-void

    :cond_6
    const-string v0, "ProgramModel"

    const-string v2, "not find history, and play nothing!"

    .line 2105
    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2107
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
