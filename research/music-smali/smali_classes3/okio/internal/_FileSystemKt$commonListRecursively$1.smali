.class final Lokio/internal/_FileSystemKt$commonListRecursively$1;
.super Lcah;
.source "-FileSystem.kt"

# interfaces
.implements Lcbd;


# annotations
.annotation runtime Lcac;
    b = "-FileSystem.kt"
    c = {
        0x5d
    }
    d = "invokeSuspend"
    e = "okio.internal._FileSystemKt$commonListRecursively$1"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/_FileSystemKt;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcah;",
        "Lcbd<",
        "Lkotlin/sequences/e<",
        "-",
        "Lokio/Path;",
        ">;",
        "Lbzq<",
        "-",
        "Lkotlin/w;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $dir:Lokio/Path;

.field final synthetic $followSymlinks:Z

.field final synthetic $this_commonListRecursively:Lokio/FileSystem;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lokio/Path;Lokio/FileSystem;ZLbzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Z",
            "Lbzq<",
            "-",
            "Lokio/internal/_FileSystemKt$commonListRecursively$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$dir:Lokio/Path;

    iput-object p2, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iput-boolean p3, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$followSymlinks:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcah;-><init>(ILbzq;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lbzq;)Lbzq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lbzq<",
            "*>;)",
            "Lbzq<",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation

    new-instance v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;

    iget-object v1, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$dir:Lokio/Path;

    iget-object v2, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iget-boolean v3, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$followSymlinks:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lokio/internal/_FileSystemKt$commonListRecursively$1;-><init>(Lokio/Path;Lokio/FileSystem;ZLbzq;)V

    iput-object p1, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lbzq;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/e;

    check-cast p2, Lbzq;

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$commonListRecursively$1;->invoke(Lkotlin/sequences/e;Lbzq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/e;Lbzq;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/e<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lbzq<",
            "-",
            "Lkotlin/w;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$commonListRecursively$1;->create(Ljava/lang/Object;Lbzq;)Lbzq;

    move-result-object p1

    check-cast p1, Lokio/internal/_FileSystemKt$commonListRecursively$1;

    sget-object p2, Lkotlin/w;->a:Lkotlin/w;

    invoke-virtual {p1, p2}, Lokio/internal/_FileSystemKt$commonListRecursively$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lbzv;->a()Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget v1, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/ArrayDeque;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/e;

    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v10, v3

    move-object p1, v4

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    invoke-static {p1}, Lkotlin/m;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/e;

    .line 90
    new-instance v1, Lkotlin/collections/ArrayDeque;

    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 91
    iget-object v3, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$dir:Lokio/Path;

    invoke-virtual {v1, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 92
    iget-object v3, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$dir:Lokio/Path;

    invoke-virtual {v3, v4}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, v0

    move-object v10, v1

    move-object v1, v3

    :goto_0
    move-object v0, p0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lokio/Path;

    .line 94
    iget-object v4, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    .line 97
    iget-boolean v7, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->$followSymlinks:Z

    const/4 v8, 0x0

    .line 98
    move-object v9, v0

    check-cast v9, Lbzq;

    .line 93
    iput-object p1, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;->label:I

    move-object v3, p1

    move-object v5, v10

    invoke-static/range {v3 .. v9}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/e;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLbzq;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_2

    return-object v11

    .line 101
    :cond_3
    sget-object p1, Lkotlin/w;->a:Lkotlin/w;

    return-object p1
.end method
