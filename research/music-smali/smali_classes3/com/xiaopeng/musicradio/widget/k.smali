.class public Lcom/xiaopeng/musicradio/widget/k;
.super Ljava/lang/Object;
.source "ScreenState.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 16
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->b:Z

    .line 18
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/k;->c:Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 22
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->b:Z

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->c:Z

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->b:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->c:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/k;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
