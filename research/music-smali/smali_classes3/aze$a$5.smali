.class Laze$a$5;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/Flowable<",
        "Lfe<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laze$a;


# direct methods
.method constructor <init>(Laze$a;)V
    .locals 0

    .line 229
    iput-object p1, p0, Laze$a$5;->a:Laze$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Flowable<",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
            ">;>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Laze$a$5;->a:Laze$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Laze$a;->a(Laze$a;I)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 229
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Laze$a$5;->a(Ljava/lang/Integer;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
