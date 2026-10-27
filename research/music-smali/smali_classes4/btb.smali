.class public Lbtb;
.super Ljava/lang/Object;
.source "VipDataModelV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->a:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->b:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->c:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->d:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->e:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->f:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->g:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->h:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->i:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbtb;->j:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbtb;->m:Landroid/os/Handler;

    .line 58
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lbtb$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lbtb;-><init>()V

    return-void
.end method

.method public static a()Lbtb;
    .locals 1

    .line 54
    sget-object v0, Lbtb$a;->a:Lbtb;

    return-object v0
.end method

.method static synthetic a(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lbtb;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lbtb;->k:Z

    return p1
.end method

.method static synthetic b(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lbtb;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lbtb;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lbtb;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lbtb;->k:Z

    return p0
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "VipDataModelV2"

    const-string v1, "loadSaleData"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v0

    new-instance v1, Lbtb$1;

    invoke-direct {v1, p0}, Lbtb$1;-><init>(Lbtb;)V

    invoke-virtual {v0, v1}, Lbtc;->c(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lbtb;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lbtb;->b:Ljava/util/List;

    return-object v0
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 134
    iget-object p1, p0, Lbtb;->l:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lbtb$2;

    invoke-direct {p1, p0}, Lbtb$2;-><init>(Lbtb;)V

    iput-object p1, p0, Lbtb;->l:Ljava/lang/Runnable;

    .line 149
    :cond_0
    iget-object p1, p0, Lbtb;->m:Landroid/os/Handler;

    iget-object v0, p0, Lbtb;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object p1, p0, Lbtb;->m:Landroid/os/Handler;

    iget-object v0, p0, Lbtb;->l:Ljava/lang/Runnable;

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
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lbtb;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lbtb;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lbtb;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lbtb;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lbtb;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lbtb;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lbtb;->i:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lbtb;->j:Ljava/util/List;

    return-object v0
.end method
