.class public Layc;
.super Ljava/lang/Object;
.source "MusicLrcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layc$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Layc$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Layc;-><init>()V

    return-void
.end method

.method public static a()Layc;
    .locals 1

    .line 34
    invoke-static {}, Layc$a;->a()Layc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->J()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, ""

    .line 49
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void

    .line 54
    :cond_1
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Layc$1;

    invoke-direct {v4, p0, p1}, Layc$1;-><init>(Layc;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lbev;->a(Ljava/lang/String;Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b()I
    .locals 3

    .line 91
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 97
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public onRequestLrc(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "MusicLrcModel"

    const-string v1, "onRequestLrc: ======="

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Layc;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method
