.class public Lbij;
.super Ljava/lang/Object;
.source "MsPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbij$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbij;
    .locals 1

    .line 29
    sget-object v0, Lbij$a;->a:Lbij;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    .line 104
    new-instance v0, Lbij$1;

    const/16 v1, 0x32

    invoke-direct {v0, p0, p1, v1, p2}, Lbij$1;-><init>(Lbij;Ljava/lang/String;II)V

    .line 120
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    return-void
.end method

.method private b(Ljava/lang/String;IIZLjava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;II)V"
        }
    .end annotation

    .line 238
    new-instance v7, Lbij$3;

    const/16 v4, 0x32

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p7

    move v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lbij$3;-><init>(Lbij;Ljava/lang/String;IIIZ)V

    if-ltz p2, :cond_0

    .line 255
    invoke-virtual {v7, p2}, Laxz;->d(I)V

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "playMediaSource: quality : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "MsPlayOpt"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_1

    .line 259
    invoke-virtual {v7, p3}, Laxz;->c(I)V

    :cond_1
    if-eqz p5, :cond_2

    .line 261
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, p1}, Laxz;->a(Ljava/util/List;)V

    .line 264
    :cond_2
    invoke-virtual {v7, p6}, Laxz;->a(I)V

    .line 265
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lbij;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lbij;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;IIZLjava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;II)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_0

    if-ltz p6, :cond_0

    .line 217
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge p6, v2, :cond_0

    .line 218
    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 222
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_5

    .line 227
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p1

    if-ne p1, v4, :cond_3

    goto :goto_3

    .line 230
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_4

    .line 228
    :cond_4
    :goto_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_4

    .line 233
    :cond_5
    invoke-direct/range {p0 .. p7}, Lbij;->b(Ljava/lang/String;IIZLjava/util/List;II)V

    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_4

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_4

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    .line 52
    invoke-static {}, Lbrw;->c()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, p1, p3}, Lbij;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, p1, p3}, Lbij;->b(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    .line 188
    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    :goto_1
    if-eqz v2, :cond_4

    .line 194
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 195
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_2

    .line 197
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_2

    .line 203
    :cond_5
    new-instance p4, Lbij$2;

    const/4 v3, 0x0

    const/16 v4, 0x32

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lbij$2;-><init>(Lbij;Ljava/lang/String;IILjava/util/List;I)V

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p4, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    :cond_6
    :goto_2
    return-void
.end method
