.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
.super Landroid/widget/LinearLayout;
.source "NavigationBar2.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "NavigationBar2"

.field private static final positionCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private areaType:Ljava/lang/String;

.field private atLeft:Z

.field barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

.field callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

.field private final dockScreenEventListener:Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private screenId:I

.field touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

.field private windowHeight:I

.field private final windowManager:Landroid/view/WindowManager;

.field private windowRect:Landroid/graphics/Rect;

.field private windowWidth:I

.field private xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->positionCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    .line 65
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->dockScreenEventListener:Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    .line 129
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->init(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setOrientation(I)V

    .line 84
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V

    .line 93
    .local v0, "l":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .param p1, "x1"    # [I

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->savePosition([I)V

    return-void
.end method

.method private calculateWindowRect(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 309
    const-string v0, "NavigationBar2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWindowRect screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", areaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", xpPackageInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getXUIApplicationWindowRect(ILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 314
    .local v0, "windowRect":Landroid/graphics/Rect;
    const-string v1, "NavigationBar2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windowRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getStatusBarRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 318
    .local v1, "statusBarRect":Landroid/graphics/Rect;
    const-string v2, "NavigationBar2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusBarRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 324
    if-nez p1, :cond_0

    const-string v2, "logical"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getDockerRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 331
    .local v2, "dockerRect":Landroid/graphics/Rect;
    const-string v3, "NavigationBar2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dockerRect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 336
    .end local v2    # "dockerRect":Landroid/graphics/Rect;
    :cond_0
    return-object v0
.end method

.method private createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 374
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 375
    .local v0, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 376
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 377
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 378
    const v1, 0x1000008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 380
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 381
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->displayId:I

    .line 382
    return-object v0
.end method

.method private static getDockerRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 365
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/16 v1, 0x7e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 366
    .local v0, "dockerRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 367
    const-string v1, "NavigationBar2"

    const-string v2, "getDockerRect = null, return empty rect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1

    .line 370
    :cond_0
    return-object v0
.end method

.method private getLastPosition()[I
    .locals 9

    .line 393
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getSaveKey()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->positionCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 395
    .local v1, "position":[I
    if-eqz v1, :cond_0

    .line 396
    return-object v1

    .line 399
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "lastPositionInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 401
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "data":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "array":[Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v4

    move-object v1, v6

    .line 404
    sget-object v4, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->positionCache:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-object v1

    .line 407
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "array":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getSaveKey()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget-object v1, v1, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStatusBarRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 355
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 356
    .local v0, "statusBarRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 357
    const-string v1, "NavigationBar2"

    const-string v2, "getStatusBarRect = null, return empty rect"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1

    .line 360
    :cond_0
    return-object v0
.end method

.method private getXUIApplicationWindowRect(ILjava/lang/String;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 341
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setScreenId(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 344
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v1

    .line 345
    .local v1, "windowRect":Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 347
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    .line 348
    const-string v3, "NavigationBar2"

    const-string v4, "getXUIApplicationWindowRect = null, return default rect"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-object v1
.end method

.method public static synthetic lambda$updateViewLayoutAfterWidthChanged$0(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setVisibility(I)V

    .line 275
    return-void
.end method

.method private savePosition([I)V
    .locals 4
    .param p1, "position"    # [I

    .line 417
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getSaveKey()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->positionCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "data":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getSaveKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private setupWindowRectAndLayoutParams(Landroid/graphics/Rect;[I)V
    .locals 3
    .param p1, "windowRect"    # Landroid/graphics/Rect;
    .param p2, "position"    # [I

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowWidth:I

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowHeight:I

    .line 248
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v2, p2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->dp2px(I)I

    move-result v0

    .line 254
    .local v0, "barHeight":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 258
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 259
    return-void
.end method


# virtual methods
.method public getAreaType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->areaType:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    return v0
.end method

.method public getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 281
    const-string v0, "NavigationBar2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide bar, screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", areaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->areaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", xpPackageInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 289
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 292
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->getInputEventListener()Lcom/xiaopeng/input/IInputEventListener;

    move-result-object v1

    const-string v2, "NavigationBar2"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->dockScreenEventListener:Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->registerListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;)Z

    .line 295
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 300
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->getInputEventListener()Lcom/xiaopeng/input/IInputEventListener;

    move-result-object v1

    const-string v2, "NavigationBar2"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->unregisterInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->dockScreenEventListener:Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->unRegisterListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;)Z

    .line 304
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 305
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public show(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 12
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 180
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    .line 181
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->areaType:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getLastPosition()[I

    move-result-object v0

    .line 185
    .local v0, "position":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget v3, v0, v2

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    .line 187
    iget v1, p3, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 188
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/XPADAppBar;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    goto :goto_1

    .line 190
    :cond_2
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v11, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    move-object v5, v1

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NormalAppBar;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;Z)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    .line 193
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->calculateWindowRect(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    .line 194
    if-nez v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->getDefaultPosition(Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setupWindowRectAndLayoutParams(Landroid/graphics/Rect;[I)V

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 201
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setVisibility(I)V

    .line 204
    const-string v1, "NavigationBar2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show bar, screenId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", areaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", xpPackageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 6
    .param p1, "areaType"    # Ljava/lang/String;
    .param p2, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 210
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->calculateWindowRect(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    .local v0, "newRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->areaType:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->xpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getLastPosition()[I

    move-result-object v1

    .line 219
    .local v1, "position":[I
    if-nez v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->getDefaultPosition(Landroid/graphics/Rect;)[I

    move-result-object v1

    .line 222
    :cond_1
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    move v2, v4

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->atLeft:Z

    .line 224
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    .line 225
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setupWindowRectAndLayoutParams(Landroid/graphics/Rect;[I)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->touchHelper:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->update(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    .line 229
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v2, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v2

    .line 231
    .local v2, "updated":Z
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->updateViewLayoutAfterWidthChanged()V

    .line 238
    :cond_3
    const-string v3, "NavigationBar2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update bar, screenId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->screenId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", areaType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", xpPackageInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_4
    return-void
.end method

.method updateViewLayoutAfterWidthChanged()V
    .locals 1

    .line 263
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->setVisibility(I)V

    .line 264
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$Yu7YFhiFWPgeLv4LdKeyAWs4w_4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$Yu7YFhiFWPgeLv4LdKeyAWs4w_4;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method
