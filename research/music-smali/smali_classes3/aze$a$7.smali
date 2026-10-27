.class Laze$a$7;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a;->a(I)Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Lfe<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Laze$a;


# direct methods
.method constructor <init>(Laze$a;I)V
    .locals 0

    .line 336
    iput-object p1, p0, Laze$a$7;->b:Laze$a;

    iput p2, p0, Laze$a$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
            ">;>;)V"
        }
    .end annotation

    .line 339
    iget v0, p0, Laze$a$7;->a:I

    new-instance v1, Laze$a$7$1;

    invoke-direct {v1, p0, p1}, Laze$a$7$1;-><init>(Laze$a$7;Lio/reactivex/FlowableEmitter;)V

    const/16 p1, 0x32

    invoke-static {v0, p1, v1}, Lazd;->a(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method
