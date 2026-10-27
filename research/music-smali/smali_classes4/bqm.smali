.class public abstract Lbqm;
.super Ljava/lang/Object;
.source "BaseAudioModel.java"

# interfaces
.implements Lbqn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 110
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1}, Laqt;->a(I)V

    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m()I
    .locals 2

    .line 18
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Laqt;->getPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 2

    .line 38
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Laqt;->getStartPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 2

    .line 48
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Laqt;->play()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 56
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Laqt;->pause()V

    :cond_0
    return-void
.end method

.method public q()I
    .locals 2

    .line 90
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public r()I
    .locals 2

    .line 100
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Laqt;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public s()I
    .locals 2

    .line 145
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbqm;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Laqt;->j()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
