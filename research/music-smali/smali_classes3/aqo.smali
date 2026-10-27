.class public Laqo;
.super Ljava/lang/Object;
.source "ProgramAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqo$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Laqo;
    .locals 1

    .line 49
    sget-object v0, Laqo$a;->a:Laqo;

    return-object v0
.end method

.method private c()Z
    .locals 3

    .line 260
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MusicAisuggest"

    const-string v1, "try openRdAlbum!"

    .line 88
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Laqo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 94
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Laqo$1;

    invoke-direct {v1, p0}, Laqo$1;-><init>(Laqo;)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    .line 111
    invoke-static {p1}, Lbru;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 241
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    const-string v1, "headspeech"

    .line 242
    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    const/16 v1, 0xa

    .line 244
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 246
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmt;->a(Lass;)V

    .line 248
    new-instance v0, Laqo$4;

    invoke-direct {v0, p0}, Laqo$4;-><init>(Laqo;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Laqo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Laqo$2;

    invoke-direct {v1, p0, p1}, Laqo$2;-><init>(Laqo;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    .line 177
    invoke-static {p1}, Lbru;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Laqo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Laqo$3;

    invoke-direct {v1, p0, p1}, Laqo$3;-><init>(Laqo;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    .line 237
    invoke-static {p1}, Lbru;->e(Ljava/lang/String;)V

    return-void
.end method

.method public receiveAisuggest(Lart$a;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 59
    invoke-virtual {p1}, Lart$a;->a()Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result v0

    const-string v1, "MusicAisuggest"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getObject()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-nez v0, :cond_0

    const-string p1, "onReceiveSuggest rdBean == null"

    .line 63
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laqo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v2

    const-string v4, "play"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laqo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object v2

    const-string v4, "replay"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laqo;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD error, cmd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->getType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const-string p1, "received ai SGST_TYPE_HEADSPEECH"

    .line 77
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Laqo;->b()V

    :cond_5
    :goto_0
    return-void
.end method
