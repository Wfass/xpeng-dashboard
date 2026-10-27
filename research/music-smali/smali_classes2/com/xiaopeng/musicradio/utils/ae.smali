.class public Lcom/xiaopeng/musicradio/utils/ae;
.super Ljava/lang/Object;
.source "HomePreInflateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/ae$c;,
        Lcom/xiaopeng/musicradio/utils/ae$b;,
        Lcom/xiaopeng/musicradio/utils/ae$a;,
        Lcom/xiaopeng/musicradio/utils/ae$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/musicradio/utils/ae$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/ae$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/ae;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/ae;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/utils/ae$d;->a:Lcom/xiaopeng/musicradio/utils/ae;

    return-object v0
.end method

.method private synthetic a(Ljava/util/List;ILandroid/view/LayoutInflater;)V
    .locals 1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    invoke-virtual {p0, p2, p3, v0}, Lcom/xiaopeng/musicradio/utils/ae;->a(ILandroid/view/LayoutInflater;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 2

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/utils/ae$b;

    .line 37
    iget v1, v0, Lcom/xiaopeng/musicradio/utils/ae$b;->a:I

    iget v0, v0, Lcom/xiaopeng/musicradio/utils/ae$b;->b:I

    invoke-virtual {p0, v1, p2, v0}, Lcom/xiaopeng/musicradio/utils/ae;->a(ILandroid/view/LayoutInflater;I)V

    goto :goto_0

    :cond_0
    const-string p1, "HomePreInflateHelper"

    const-string p2, "preInflateList end"

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$ZfZl5Y21ZK7474o41MtZGIAtG7A(Lcom/xiaopeng/musicradio/utils/ae;Ljava/util/List;ILandroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/utils/ae;->a(Ljava/util/List;ILandroid/view/LayoutInflater;)V

    return-void
.end method

.method public static synthetic lambda$y3Vq97rCioMTnnLKQewGvp8xsBM(Lcom/xiaopeng/musicradio/utils/ae;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ae;->a(Ljava/util/List;Landroid/view/LayoutInflater;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    .line 96
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->getInstance()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->getViewFromPool(IZ)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(II)Landroid/view/View;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/utils/ae$a;

    if-eqz v1, :cond_0

    .line 128
    iget v3, v1, Lcom/xiaopeng/musicradio/utils/ae$a;->b:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/xiaopeng/musicradio/utils/ae$a;->a:I

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 133
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCachedInflatedView layoutId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HomePreInflateHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 135
    iget-object p1, v1, Lcom/xiaopeng/musicradio/utils/ae$a;->c:Landroid/view/View;

    .line 136
    iget-object p2, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-object p1

    :cond_2
    return-object v2
.end method

.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ae;->b(ILandroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/view/LayoutInflater;I)V
    .locals 4

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v3, Lcom/xiaopeng/musicradio/utils/ae$a;

    invoke-direct {v3, v2}, Lcom/xiaopeng/musicradio/utils/ae$a;-><init>(Lcom/xiaopeng/musicradio/utils/ae$1;)V

    .line 85
    iput p1, v3, Lcom/xiaopeng/musicradio/utils/ae$a;->a:I

    .line 86
    iput p3, v3, Lcom/xiaopeng/musicradio/utils/ae$a;->b:I

    .line 87
    iput-object p2, v3, Lcom/xiaopeng/musicradio/utils/ae$a;->c:Landroid/view/View;

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layout.preInflate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cost = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HomePreInflateHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preInflate accountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutIdList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomePreInflateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    iget-object p3, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/xiaopeng/musicradio/utils/ae;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/utils/ae$a;

    .line 64
    iget v4, v3, Lcom/xiaopeng/musicradio/utils/ae$a;->a:I

    if-ne p1, v4, :cond_0

    .line 65
    iget v3, v3, Lcom/xiaopeng/musicradio/utils/ae$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 70
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preInflate final load size: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 74
    :cond_3
    new-instance p3, Lcom/xiaopeng/musicradio/utils/-$$Lambda$ae$ZfZl5Y21ZK7474o41MtZGIAtG7A;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/utils/-$$Lambda$ae$ZfZl5Y21ZK7474o41MtZGIAtG7A;-><init>(Lcom/xiaopeng/musicradio/utils/ae;Ljava/util/List;ILandroid/view/LayoutInflater;)V

    invoke-static {p3}, Lbql;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/utils/ae$b;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 32
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/utils/-$$Lambda$ae$y3Vq97rCioMTnnLKQewGvp8xsBM;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/musicradio/utils/-$$Lambda$ae$y3Vq97rCioMTnnLKQewGvp8xsBM;-><init>(Lcom/xiaopeng/musicradio/utils/ae;Ljava/util/List;Landroid/view/LayoutInflater;)V

    invoke-static {v0}, Lbql;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs a(Landroid/view/LayoutInflater;[I)V
    .locals 4

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/ae;->b(Landroid/view/LayoutInflater;Ljava/util/List;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/utils/ae;->a(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(ILandroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 4

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/musicradio/utils/ae;->a(II)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Laqx;->a(Landroid/view/LayoutInflater;Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .line 114
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->enable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCachedInflatedView Layout.inflate.cost "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cost = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HomePreInflateHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public b(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/utils/ae;->a(ILandroid/view/LayoutInflater;Ljava/util/List;)V

    return-void
.end method
