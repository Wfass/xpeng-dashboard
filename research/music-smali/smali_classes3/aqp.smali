.class public Laqp;
.super Ljava/lang/Object;
.source "AudioDefaultStatus.java"

# interfaces
.implements Laqs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 13
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Laqt;->play()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->d()Laqq$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->d()Laqq$b;

    move-result-object v0

    invoke-interface {v0}, Laqq$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 26
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Laqt;->pause()V

    .line 30
    :cond_0
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lask;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 35
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Laqt;->b()V

    .line 38
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->e()Laqq$a;

    move-result-object v0

    invoke-interface {v0}, Laqq$a;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 44
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Laqt;->a()V

    .line 47
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->e()Laqq$a;

    move-result-object v0

    invoke-interface {v0}, Laqq$a;->a()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
