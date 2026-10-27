.class public Laxz;
.super Lass;
.source "FindMusicMediaSource.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;"
    }
.end annotation


# instance fields
.field private a:Lbbc;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lass;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {p0}, Laxz;->J()I

    move-result p1

    iput p1, p0, Laxz;->c:I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FindMusicMediaSource: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Laxz;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FindMusicMediaSource"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lass;-><init>(Ljava/lang/String;II)V

    .line 57
    invoke-virtual {p0}, Laxz;->J()I

    move-result p1

    iput p1, p0, Laxz;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v4, "timeAsc"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 50
    invoke-direct/range {v0 .. v6}, Lass;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    .line 51
    invoke-virtual {p0}, Laxz;->J()I

    move-result p1

    iput p1, p0, Laxz;->c:I

    return-void
.end method

.method private K()V
    .locals 1

    .line 133
    iget-object v0, p0, Laxz;->a:Lbbc;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lbbc;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public J()I
    .locals 2

    const-string v0, "FindMusicMediaSource"

    const-string v1, "getAccountType: ==="

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 0

    .line 128
    invoke-super {p0}, Lass;->a()V

    .line 129
    invoke-direct {p0}, Laxz;->K()V

    return-void
.end method

.method public a(ZIIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Laxz;->J()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 63
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    invoke-virtual {v0}, Lbcj;->b()Lbci;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Lbci;->a(Ljava/util/List;Z)V

    .line 65
    :cond_0
    invoke-super/range {p0 .. p5}, Lass;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method public a(ZIILjava/lang/String;Z)V
    .locals 9

    .line 70
    invoke-direct {p0}, Laxz;->K()V

    .line 72
    invoke-virtual {p0}, Laxz;->b()Ljava/lang/String;

    move-result-object p4

    .line 73
    invoke-static {p4}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReqList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FindMusicMediaSource"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, -0x1

    if-nez v1, :cond_0

    .line 76
    sget p2, Lbub$a;->music_no_content:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Laxz;->a(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_0
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_collect"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance p4, Lbbf;

    invoke-direct {p4, p0}, Lbbf;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 79
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 80
    :cond_1
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_tags"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    new-instance p4, Lbbr;

    invoke-direct {p4, p0}, Lbbr;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 83
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 84
    :cond_2
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_artist_radio"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance p3, Lbbe;

    invoke-direct {p3, p0}, Lbbe;-><init>(Laxz;)V

    iput-object p3, p0, Laxz;->a:Lbbc;

    .line 86
    iget-object v0, p0, Laxz;->a:Lbbc;

    iget p3, p0, Laxz;->c:I

    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/ay;->a(I)I

    move-result v4

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 87
    :cond_3
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_rank_music"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    new-instance p4, Lbbp;

    invoke-direct {p4, p0}, Lbbp;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 89
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 90
    :cond_4
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_recommend_music"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    new-instance p4, Lbbq;

    invoke-direct {p4, p0}, Lbbq;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 92
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 93
    :cond_5
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_singer_single_music"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    new-instance p4, Lbbd;

    invoke-direct {p4, p0}, Lbbd;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 95
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 96
    :cond_6
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_phone_music"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    new-instance p4, Lbbn;

    invoke-direct {p4, p0}, Lbbn;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 99
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 100
    :cond_7
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_collect_music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    new-instance p4, Lbbg;

    invoke-direct {p4, p0}, Lbbg;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 102
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto/16 :goto_0

    .line 103
    :cond_8
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_new_song"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    new-instance p3, Lbbl;

    invoke-direct {p3, p0}, Lbbl;-><init>(Laxz;)V

    iput-object p3, p0, Laxz;->a:Lbbc;

    .line 105
    iget-object v0, p0, Laxz;->a:Lbbc;

    const/16 v4, 0x1e

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto :goto_0

    .line 106
    :cond_9
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_zone_song"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    new-instance p4, Lbbt;

    invoke-direct {p4, p0}, Lbbt;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 108
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto :goto_0

    .line 109
    :cond_a
    iget-object v0, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->prefix:Ljava/lang/String;

    const-string v2, "listsign_net_replay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 110
    new-instance p4, Lbbs;

    invoke-direct {p4, p0}, Lbbs;-><init>(Laxz;)V

    iput-object p4, p0, Laxz;->a:Lbbc;

    .line 111
    iget-object v0, p0, Laxz;->a:Lbbc;

    invoke-virtual {p0}, Laxz;->i()I

    move-result v5

    invoke-virtual {p0}, Laxz;->j()I

    move-result v6

    iget v8, p0, Laxz;->c:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lbbc;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V

    goto :goto_0

    .line 113
    :cond_b
    sget p2, Lbub$a;->music_loading_fail:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Laxz;->a(ZILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 123
    iput p1, p0, Laxz;->c:I

    return-void
.end method
