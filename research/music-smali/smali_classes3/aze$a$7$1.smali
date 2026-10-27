.class Laze$a$7$1;
.super Lbkv;
.source "ProgramFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a$7;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/FlowableEmitter;

.field final synthetic b:Laze$a$7;


# direct methods
.method constructor <init>(Laze$a$7;Lio/reactivex/FlowableEmitter;)V
    .locals 0

    .line 339
    iput-object p1, p0, Laze$a$7$1;->b:Laze$a$7;

    iput-object p2, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 352
    iget-object v0, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    new-instance v1, Laze$c;

    invoke-direct {v1, p1, p2}, Laze$c;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lio/reactivex/FlowableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 339
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;

    invoke-virtual {p0, p1}, Laze$a$7$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)V
    .locals 3

    .line 342
    iget-object v0, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    invoke-interface {v0}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    new-instance v1, Lfe;

    iget-object v2, p0, Laze$a$7$1;->b:Laze$a$7;

    iget v2, v2, Laze$a$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfe;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    .line 345
    :cond_0
    iget-object p1, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 346
    iget-object p1, p0, Laze$a$7$1;->a:Lio/reactivex/FlowableEmitter;

    invoke-interface {p1}, Lio/reactivex/FlowableEmitter;->onComplete()V

    :cond_1
    return-void
.end method
