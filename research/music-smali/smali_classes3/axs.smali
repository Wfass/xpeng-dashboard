.class public abstract Laxs;
.super Ljava/lang/Object;
.source "LoadingDataListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxs$a;
    }
.end annotation


# instance fields
.field protected final a:[Ljava/lang/Class;

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field protected d:Laxs$a;


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxs;->b:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxs;->c:Ljava/util/HashMap;

    .line 32
    iput-object p1, p0, Laxs;->a:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/xiaopeng/musicradio/datalist/c;
    .locals 2

    .line 123
    iget-object v0, p0, Laxs;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 125
    :goto_0
    instance-of v1, p1, Lcom/xiaopeng/musicradio/datalist/i;

    if-eqz v1, :cond_1

    .line 126
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/i;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/datalist/i;->getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    iget-object v1, p0, Laxs;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 55
    :cond_0
    iget-object v1, p0, Laxs;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "LoadingDataListHelper"

    const-string p2, "updateDataListCount view is null"

    .line 37
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    new-instance v0, Laxs$1;

    invoke-direct {v0, p0, p1, p2}, Laxs$1;-><init>(Laxs;Landroid/view/View;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 113
    sget p2, Lcom/xiaopeng/musicradio/mine/a$a;->category_content_view_bottom_last:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    .line 115
    :cond_2
    sget p2, Lcom/xiaopeng/musicradio/mine/a$a;->category_content_view_bottom:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public a(Laxs$a;)V
    .locals 0

    .line 160
    iput-object p1, p0, Laxs;->d:Laxs$a;

    return-void
.end method

.method public b(Landroid/view/View;I)I
    .locals 7

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    iget-object v1, p0, Laxs;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    iget-object p1, p0, Laxs;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Laxs;->a:[Ljava/lang/Class;

    array-length p2, p1

    move v0, v2

    move v1, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v0, p2, :cond_2

    aget-object v5, p1, v0

    .line 69
    iget-object v6, p0, Laxs;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Laxs;->e()V

    .line 77
    invoke-virtual {p0}, Laxs;->b()V

    if-lez v1, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    return v4

    :cond_4
    const/4 p1, 0x3

    return p1

    :cond_5
    :goto_2
    return v2
.end method

.method protected b(Ljava/lang/Class;)Landroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Laxs;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected abstract b()V
.end method

.method public e()V
    .locals 7

    .line 89
    iget-object v0, p0, Laxs;->a:[Ljava/lang/Class;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 90
    iget-object v4, p0, Laxs;->a:[Ljava/lang/Class;

    aget-object v4, v4, v0

    .line 91
    iget-object v5, p0, Laxs;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    .line 93
    :goto_1
    iget-object v6, p0, Laxs;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-lez v5, :cond_2

    if-nez v3, :cond_2

    .line 96
    invoke-virtual {p0, v4, v5, v1}, Laxs;->a(Landroid/view/View;IZ)V

    move v3, v1

    goto :goto_3

    .line 99
    :cond_2
    invoke-virtual {p0, v4, v5, v2}, Laxs;->a(Landroid/view/View;IZ)V

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected f()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 140
    :goto_0
    iget-object v3, p0, Laxs;->a:[Ljava/lang/Class;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 141
    aget-object v3, v3, v0

    .line 142
    invoke-virtual {p0, v3}, Laxs;->a(Ljava/lang/Class;)Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v4

    .line 143
    iget-object v5, p0, Laxs;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    if-eqz v4, :cond_3

    const-string v5, "SPEECH_NUM_OFFSET"

    .line 145
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    .line 147
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 150
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method
