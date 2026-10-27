.class public Lazw;
.super Ljava/lang/Object;
.source "LocalLoveOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazw$a;
    }
.end annotation


# instance fields
.field private a:Lazv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v0

    iput-object v0, p0, Lazw;->a:Lazv;

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lazw;->b(I)V

    return-void
.end method

.method public static a()Lazw;
    .locals 1

    .line 21
    sget-object v0, Lazw$a;->a:Lazw;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lbax;->a()Lbax;

    move-result-object p1

    iput-object p1, p0, Lazw;->a:Lazv;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 33
    invoke-static {}, Lbar;->a()Lbar;

    move-result-object p1

    iput-object p1, p0, Lazw;->a:Lazv;

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object p1

    iput-object p1, p0, Lazw;->a:Lazv;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lazv;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 41
    invoke-static {}, Lbax;->a()Lbax;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 43
    invoke-static {}, Lbar;->a()Lbar;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object p1

    return-object p1
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lazw;->b(I)V

    return-void
.end method
