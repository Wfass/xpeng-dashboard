.class public Lcom/xiaopeng/libtheme/ThemeWrapper;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ThemeWrapper"

.field private static final TIMEOUT:J = 0x1388L

.field private static final TYPE_DRAWABLE_BOTTOM:I = 0x3

.field private static final TYPE_DRAWABLE_END:I = 0x5

.field private static final TYPE_DRAWABLE_LEFT:I = 0x0

.field private static final TYPE_DRAWABLE_RIGHT:I = 0x2

.field private static final TYPE_DRAWABLE_START:I = 0x4

.field private static final TYPE_DRAWABLE_TOP:I = 0x1

.field private static sThemeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    sput-boolean v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$1;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/libtheme/ThemeWrapper;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->onTimeout()V

    return-void
.end method

.method protected static getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;
    .locals 2

    .line 67
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/xiaopeng/libtheme/ThemeWrapper;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper;

    invoke-direct {v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;-><init>()V

    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    return-object v0
.end method

.method private static getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-object p0
.end method

.method private static getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p0, v1, v0

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 456
    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 465
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return p1

    :cond_2
    if-eqz p0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 467
    :cond_3
    throw p1

    :catch_0
    if-eqz p0, :cond_4

    .line 465
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return v0
.end method

.method private getThemeView(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 157
    iget p1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    if-lez p1, :cond_0

    iget p1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    if-lez p1, :cond_0

    .line 158
    iget p1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget v0, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    .line 163
    :cond_0
    iget p1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    if-lez p1, :cond_1

    if-nez v0, :cond_1

    .line 164
    iget p1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected static getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 650
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "getViewInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 653
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 656
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x1

    .line 657
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " view.id=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " view.resId=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " view.attr="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " view.toString="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " view.value.string="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " view.value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Landroid/util/TypedValue;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p0, " context null"

    .line 669
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " error="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleRefreshList(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeView;

    .line 128
    iget-object v2, p2, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 133
    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    sget-boolean v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshXml xmlCached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libtheme/ThemeView;

    .line 140
    iget-object v2, p2, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$2;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    const-wide/16 p1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private declared-synchronized handleThemeChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleThemeChanged"

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->put(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->timeout()V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->refresh(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static invokeViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .line 430
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 431
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    sget-boolean v3, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeViewResource view info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    new-array p2, v2, [Ljava/lang/Class;

    .line 437
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, p2, v1

    invoke-virtual {p0, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    .line 438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invokeViewResource view="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemeWrapper"

    invoke-static {p1, p0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected static now()J
    .locals 2

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private onTimeout()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    :cond_0
    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    .line 82
    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 83
    iput-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    .line 84
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeout time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private put(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$1;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private refresh(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshList(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    return-void
.end method

.method protected static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 206
    sget-object v5, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    .line 207
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_0

    const-string v8, "extra_append"

    .line 209
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const-string v9, "extra_global"

    .line 210
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_9

    .line 217
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v10, :cond_a

    .line 220
    :try_start_0
    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 221
    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    .line 222
    sget-boolean v16, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v16, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveAttribute common attr name="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " value="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 223
    :cond_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 224
    invoke-static {v14}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 225
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move/from16 v17, v9

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    if-nez v7, :cond_4

    if-eqz v17, :cond_5

    :cond_4
    const-string v7, "@"

    .line 227
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    .line 228
    :goto_4
    invoke-static {v14}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->isThemeAttribute(Ljava/lang/String;)Z

    move-result v17

    .line 229
    invoke-static {v14}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->isStyleAttribute(Ljava/lang/String;)Z

    move-result v18

    if-eqz v7, :cond_8

    if-eqz v17, :cond_6

    move v12, v9

    :cond_6
    if-eqz v18, :cond_7

    move v13, v9

    :cond_7
    if-nez v17, :cond_8

    if-nez v18, :cond_8

    .line 234
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_a
    const-string v7, " resId=0x"

    if-nez v12, :cond_b

    if-eqz v13, :cond_11

    .line 248
    :cond_b
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 249
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_c

    .line 250
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_5

    :cond_d
    if-eqz v12, :cond_e

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 254
    invoke-static {v10, v1, v11, v14, v14}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v15

    move v14, v15

    goto :goto_6

    :cond_e
    const/4 v14, 0x0

    :goto_6
    if-eqz v13, :cond_f

    .line 255
    invoke-static {v10, v1, v0, v2, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v14

    .line 256
    :cond_f
    sget-boolean v10, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveAttribute theme&style attr key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasTheme="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasStyle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_10
    if-eqz v14, :cond_c

    .line 258
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    if-gtz v2, :cond_12

    if-lez v3, :cond_16

    .line 268
    :cond_12
    :try_start_1
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    .line 270
    new-array v9, v8, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 271
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v9

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v8, :cond_16

    .line 273
    aget-object v10, v0, v14

    .line 274
    aget v11, v9, v14

    .line 275
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    .line 278
    invoke-static {v11, v1, v12, v2, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v11

    .line 279
    sget-boolean v12, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v12, :cond_14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resolveAttribute def attr key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_14
    if-eqz v11, :cond_15

    .line 281
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveAttribute style e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThemeWrapper"

    invoke-static {v2, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v4, :cond_1a

    .line 291
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 292
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_9

    .line 296
    :cond_18
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 297
    invoke-static {v3, v1, v4, v8, v8}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    .line 298
    sget-boolean v9, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolveAttribute global attr key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_19
    if-eqz v3, :cond_17

    .line 300
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1a
    return-object v6
.end method

.method protected static setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 310
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_2

    const/4 v4, 0x4

    if-eq p0, v4, :cond_0

    const/4 v5, 0x5

    if-eq p0, v5, :cond_0

    goto :goto_1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 489
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {p2, v3, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v5, :cond_3

    if-ne p0, v4, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz v5, :cond_3

    .line 493
    aget-object v4, v5, p0

    invoke-static {p2, v4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v5, p0

    .line 494
    aget-object p0, v5, v3

    aget-object p2, v5, v1

    aget-object v1, v5, v2

    aget-object v0, v5, v0

    invoke-virtual {p1, p0, p2, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 478
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 479
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {p2, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v4, :cond_3

    .line 482
    aget-object v5, v4, p0

    invoke-static {p2, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v4, p0

    .line 483
    aget-object p0, v4, v3

    aget-object p2, v4, v1

    aget-object v1, v4, v2

    aget-object v0, v4, v0

    invoke-virtual {p1, p0, p2, v1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static setVerticalThumbDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 504
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "getScrollCache"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 505
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 508
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 510
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "scrollBar"

    .line 512
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 514
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    .line 516
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v2, "mVerticalThumb"

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 520
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 521
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    .line 331
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    :try_start_0
    const-string v1, "alpha"

    .line 335
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p0, v1, :cond_16

    .line 337
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "background"

    .line 339
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "foreground"

    .line 341
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 343
    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "scrollbarThumbVertical"

    .line 345
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setVerticalThumbDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "src"

    .line 348
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 350
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 351
    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "textColor"

    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 355
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 356
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "textColorHint"

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 359
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 360
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "drawableLeft"

    .line 362
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 363
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 364
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "drawableTop"

    .line 366
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 368
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "drawableRight"

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    .line 372
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "drawableBottom"

    .line 374
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 375
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    .line 376
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "drawableStart"

    .line 378
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 379
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x4

    .line 380
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "drawableEnd"

    .line 382
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 383
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    const/4 v0, 0x5

    .line 384
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_d
    const-string v0, "progressDrawable"

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_16

    .line 388
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "thumb"

    .line 390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 391
    instance-of v0, p1, Landroid/widget/SeekBar;

    if-eqz v0, :cond_16

    .line 392
    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "button"

    .line 394
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 395
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_16

    .line 396
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_10
    const-string v0, "divider"

    .line 398
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 399
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_16

    .line 400
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_11
    const-string v0, "tint"

    .line 402
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 403
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 404
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_12
    const-string v0, "iconTint"

    .line 406
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 407
    instance-of v0, p1, Landroid/view/MenuItem;

    if-eqz v0, :cond_16

    .line 408
    move-object v0, p1

    check-cast v0, Landroid/view/MenuItem;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_13
    const-string v0, "backgroundTint"

    .line 410
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 411
    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_14
    const-string v0, "buttonTint"

    .line 412
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 413
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_16

    .line 414
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_15
    const-string v0, "drawableTint"

    .line 416
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 417
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 418
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 421
    :cond_16
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 422
    sget-boolean p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz p0, :cond_17

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewResource view info:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 424
    sget-boolean p3, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    if-eqz p3, :cond_17

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewResource error attr="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " view="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    :cond_17
    :goto_2
    return-void
.end method

.method protected static startImageDrawableTransition(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 589
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$5;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected static startTextColorTransition(Landroid/widget/TextView;II)V
    .locals 1

    .line 531
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$3;-><init>(Landroid/widget/TextView;II)V

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected static startTextColorTransition(Landroid/widget/TextView;ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 557
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper$4;-><init>(Landroid/widget/TextView;Landroid/content/res/ColorStateList;I)V

    if-eqz p0, :cond_0

    .line 585
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected static startViewBackgroundTransition(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 617
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$6;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private timeout()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected static updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p0, v1, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, p0, v1, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->invokeViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V
    .locals 2

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeView(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 173
    iget-object p2, p3, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p2, p3, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 174
    iget-object p2, p3, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    .line 177
    :try_start_1
    iget-object p3, p3, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :catch_0
    :try_start_2
    invoke-static {p2}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 181
    invoke-static {p1, v0, p2, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p1, v0, p2, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->invokeViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateViewResource e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThemeWrapper"

    invoke-static {p2, p1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected declared-synchronized onConfigurationChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;Landroid/content/res/Configuration;)V
    .locals 4

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 89
    invoke-static {p3}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p3

    const-string v1, "ThemeWrapper"

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged isNightMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isThemeChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleThemeChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
