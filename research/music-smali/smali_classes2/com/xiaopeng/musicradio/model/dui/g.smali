.class public Lcom/xiaopeng/musicradio/model/dui/g;
.super Lbwb;
.source "DuiMusicModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/speech/protocol/node/music/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/dui/g$a;,
        Lcom/xiaopeng/musicradio/model/dui/g$b;
    }
.end annotation


# instance fields
.field private c:Lio/reactivex/disposables/CompositeDisposable;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/model/dui/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lbwb;-><init>()V

    .line 44
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->c:Lio/reactivex/disposables/CompositeDisposable;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const-string v0, "DuiMusicModel init"

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    .line 56
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    return-void
.end method

.method private C()V
    .locals 1

    .line 158
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$20;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$20;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private D()V
    .locals 1

    .line 259
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$25;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$25;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/dui/g;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/musicradio/model/dui/g$b;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicSpeedSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$13;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$13;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;F)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->b(I)V

    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/model/dui/g$a;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
    .locals 2

    .line 403
    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->getType()I

    move-result p1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayCollect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->c()V

    goto :goto_0

    .line 418
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->c()V

    goto :goto_0

    .line 415
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->c()V

    goto :goto_0

    .line 407
    :cond_3
    new-instance p1, Lcom/xiaopeng/musicradio/model/dui/g$4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/dui/g$4;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    const-string v0, "onPlayCollect"

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/dui/j;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPlayMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "single"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const-string v0, "random"

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 233
    :goto_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 235
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$23;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$23;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    .line 242
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$24;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$24;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postMainThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 72
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlay accountType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiMusicModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/g$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/dui/g$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a(I)V

    return-void
.end method

.method public b(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
    .locals 1

    .line 437
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$5;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->l()Z

    move-result v0

    .line 326
    invoke-static {p1, v0}, Lbwc;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 118
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$12;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$12;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicForward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$7;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioBookPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onPause"

    .line 130
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->C()V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicBackward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$8;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6

    const-string v0, "version"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicListPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuiMusicModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 352
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v3, "V2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    :try_start_1
    const-string v3, "complexSearchRespV2"

    .line 356
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "complexSearchRespV3"

    .line 357
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "complexSearchRespV4"

    .line 358
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v1

    .line 362
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->c(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V

    goto :goto_3

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/g;->c:Lio/reactivex/disposables/CompositeDisposable;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V

    :goto_3
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onResume"

    .line 136
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$19;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$19;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicSettime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$9;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$9;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTwelveNovelPlay() called with: musicBean = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 375
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onStop"

    .line 153
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->C()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 638
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$18;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/g$18;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onPrev"

    .line 177
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$21;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$21;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onNext"

    .line 195
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$22;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$22;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onControlCollect === "

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->D()V

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onDelCollect === "

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$2;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onPlayBluetooth"

    .line 298
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$3;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 330
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onAudioBookSubscribe === "

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g;->D()V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->g()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 464
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$6;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onMusicSpeedUp: "

    .line 541
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$10;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public u()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "onMusicSpeedDown: "

    .line 556
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$11;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()V
    .locals 1

    .line 590
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$14;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$14;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 1

    .line 605
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$15;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$15;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 616
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$16;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$16;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 628
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$17;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$17;-><init>(Lcom/xiaopeng/musicradio/model/dui/g;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
