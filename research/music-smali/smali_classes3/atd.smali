.class public Latd;
.super Lcom/xiaopeng/musicradio/datalist/b;
.source "MusicDataDirtyModel.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/b;-><init>()V

    .line 20
    iput-boolean p1, p0, Latd;->d:Z

    .line 21
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 48
    iget-boolean v0, p0, Latd;->d:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    .line 50
    invoke-virtual {p0}, Latd;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lase$a;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/16 v0, 0x32

    .line 26
    invoke-virtual {p1, v0}, Lase$a;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lase$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    iget-boolean v0, p1, Lase$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Latd;->a(Z[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lasj$ag;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 38
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Latd;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Latd;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lbfh$f;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    invoke-virtual {p1}, Lbfh$f;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Latd;->a(Z[Ljava/lang/Object;)V

    return-void
.end method
