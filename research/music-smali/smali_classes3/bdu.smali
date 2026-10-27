.class public Lbdu;
.super Ljava/lang/Object;
.source "MusicAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdu$b;,
        Lbdu$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbdu$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdu;->a:Ljava/util/List;

    .line 62
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lbdu;->f()V

    .line 64
    iget-object v0, p0, Lbdu;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdu$b;

    iget v0, v0, Lbdu$b;->a:I

    const-string v1, "MUSIC_ACCOUNT_TYPE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbdu;->b:I

    .line 65
    new-instance v0, Lbdu$1;

    invoke-direct {v0, p0}, Lbdu$1;-><init>(Lbdu;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lbdu$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lbdu;-><init>()V

    return-void
.end method

.method static synthetic a(Lbdu;)I
    .locals 0

    .line 38
    iget p0, p0, Lbdu;->b:I

    return p0
.end method

.method static synthetic a(Lbdu;I)I
    .locals 0

    .line 38
    iput p1, p0, Lbdu;->c:I

    return p1
.end method

.method public static a()Lbdu;
    .locals 1

    .line 58
    sget-object v0, Lbdu$a;->a:Lbdu;

    return-object v0
.end method

.method private a(ILbkv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "switchMusicSource"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "musicSource"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "https://xmart.xiaopeng.com/media/common/vehicles/configMusicSource"

    .line 196
    invoke-static {p1}, Lbkn;->b(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Z

    .line 197
    invoke-virtual {p1, v0, v2}, Lcom/lzy/okgo/request/PostRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->DEFAULT:Lcom/lzy/okgo/cache/CacheMode;

    .line 198
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 199
    invoke-virtual {p1, v1}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v0, Lbkt;

    invoke-direct {v0, p2}, Lbkt;-><init>(Lbkv;)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method static synthetic b(Lbdu;I)I
    .locals 0

    .line 38
    iput p1, p0, Lbdu;->b:I

    return p1
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x3

    .line 105
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 106
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 107
    new-instance v4, Lbdu$b;

    invoke-direct {v4}, Lbdu$b;-><init>()V

    .line 108
    iput v3, v4, Lbdu$b;->a:I

    .line 109
    iget-object v3, p0, Lbdu;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAccount: mAccountType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 139
    iget p2, p0, Lbdu;->b:I

    if-ne p2, p1, :cond_0

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switchAccount sametype: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lbdu;->c()V

    return-void

    :cond_0
    const/4 p2, 0x2

    .line 144
    iput p2, p0, Lbdu;->c:I

    .line 145
    new-instance p2, Lbdu$2;

    invoke-direct {p2, p0, p1}, Lbdu$2;-><init>(Lbdu;I)V

    invoke-direct {p0, p1, p2}, Lbdu;->a(ILbkv;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbdu$b;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lbdu;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postAccountEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbdu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Lasj$b;

    invoke-direct {v0}, Lasj$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 182
    iget v0, p0, Lbdu;->b:I

    return v0
.end method

.method public e()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "switchMusicSource"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    const-string v0, "MusicAccountManager"

    const-string v1, "cancelSwitch: "

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKugouAuthSuccess(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicAccountManager"

    const-string v0, "onKugouAuthSuccess: ==== "

    .line 131
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget p1, p0, Lbdu;->b:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lbdu;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onMusicAuthSuccess(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicAccountManager"

    const-string v0, "onMusicAuthSuccess: ==== "

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget p1, p0, Lbdu;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lbdu;->a(IZ)V

    :cond_0
    return-void
.end method

.method public onNeteaseAuthSuccess(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicAccountManager"

    const-string v0, "onNeteaseAuthSuccess: ==== "

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget p1, p0, Lbdu;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lbdu;->a(IZ)V

    :cond_0
    return-void
.end method
