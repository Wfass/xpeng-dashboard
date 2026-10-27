.class public Lasx;
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
    iput-boolean p1, p0, Lasx;->d:Z

    .line 20
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lasx;->d:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    .line 50
    invoke-virtual {p0}, Lasx;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$ag;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lasx;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 43
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lasx;->a(ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lasx;->a(Z[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lbfh$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlbumDataDirtyModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lbfh$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lasx;->a(Z[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
