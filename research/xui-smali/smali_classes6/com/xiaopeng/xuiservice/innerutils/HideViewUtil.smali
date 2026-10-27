.class public Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;
.super Ljava/lang/Object;
.source "HideViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HideViewUtil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wm:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->mDisplayIds:Ljava/util/List;

    .line 24
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->wm:Landroid/view/WindowManager;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$1;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;-><init>()V

    return-void
.end method

.method private addHideViewImpl()V
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->mDisplayIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 30
    .local v1, "displayId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 31
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x845

    const v4, 0x840528

    const/4 v5, -0x3

    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 41
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x20

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 44
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->wm:Landroid/view/WindowManager;

    invoke-interface {v4, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "displayId":Ljava/lang/Integer;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "HideViewUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHideViewImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;
    .locals 1

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil$SingletonHolder;->access$100()Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$eHks2k_1089nI1gLlFfmfEcGVTw(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->removeHideViewImpl()V

    return-void
.end method

.method public static synthetic lambda$vRJwTSc2QD6-HNM6Ot5i-K4IZhg(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->addHideViewImpl()V

    return-void
.end method

.method private removeHideViewImpl()V
    .locals 4

    .line 59
    const-string v0, "HideViewUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHideViewImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 64
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public addHideView()V
    .locals 2

    .line 70
    const-string v0, "HideViewUtil"

    const-string v1, "addHideView"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$HideViewUtil$vRJwTSc2QD6-HNM6Ot5i-K4IZhg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$HideViewUtil$vRJwTSc2QD6-HNM6Ot5i-K4IZhg;-><init>(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public removeHideView()V
    .locals 2

    .line 75
    const-string v0, "HideViewUtil"

    const-string v1, "removeHideView"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$HideViewUtil$eHks2k_1089nI1gLlFfmfEcGVTw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$HideViewUtil$eHks2k_1089nI1gLlFfmfEcGVTw;-><init>(Lcom/xiaopeng/xuiservice/innerutils/HideViewUtil;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
