.class public Lbdj;
.super Ljava/lang/Object;
.source "ReplayUpMgr.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lbdi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbdj;->a:Landroid/util/SparseArray;

    .line 19
    invoke-direct {p0}, Lbdj;->a()V

    return-void
.end method

.method private a(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    return p1
.end method

.method private a()V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lbdi;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lbdj;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lbdi;->b()I

    move-result v1

    invoke-virtual {p1}, Lbdi;->c()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lbdj;->a(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onIgStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lbdj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lbdj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdi;

    .line 56
    invoke-virtual {v0}, Lbdi;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 36
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->d()Laqt;

    move-result-object p1

    .line 37
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-interface {p1}, Laqt;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lbdj;->a:Landroid/util/SparseArray;

    invoke-interface {p1}, Laqt;->j()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lbdj;->a(II)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbdi;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lbdi;->a(Z)V

    return-void
.end method
