.class public Lbcf;
.super Layt;
.source "KugouFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcf$b;,
        Lbcf$a;
    }
.end annotation


# instance fields
.field private c:Layw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layw<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Layt;-><init>()V

    return-void
.end method

.method static synthetic a(Lbcf;I)I
    .locals 0

    .line 30
    iput p1, p0, Lbcf;->b:I

    return p1
.end method

.method static synthetic a(Lbcf;)Layw;
    .locals 0

    .line 30
    iget-object p0, p0, Lbcf;->c:Layw;

    return-object p0
.end method

.method static synthetic a(Lbcf;Layw;)Layw;
    .locals 0

    .line 30
    iput-object p1, p0, Lbcf;->c:Layw;

    return-object p1
.end method

.method static synthetic a(Lbcf;ILjava/util/List;I)Ljava/util/List;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lbcf;->a(ILjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lbcf;
    .locals 1

    .line 39
    sget-object v0, Lbcf$a;->a:Lbcf;

    return-object v0
.end method


# virtual methods
.method protected a(I)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-wide/32 v1, 0xea60

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    .line 79
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lbcf;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected c(Ljava/lang/String;)Layt$a;
    .locals 1

    .line 90
    new-instance v0, Lbcf$b;

    invoke-direct {v0, p0, p1}, Lbcf$b;-><init>(Lbcf;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c()Lben;
    .locals 1

    .line 47
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lbci;
    .locals 1

    .line 51
    invoke-static {}, Lbch;->a()Lbch;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 84
    invoke-super {p0}, Layt;->e()V

    .line 85
    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v0

    invoke-virtual {v0}, Lbce;->c()V

    return-void
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected i()Lbae;
    .locals 1

    .line 61
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    return-object v0
.end method

.method protected j()Layq;
    .locals 1

    .line 66
    invoke-static {}, Lbcg;->v()Lbcg;

    move-result-object v0

    return-object v0
.end method
