.class public Lcom/xiaopeng/musicradio/utils/e;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/e;->a:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Landroid/widget/FrameLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/e;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 78
    new-instance v2, Landroid/view/View;

    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v3, p0, Lcom/xiaopeng/musicradio/utils/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/utils/e;->b:Ljava/util/ArrayList;

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/e;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/utils/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "ApplicationLifecycle"

    const-string v1, "fixViewHolderLocationLeak: =============="

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/e;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/utils/e;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/e;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/xiaopeng/musicradio/utils/e$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/e$1;-><init>(Lcom/xiaopeng/musicradio/utils/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
