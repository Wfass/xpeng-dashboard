.class public abstract Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;,
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;,
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;,
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;,
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;,
        Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

.field protected b_:Landroid/view/LayoutInflater;

.field protected c:Landroid/view/LayoutInflater;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;

.field private volatile l:Z

.field private volatile m:Z

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->i:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->o:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->d:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->h:I

    .line 71
    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->n:I

    .line 72
    iput-object p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;

    if-lez p3, :cond_0

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 73
    :goto_0
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->m:Z

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b_:Landroid/view/LayoutInflater;

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c:Landroid/view/LayoutInflater;

    .line 78
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a()I

    move-result p1

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b(I)V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->h()V

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g()V

    return-void
.end method

.method private a(IILjava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 250
    new-instance v6, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;IIILjava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-static {v6}, Lbql;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->h:I

    return p0
.end method

.method private b(I)V
    .locals 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCachedItemView start, num2Create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resourceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasClear = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RVBaseAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->m:Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 205
    new-instance v4, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    invoke-direct {v4, p0, v3, v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;IZI)V

    invoke-static {v4}, Lbql;->c(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCachedItemView end, mCachedViewList.size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->l:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->n:I

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->o:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 3

    const-string v0, "mObservable"

    .line 90
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->k:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->k:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;

    const-string v2, "mObservers"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 7

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g:Landroid/util/SparseArray;

    .line 127
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f:Landroid/util/SparseArray;

    .line 128
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g:Landroid/util/SparseArray;

    iget v5, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->a:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 131
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f:Landroid/util/SparseArray;

    iget v6, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->a:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget v5, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->a:I

    iget v6, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->b:I

    iget v3, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->c:I

    invoke-direct {p0, v5, v6, v4, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(IILjava/util/concurrent/CopyOnWriteArrayList;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected a(I)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v2, "RVBaseAdapter"

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateViewHolder, getItemView from cache. type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 190
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 193
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateViewHolder, getItemView by creation. type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b_:Landroid/view/LayoutInflater;

    iget v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;->b:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    sget v1, Laqv$d;->tag_type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->m:Z

    return-void
.end method

.method public b()[Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Landroid/view/View;
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, " this = "

    const-string v3, "RVBaseAdapter"

    if-lez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateViewHolder, getItemView from cache. resourceName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateViewHolder, getItemView by creation. resourceName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b_:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->h:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    sget v2, Laqv$d;->tag_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->j:Z

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 524
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->l:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->m:Z

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->k:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e()V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
