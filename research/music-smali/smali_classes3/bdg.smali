.class public Lbdg;
.super Ljava/lang/Object;
.source "ReplayDownMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdg$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lbdf;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbdd;

.field private c:Lbdf;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbdg;->a:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Lbdg$1;

    invoke-direct {v0, p0}, Lbdg$1;-><init>(Lbdg;)V

    iput-object v0, p0, Lbdg;->d:Ljava/lang/Runnable;

    .line 36
    invoke-direct {p0}, Lbdg;->c()V

    return-void
.end method

.method private a(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    return p1
.end method

.method public static a()Lbdg;
    .locals 1

    .line 26
    sget-object v0, Lbdg$a;->a:Lbdg;

    return-object v0
.end method

.method static synthetic a(Lbdg;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lbdg;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lbdg;->e()V

    .line 131
    iget-object v0, p0, Lbdg;->c:Lbdf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbdf;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, p1}, Lbdf;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lbdg;->b()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    iput-object v0, p0, Lbdg;->b:Lbdd;

    .line 42
    iget-object v0, p0, Lbdg;->b:Lbdd;

    invoke-virtual {p0, v0}, Lbdg;->a(Lbdf;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 92
    invoke-direct {p0}, Lbdg;->e()V

    .line 93
    iget-object v0, p0, Lbdg;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 97
    iget-object v0, p0, Lbdg;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/a;->a()Lcom/xiaopeng/musicradio/model/dui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/a;->b()V

    const/4 v0, 0x0

    .line 110
    :goto_0
    iget-object v1, p0, Lbdg;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v1, p0, Lbdg;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdf;

    invoke-virtual {v1}, Lbdf;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbdf;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lbdg;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lbdf;->a()I

    move-result v1

    invoke-virtual {p1}, Lbdf;->d()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lbdg;->a(II)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 7

    .line 55
    invoke-direct {p0}, Lbdg;->f()V

    .line 56
    invoke-direct {p0}, Lbdg;->d()V

    .line 58
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 60
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    invoke-interface {v1}, Laqt;->j()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 63
    :goto_0
    iget-object v3, p0, Lbdg;->a:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lbdg;->a(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdf;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lbdg;->b:Lbdd;

    .line 67
    :cond_1
    iput-object v0, p0, Lbdg;->c:Lbdf;

    .line 69
    iget-object v0, p0, Lbdg;->a:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lbdg;->a(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdf;

    .line 70
    iget-object v4, p0, Lbdg;->a:Landroid/util/SparseArray;

    const/4 v5, 0x4

    invoke-direct {p0, v2, v5}, Lbdg;->a(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbdf;

    .line 72
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v6

    invoke-virtual {v6}, Laqr;->b()I

    move-result v6

    if-nez v6, :cond_4

    if-ne v1, v3, :cond_2

    .line 74
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, v4}, Lbdf;->a(Lbdf;)V

    .line 75
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, v2}, Lbdf;->a(Z)V

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    .line 77
    iget-object v1, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v1, v0}, Lbdf;->a(Lbdf;)V

    .line 78
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, v2}, Lbdf;->a(Z)V

    goto :goto_1

    .line 80
    :cond_3
    iget-object v1, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v1, v0}, Lbdf;->a(Lbdf;)V

    .line 81
    invoke-virtual {v0, v4}, Lbdf;->a(Lbdf;)V

    .line 82
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, v2}, Lbdf;->a(Z)V

    goto :goto_1

    .line 85
    :cond_4
    iget-object v1, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v1, v0}, Lbdf;->a(Lbdf;)V

    .line 86
    invoke-virtual {v0, v4}, Lbdf;->a(Lbdf;)V

    .line 87
    iget-object v0, p0, Lbdg;->c:Lbdf;

    invoke-virtual {v0, v2}, Lbdf;->a(Z)V

    :goto_1
    return-void
.end method

.method public onIgStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 125
    invoke-direct {p0, p1}, Lbdg;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPlayStateChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0, v1}, Lbdg;->a(Z)V

    :cond_1
    return-void
.end method
