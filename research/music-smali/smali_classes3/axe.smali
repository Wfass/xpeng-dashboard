.class public Laxe;
.super Lcom/xiaopeng/musicradio/datalist/b;
.source "BlueDataDirtyModel.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/b;-><init>()V

    .line 20
    iput-boolean p1, p0, Laxe;->d:Z

    .line 21
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 45
    iget-boolean v0, p0, Laxe;->d:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    .line 47
    invoke-virtual {p0}, Laxe;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lase$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/16 v0, 0x14

    .line 26
    invoke-virtual {p1, v0}, Lase$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Laxe;->a(Z[Ljava/lang/Object;)V

    :cond_0
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

    invoke-virtual {p0, v0, v1}, Laxe;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lbfh$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    invoke-virtual {p1}, Lbfh$e;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Laxe;->a(Z[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
