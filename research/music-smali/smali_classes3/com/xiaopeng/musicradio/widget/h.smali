.class public Lcom/xiaopeng/musicradio/widget/h;
.super Ljava/lang/Object;
.source "MusicXDialogPureHelper.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/musicradio/widget/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/widget/g;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/h;->a:Ljava/lang/ref/WeakReference;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/h;->b()V

    return-void
.end method

.method private b()V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onFromToEightEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$q;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/h;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/g;->a()V

    :cond_0
    return-void
.end method
