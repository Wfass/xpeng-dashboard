.class public Lcom/xiaopeng/musicradio/model/dui/h;
.super Lbwb;
.source "DuiMusicQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/query/music/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/dui/h$a;,
        Lcom/xiaopeng/musicradio/model/dui/h$b;
    }
.end annotation


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/model/dui/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lbwb;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/dui/h;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/musicradio/model/dui/h$b;->a:Lcom/xiaopeng/musicradio/model/dui/h;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/xiaopeng/musicradio/model/dui/h$a;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/r<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/lifecycle/s<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0, p1, p2}, Lbfe;->isHasHistoryCache(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/h$a;->d()Z

    move-result p1

    return p1

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/h$a;->d()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    const-string v0, "DuiMusicQueryModel"

    const-string v1, "getPlayInfo: ========="

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/dui/h;->h()Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz v1, :cond_4

    .line 63
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_2

    const/16 v1, 0x4e22

    .line 79
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setError(I)V

    goto/16 :goto_1

    .line 76
    :cond_0
    invoke-virtual {v0, v5}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->a(Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->a(Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v4, :cond_9

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_7

    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {v0, v5}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    goto :goto_0

    .line 90
    :cond_7
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    invoke-interface {v1}, Laqt;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 91
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    goto :goto_0

    .line 84
    :cond_8
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    invoke-interface {v1}, Laqt;->getPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    :cond_9
    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    :goto_0
    const/16 v1, 0x4e21

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setError(I)V

    .line 102
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCollectListEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicQueryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/h$a;->e()Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/h$a;->e()Z

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/h$a;->e()Z

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    const-string v0, "DuiMusicQueryModel"

    const-string v1, "getPlayTitle================"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const-string v0, "DuiMusicQueryModel"

    const-string v1, "getPlayArtist: ============= "

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public dealDuiNeteaseState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    .line 353
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->c:Z

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dealDuiNeteaseState isSwitching: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuiMusicQueryModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "DuiMusicQueryModel"

    const-string v1, "getPlayAlbum: ============ "

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    const/4 v2, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/h$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/h$a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()I
    .locals 4

    .line 172
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->c()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public g()I
    .locals 5

    .line 193
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->c()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    .line 195
    :cond_4
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 196
    invoke-interface {v0}, Laqt;->j()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public h()Z
    .locals 3

    .line 226
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const-string v1, "DuiMusicQueryModel"

    const-string v2, "call isPlaying"

    .line 227
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 297
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lbfe;->isBtConnect()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 3

    .line 305
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Laqt;->supportRandom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportRandomPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiMusicQueryModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public l()Z
    .locals 2

    .line 313
    invoke-static {}, Landroid/car/XpCarFeatures;->hasDolbyFeature()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m()Z
    .locals 2

    .line 319
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0}, Lbfe;->isHasPlayCache()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    .line 339
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    invoke-virtual {v0}, Lbel;->g()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 343
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    invoke-virtual {v0}, Lbej;->g()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 347
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountState isSwitching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/dui/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicQueryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/dui/h;->c:Z

    const-string v0, "switching"

    return-object v0

    .line 363
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "QQ"

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "NetEaseCloud"

    return-object v0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "KuGou"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public s()Z
    .locals 3

    .line 377
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKuGouAuthed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiMusicQueryModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public t()I
    .locals 2

    .line 390
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Lbfe;->getUsbState4XiaoP()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .locals 3

    .line 409
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblp;

    if-eqz v0, :cond_1

    .line 421
    invoke-interface {v0}, Lblp;->isCanCollected()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v2, Lbjs;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjs;

    if-eqz v0, :cond_3

    .line 428
    invoke-interface {v0}, Lbjs;->isCanCollected()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1

    .line 413
    :cond_4
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v2, Lbfe;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_5

    .line 415
    invoke-interface {v0}, Lbfe;->isCanCollected()Z

    move-result v1

    :cond_5
    return v1
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 3

    .line 441
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMusicAccountLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiMusicQueryModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method public x()Z
    .locals 4

    .line 448
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    const-string v1, "DuiMusicQueryModel"

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lbfe;->isQualityPageOpend()Z

    move-result v0

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isQualityPageOpend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "isQualityPageOpend:null"

    .line 454
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 2

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isXimalayaAccountLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicQueryModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    return v0
.end method
