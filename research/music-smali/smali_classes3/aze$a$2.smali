.class Laze$a$2;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lfe<",
        "Ljava/lang/Integer;",
        "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Laze$a;


# direct methods
.method constructor <init>(Laze$a;Landroid/util/SparseArray;)V
    .locals 0

    .line 237
    iput-object p1, p0, Laze$a$2;->b:Laze$a;

    iput-object p2, p0, Laze$a$2;->a:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
            ">;)V"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept: page ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lfe;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramFetchModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p1, Lfe;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;

    .line 242
    iget-object v1, p0, Laze$a$2;->a:Landroid/util/SparseArray;

    iget-object p1, p1, Lfe;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Laze$a$2;->b:Laze$a;

    invoke-static {v2, v0}, Laze$a;->a(Laze$a;Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lfe;

    invoke-virtual {p0, p1}, Laze$a$2;->a(Lfe;)V

    return-void
.end method
