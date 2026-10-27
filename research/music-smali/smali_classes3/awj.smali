.class public Lawj;
.super Lcom/xiaopeng/musicradio/datalist/b;
.source "AlbumDataDirtyModel.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/b;-><init>()V

    .line 19
    iput-boolean p1, p0, Lawj;->d:Z

    .line 20
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lawj;->d:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    .line 47
    invoke-virtual {p0}, Lawj;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasc;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lawj;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lase$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lawj;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$ag;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 40
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lawj;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 35
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lawj;->a(Z[Ljava/lang/Object;)V

    return-void
.end method
