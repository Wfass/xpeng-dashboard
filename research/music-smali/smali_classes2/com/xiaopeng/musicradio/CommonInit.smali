.class public Lcom/xiaopeng/musicradio/CommonInit;
.super Lbex;
.source "CommonInit.java"


# static fields
.field public static final SP_IS_INIT_BOOLEAN:Ljava/lang/String; = "SP_IS_INIT_BOOLEAN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 50
    invoke-static {}, Lbdx;->a()Lbdx;

    .line 51
    invoke-static {}, Lbdm;->a()Lbdm;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/CommonInit;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/CommonInit;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/CommonInit$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/CommonInit$1;-><init>(Lcom/xiaopeng/musicradio/CommonInit;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/c;->a()Lcom/xiaopeng/musicradio/model/car/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/c;->b()V

    const-string v0, "SP_IS_INIT_BOOLEAN"

    const/4 v1, 0x1

    .line 87
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 88
    invoke-static {}, Lbdu;->a()Lbdu;

    .line 89
    invoke-static {}, Lbdt;->b()Lbdt;

    .line 90
    invoke-static {}, Lbek;->a()Lbek;

    .line 91
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->b()V

    return-void
.end method

.method public initNow()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/bean/player/PlayerReport;->initReport()V

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    .line 45
    invoke-static {}, Laxy;->a()Laxy;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/CommonInit;->b()V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 0

    return-void
.end method
