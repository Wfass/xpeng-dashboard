.class public abstract Lcom/xiaopeng/musicradio/model/music/b;
.super Ljava/lang/Object;
.source "AbsPlayDataList.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/model/music/k;

.field protected b:Lcom/xiaopeng/musicradio/model/music/n;

.field private c:Lcom/xiaopeng/musicradio/model/music/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->b()V

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->j()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->k()V

    :goto_0
    return-void
.end method

.method private n()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/model/music/n;

    return v0
.end method

.method private o()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/model/music/k;

    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()V
.end method

.method protected abstract c()I
.end method

.method protected abstract d()Lbef;
.end method

.method protected e()Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    return v0
.end method

.method protected f()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->d()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->l()Z

    move-result v0

    return v0
.end method

.method public g()Lcom/xiaopeng/musicradio/model/music/k;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->a:Lcom/xiaopeng/musicradio/model/music/k;

    return-object v0
.end method

.method public h()Lcom/xiaopeng/musicradio/model/music/n;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->b:Lcom/xiaopeng/musicradio/model/music/n;

    return-object v0
.end method

.method public i()Lcom/xiaopeng/musicradio/model/music/a;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AbsPlayDataList"

    const-string v1, "try2UserProvider: =============="

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->p()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->m()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$aa;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$aa;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->s()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->p()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->m()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$aa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$aa;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->s()V

    const-string v0, "AbsPlayDataList"

    const-string v1, "try2NormalProvider: ============="

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public l()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/b;->c:Lcom/xiaopeng/musicradio/model/music/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->m()V

    :cond_0
    return-void
.end method
