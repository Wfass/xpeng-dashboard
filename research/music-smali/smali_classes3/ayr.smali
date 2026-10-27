.class public Layr;
.super Ljava/lang/Object;
.source "MusicCollectManagerOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layr$a;
    }
.end annotation


# instance fields
.field private a:Layq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Layq;->a()Layq;

    move-result-object v0

    iput-object v0, p0, Layr;->a:Layq;

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Layr;->b(I)V

    return-void
.end method

.method public static a()Layr;
    .locals 1

    .line 20
    sget-object v0, Layr$a;->a:Layr;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 32
    invoke-static {}, Lbcu;->v()Lbcu;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 34
    invoke-static {}, Lbcg;->v()Lbcg;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Layq;->a()Layq;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Layq;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 46
    invoke-static {}, Lbcu;->v()Lbcu;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 48
    invoke-static {}, Lbcg;->v()Lbcg;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Layq;->a()Layq;

    move-result-object p1

    iput-object p1, p0, Layr;->a:Layq;

    .line 52
    :goto_0
    iget-object p1, p0, Layr;->a:Layq;

    return-object p1
.end method

.method public b()Layq;
    .locals 1

    .line 41
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Layr;->a(I)Layq;

    move-result-object v0

    return-object v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Layr;->b(I)V

    return-void
.end method
