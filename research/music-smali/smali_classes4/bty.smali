.class public Lbty;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "VuiRecyclerView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;


# instance fields
.field public a:Z

.field public b:Z

.field private c:Z

.field private d:Z

.field private e:Lbtz;

.field private f:Lbua;

.field private g:Lbxu;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lbty;->c:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lbty;->d:Z

    .line 38
    new-instance v1, Lbty$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lbty$1;-><init>(Lbty;Landroid/os/Looper;)V

    iput-object v1, p0, Lbty;->h:Landroid/os/Handler;

    .line 128
    new-instance v1, Lbty$2;

    invoke-direct {v1, p0}, Lbty$2;-><init>(Lbty;)V

    iput-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    .line 139
    iput-boolean p1, p0, Lbty;->k:Z

    .line 140
    iput-boolean p1, p0, Lbty;->l:Z

    .line 141
    iput-boolean v0, p0, Lbty;->m:Z

    .line 171
    new-instance p1, Lbty$3;

    invoke-direct {p1, p0}, Lbty$3;-><init>(Lbty;)V

    iput-object p1, p0, Lbty;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 305
    iput-boolean v0, p0, Lbty;->a:Z

    .line 306
    iput-boolean v0, p0, Lbty;->b:Z

    .line 328
    iput-boolean v0, p0, Lbty;->o:Z

    .line 329
    iput v0, p0, Lbty;->p:I

    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lbty;->q:I

    .line 331
    iput-boolean v0, p0, Lbty;->r:Z

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lbty;->s:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lbty;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lbty;->c:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lbty;->d:Z

    .line 38
    new-instance v1, Lbty$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lbty$1;-><init>(Lbty;Landroid/os/Looper;)V

    iput-object v1, p0, Lbty;->h:Landroid/os/Handler;

    .line 128
    new-instance v1, Lbty$2;

    invoke-direct {v1, p0}, Lbty$2;-><init>(Lbty;)V

    iput-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    .line 139
    iput-boolean p1, p0, Lbty;->k:Z

    .line 140
    iput-boolean p1, p0, Lbty;->l:Z

    .line 141
    iput-boolean v0, p0, Lbty;->m:Z

    .line 171
    new-instance p1, Lbty$3;

    invoke-direct {p1, p0}, Lbty$3;-><init>(Lbty;)V

    iput-object p1, p0, Lbty;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 305
    iput-boolean v0, p0, Lbty;->a:Z

    .line 306
    iput-boolean v0, p0, Lbty;->b:Z

    .line 328
    iput-boolean v0, p0, Lbty;->o:Z

    .line 329
    iput v0, p0, Lbty;->p:I

    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lbty;->q:I

    .line 331
    iput-boolean v0, p0, Lbty;->r:Z

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lbty;->s:Ljava/util/List;

    .line 56
    invoke-virtual {p0, p0, p2}, Lbty;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lbty;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lbty;->c:Z

    const/4 p3, 0x0

    .line 33
    iput-boolean p3, p0, Lbty;->d:Z

    .line 38
    new-instance v0, Lbty$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbty$1;-><init>(Lbty;Landroid/os/Looper;)V

    iput-object v0, p0, Lbty;->h:Landroid/os/Handler;

    .line 128
    new-instance v0, Lbty$2;

    invoke-direct {v0, p0}, Lbty$2;-><init>(Lbty;)V

    iput-object v0, p0, Lbty;->i:Ljava/lang/Runnable;

    .line 139
    iput-boolean p1, p0, Lbty;->k:Z

    .line 140
    iput-boolean p1, p0, Lbty;->l:Z

    .line 141
    iput-boolean p3, p0, Lbty;->m:Z

    .line 171
    new-instance p1, Lbty$3;

    invoke-direct {p1, p0}, Lbty$3;-><init>(Lbty;)V

    iput-object p1, p0, Lbty;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 305
    iput-boolean p3, p0, Lbty;->a:Z

    .line 306
    iput-boolean p3, p0, Lbty;->b:Z

    .line 328
    iput-boolean p3, p0, Lbty;->o:Z

    .line 329
    iput p3, p0, Lbty;->p:I

    const/4 p1, -0x1

    .line 330
    iput p1, p0, Lbty;->q:I

    .line 331
    iput-boolean p3, p0, Lbty;->r:Z

    const/4 p1, 0x0

    .line 332
    iput-object p1, p0, Lbty;->s:Ljava/util/List;

    .line 62
    invoke-virtual {p0, p0, p2}, Lbty;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0}, Lbty;->c()V

    return-void
.end method

.method static synthetic a(Lbty;)Lbxu;
    .locals 0

    .line 28
    iget-object p0, p0, Lbty;->g:Lbxu;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lbty;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbty;->e:Lbtz;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lbty;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbty;->e:Lbtz;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lbty;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lbty;->j:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 104
    new-instance v0, Lbtz;

    invoke-direct {v0, p0}, Lbtz;-><init>(Lbty;)V

    iput-object v0, p0, Lbty;->e:Lbtz;

    .line 105
    new-instance v0, Lbua;

    invoke-direct {v0, p0}, Lbua;-><init>(Lbty;)V

    iput-object v0, p0, Lbty;->f:Lbua;

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lbty;->setVuiLayoutLoadable(Z)V

    return-void
.end method

.method static synthetic c(Lbty;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lbty;->l:Z

    return p0
.end method

.method static synthetic d(Lbty;)Lbtz;
    .locals 0

    .line 28
    iget-object p0, p0, Lbty;->e:Lbtz;

    return-object p0
.end method

.method static synthetic e(Lbty;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lbty;->m:Z

    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lbty;->o:Z

    .line 347
    iput p1, p0, Lbty;->p:I

    .line 348
    iput p2, p0, Lbty;->q:I

    return-void
.end method

.method public a(Ljava/lang/String;Lbxu;ZZ)V
    .locals 0

    .line 156
    iput-object p1, p0, Lbty;->j:Ljava/lang/String;

    .line 157
    iput-boolean p3, p0, Lbty;->k:Z

    .line 158
    iput-boolean p4, p0, Lbty;->l:Z

    .line 159
    iput-object p2, p0, Lbty;->g:Lbxu;

    return-void
.end method

.method public b()V
    .locals 3

    .line 110
    iget-object v0, p0, Lbty;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VuiRecyclerView"

    if-nez v0, :cond_0

    iget-object v0, p0, Lbty;->g:Lbxu;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVuiScene:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbty;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lbty;->h:Landroid/os/Handler;

    iget-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lbty;->h:Landroid/os/Handler;

    iget-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "updateVuiScene sceneid is empty"

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 120
    iget-object v0, p0, Lbty;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbty;->g:Lbxu;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lbty;->h:Landroid/os/Handler;

    iget-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lbty;->h:Landroid/os/Handler;

    iget-object v1, p0, Lbty;->i:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "VuiRecyclerView"

    const-string v0, "updateVuiScene sceneid is empty"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lbty;->o:Z

    .line 336
    iput p1, p0, Lbty;->p:I

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    invoke-virtual {p0}, Lbty;->releaseVui()V

    .line 100
    invoke-direct {p0}, Lbty;->a()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lbty;->d:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbty;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v0, p0, Lbty;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbty;->e:Lbtz;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lbty;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbty;->e:Lbtz;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lbty;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbty;->f:Lbua;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lbty;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 10

    .line 244
    iget-boolean p1, p0, Lbty;->c:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, -0x1

    .line 245
    invoke-virtual {p0, p1}, Lbty;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0, v1}, Lbty;->canScrollVertically(I)Z

    move-result v2

    .line 247
    invoke-virtual {p0, p1}, Lbty;->canScrollHorizontally(I)Z

    move-result v3

    .line 248
    invoke-virtual {p0, v1}, Lbty;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 249
    iget-boolean v5, p0, Lbty;->a:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 253
    iget-boolean v5, p0, Lbty;->b:Z

    if-eqz v5, :cond_4

    .line 254
    :cond_2
    sget-object v5, Lbxx;->SCROLLBYX:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbty;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_3
    :goto_0
    sget-object v5, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbty;->setVuiAction(Ljava/lang/String;)V

    .line 258
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lbty;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    .line 260
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :cond_5
    iget-boolean v6, p0, Lbty;->o:Z

    if-eqz v6, :cond_a

    .line 263
    invoke-virtual {p0}, Lbty;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 264
    instance-of v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_a

    .line 265
    move-object v7, v6

    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v8, "minValue"

    .line 266
    iget v9, p0, Lbty;->p:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    iget v8, p0, Lbty;->q:I

    if-eq v8, p1, :cond_6

    iget p1, p0, Lbty;->p:I

    iget v6, p0, Lbty;->q:I

    :goto_2
    add-int/2addr p1, v6

    goto :goto_3

    :cond_6
    iget p1, p0, Lbty;->p:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    goto :goto_2

    :goto_3
    const-string v6, "maxValue"

    .line 268
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "displayStart"

    .line 269
    iget-boolean v8, p0, Lbty;->r:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v8

    sub-int v8, p1, v8

    goto :goto_4

    :cond_7
    iget v8, p0, Lbty;->p:I

    .line 270
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v9

    add-int/2addr v8, v9

    .line 269
    :goto_4
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "displayEnd"

    .line 271
    iget-boolean v8, p0, Lbty;->r:Z

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v7

    sub-int/2addr p1, v7

    goto :goto_5

    :cond_8
    iget p1, p0, Lbty;->p:I

    .line 272
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v7

    add-int/2addr p1, v7

    .line 271
    :goto_5
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    iget-object p1, p0, Lbty;->s:Ljava/util/List;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lbty;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    const-string p1, "supportVuiLabels"

    .line 274
    iget-object v6, p0, Lbty;->s:Ljava/util/List;

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "isReverse"

    .line 276
    iget-boolean v6, p0, Lbty;->r:Z

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 279
    :cond_a
    invoke-virtual {p0}, Lbty;->getVuiAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-object p2

    .line 283
    :cond_b
    invoke-virtual {p0}, Lbty;->getVuiAction()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v6}, Lbxx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_e

    const-string p1, "canScrollUp"

    .line 284
    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "canScrollDown"

    if-nez v2, :cond_d

    .line 285
    iget-boolean v0, p0, Lbty;->a:Z

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v1, v6

    :cond_d
    :goto_6
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_8

    :cond_e
    const-string p1, "canScrollLeft"

    .line 287
    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "canScrollRight"

    if-nez v4, :cond_10

    .line 288
    iget-boolean v0, p0, Lbty;->b:Z

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    move v1, v6

    :cond_10
    :goto_7
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    :goto_8
    invoke-virtual {p0, v5}, Lbty;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lbty;->d:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbty;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lbty;->a()V

    .line 85
    iget-boolean v0, p0, Lbty;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbty;->f:Lbua;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lbty;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lbty;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lbty;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 234
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 236
    iget-object v0, p0, Lbty;->n:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 238
    :cond_1
    iget-boolean p1, p0, Lbty;->l:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbty;->e:Lbtz;

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1}, Lbtz;->a()V

    :cond_2
    return-void
.end method

.method public setCanVuiScrollDown(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lbty;->a:Z

    return-void
.end method

.method public setCanVuiScrollRight(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lbty;->b:Z

    return-void
.end method

.method public setOrderState(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lbty;->r:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lbty;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 323
    iget-boolean p1, p0, Lbty;->l:Z

    if-nez p1, :cond_1

    .line 324
    invoke-virtual {p0}, Lbty;->b()V

    :cond_1
    return-void
.end method

.method public setVuiCanControlScroll(Z)V
    .locals 0

    .line 316
    iput-boolean p1, p0, Lbty;->c:Z

    return-void
.end method
