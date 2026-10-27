.class public Laxj;
.super Lcom/xiaopeng/musicradio/datalist/b;
.source "MobileDataDirtyModel.java"


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/b;-><init>()V

    .line 19
    iput-boolean p1, p0, Laxj;->d:Z

    .line 20
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Laxj;->d:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    .line 45
    invoke-virtual {p0}, Laxj;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

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

    invoke-virtual {p0, v0, v1}, Laxj;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$g;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 33
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Laxj;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lbfh$h;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataDirtyModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lbfh$h;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Laxj;->a(Z[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
