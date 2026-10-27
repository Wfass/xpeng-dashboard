.class public Lazz;
.super Ljava/lang/Object;
.source "MusicAlbumOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazz$a;
    }
.end annotation


# instance fields
.field private a:Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lazx;->a()Lazx;

    move-result-object v0

    iput-object v0, p0, Lazz;->a:Lazy;

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lazz;->b(I)V

    return-void
.end method

.method public static a()Lazz;
    .locals 1

    .line 21
    sget-object v0, Lazz$a;->a:Lazz;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lbay;->a()Lbay;

    move-result-object p1

    iput-object p1, p0, Lazz;->a:Lazy;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 33
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object p1

    iput-object p1, p0, Lazz;->a:Lazy;

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lazx;->a()Lazx;

    move-result-object p1

    iput-object p1, p0, Lazz;->a:Lazy;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lazy;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45
    invoke-static {}, Lbay;->a()Lbay;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 47
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-static {}, Lazx;->a()Lazx;

    move-result-object p1

    return-object p1
.end method

.method public b()Lazy;
    .locals 1

    .line 40
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lazz;->a(I)Lazy;

    move-result-object v0

    return-object v0
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

    invoke-direct {p0, p1}, Lazz;->b(I)V

    return-void
.end method
