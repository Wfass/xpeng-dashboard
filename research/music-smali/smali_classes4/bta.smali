.class public Lbta;
.super Ljava/lang/Object;
.source "VipDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbta$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private g:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private h:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private i:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbta;->a:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbta;->b:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbta;->c:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbta;->d:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbta;->e:Ljava/util/List;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbta;->m:Landroid/os/Handler;

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lbta$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbta;-><init>()V

    return-void
.end method

.method public static a()Lbta;
    .locals 1

    .line 53
    sget-object v0, Lbta$a;->a:Lbta;

    return-object v0
.end method

.method static synthetic a(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 0

    .line 27
    iput-object p1, p0, Lbta;->f:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object p1
.end method

.method static synthetic a(Lbta;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbta;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lbta;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lbta;->j:Z

    return p1
.end method

.method static synthetic b(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 0

    .line 27
    iput-object p1, p0, Lbta;->g:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object p1
.end method

.method static synthetic b(Lbta;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbta;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lbta;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lbta;->k:Z

    return p1
.end method

.method static synthetic c(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 0

    .line 27
    iput-object p1, p0, Lbta;->h:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object p1
.end method

.method static synthetic c(Lbta;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbta;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lbta;Lcom/xiaopeng/musicradio/bean/VipUrlInfo;)Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 0

    .line 27
    iput-object p1, p0, Lbta;->i:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object p1
.end method

.method static synthetic d(Lbta;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbta;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lbta;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lbta;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lbta;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lbta;->j:Z

    return p0
.end method

.method static synthetic g(Lbta;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lbta;->k:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "VipDataModel"

    const-string v1, "userBuyUrl"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v0

    new-instance v1, Lbta$3;

    invoke-direct {v1, p0}, Lbta$3;-><init>(Lbta;)V

    invoke-virtual {v0, v1, p1}, Lbtc;->b(Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "VipDataModel"

    const-string v1, "loadSaleData"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v0

    new-instance v1, Lbta$1;

    invoke-direct {v1, p0}, Lbta$1;-><init>(Lbta;)V

    invoke-virtual {v0, v1}, Lbtc;->b(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "VipDataModel"

    const-string v1, "vipUrlList"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lbta;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v0

    new-instance v1, Lbta$2;

    invoke-direct {v1, p0}, Lbta$2;-><init>(Lbta;)V

    invoke-virtual {v0, v1}, Lbtc;->d(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lbta;->a:Ljava/util/List;

    return-object v0
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 183
    iget-object p1, p0, Lbta;->l:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Lbta$4;

    invoke-direct {p1, p0}, Lbta$4;-><init>(Lbta;)V

    iput-object p1, p0, Lbta;->l:Ljava/lang/Runnable;

    .line 201
    :cond_0
    iget-object p1, p0, Lbta;->m:Landroid/os/Handler;

    iget-object v0, p0, Lbta;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object p1, p0, Lbta;->m:Landroid/os/Handler;

    iget-object v0, p0, Lbta;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lbta;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lbta;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lbta;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lbta;->e:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 166
    iget-object v0, p0, Lbta;->f:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public j()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 170
    iget-object v0, p0, Lbta;->g:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public k()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 174
    iget-object v0, p0, Lbta;->h:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method

.method public l()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Lbta;->i:Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    return-object v0
.end method
