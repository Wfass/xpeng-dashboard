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

    .line 49
    sget-boolean v0, Lcom/xiaopeng/libtheme/ThemeManager;->DEBUG:Z

    sput-boolean v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper$WorkHandler;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper$1;)V

    iput-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeWrapper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/xiaopeng/libtheme/ThemeData;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/libtheme/ThemeWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->onTimeout()V

    return-void
.end method

.method protected static getInstance()Lcom/xiaopeng/libtheme/ThemeWrapper;
    .locals 2

    .line 66
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/xiaopeng/libtheme/ThemeWrapper;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper;

    invoke-direct {v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;-><init>()V

    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    return-object v0
.end method

.method private static getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "newDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "oldDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 428
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 431
    :cond_0
    return-object p0
.end method

.method private static getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 3
    .param p0, "attr"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 434
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v0

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 435
    .local v1, "ta":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v1, :cond_4

    .line 437
    :try_start_0
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .local v2, "resId":I
    if-eqz v2, :cond_2

    .line 441
    nop

    .line 445
    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 441
    :cond_1
    return v2

    .line 445
    .end local v2    # "resId":I
    :cond_2
    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 446
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v0

    .line 443
    :catch_0
    move-exception v2

    .line 445
    if-eqz v1, :cond_4

    .line 446
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    :cond_4
    return v0
.end method

.method private getThemeView(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "tv"    # Lcom/xiaopeng/libtheme/ThemeView;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 156
    iget v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    if-lez v1, :cond_0

    iget v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    if-lez v1, :cond_0

    .line 157
    iget v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 159
    iget v2, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    iget v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    .line 163
    iget v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    :cond_1
    return-object v0
.end method

.method protected static getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .param p2, "attr"    # Ljava/lang/String;

    .line 631
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "getViewInfo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    .line 634
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 635
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 637
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 638
    .local v3, "value":Landroid/util/TypedValue;
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 639
    nop

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.resId=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.attr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.toString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.value.string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " view.value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/TypedValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "value":Landroid/util/TypedValue;
    goto :goto_0

    .line 650
    :cond_0
    const-string v2, " context null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleRefreshList(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;

    .line 125
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 126
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

    .line 127
    .local v1, "tv":Lcom/xiaopeng/libtheme/ThemeView;
    iget-object v2, p2, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    invoke-direct {p0, p1, v2, v1}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V

    .line 128
    .end local v1    # "tv":Lcom/xiaopeng/libtheme/ThemeView;
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;

    .line 132
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    .local v0, "xmlCached":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRefreshXml xmlCached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 135
    if-eqz v0, :cond_1

    .line 136
    sget-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/libtheme/ThemeView;

    .line 139
    .local v3, "tv":Lcom/xiaopeng/libtheme/ThemeView;
    iget-object v4, p2, Lcom/xiaopeng/libtheme/ThemeData;->root:Landroid/view/View;

    invoke-direct {p0, p1, v4, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V

    .line 140
    .end local v3    # "tv":Lcom/xiaopeng/libtheme/ThemeView;
    goto :goto_0

    .line 142
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    :cond_0
    goto :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/libtheme/ThemeWrapper$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$2;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    .end local v0    # "xmlCached":Z
    :cond_2
    :goto_1
    return-void
.end method

.method private declared-synchronized handleThemeChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;

    monitor-enter p0

    .line 95
    :try_start_0
    const-string v0, "handleThemeChanged"

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->put(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/libtheme/ThemeWrapper;->timeout()V

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->refresh(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "data":Lcom/xiaopeng/libtheme/ThemeData;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/libtheme/ThemeWrapper;
    throw p1
.end method

.method private static invokeViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .line 411
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "attrMethod":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeViewResource view info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 416
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 417
    .local v5, "clazz":Ljava/lang/Class;
    if-eqz v5, :cond_0

    .line 418
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 419
    .local v6, "method":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v6, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "attrMethod":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThemeWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeViewResource view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected static now()J
    .locals 2

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private onTimeout()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    :cond_0
    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeCache:Ljava/util/HashMap;

    .line 81
    sput-object v1, Lcom/xiaopeng/libtheme/ThemeWrapper;->sThemeWrapper:Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 82
    iput-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeout time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private put(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;

    .line 103
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/libtheme/ThemeWrapper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$1;-><init>(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_1

    .line 113
    :cond_0
    :goto_0
    nop

    .line 114
    :goto_1
    return-void
.end method

.method private refresh(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshList(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 118
    return-void
.end method

.method protected static resolveAttribute(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
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

    .local p4, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 205
    move-object/from16 v5, p4

    sget-object v6, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->sAttributeMap:Ljava/util/HashMap;

    .line 206
    .local v6, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 208
    .local v7, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    const-string v0, "extra_append"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "extra_append"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    .line 209
    .local v9, "append":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    const-string v0, "extra_global"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extra_global"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v10, v0

    .line 211
    .local v10, "global":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 212
    .local v0, "hasTheme":Z
    const/4 v11, 0x0

    .line 215
    .local v11, "hasStyle":Z
    if-eqz v2, :cond_8

    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    .line 217
    .local v13, "N":I
    move v14, v11

    move v11, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v11, "hasTheme":Z
    .local v14, "hasStyle":Z
    :goto_2
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v13, :cond_9

    .line 219
    :try_start_0
    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 221
    .local v17, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resolveAttribute common attr name="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " value="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v17

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v17    # "value":Ljava/lang/String;
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 223
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result v8

    .line 224
    .local v8, "isDefineAttribute":Z
    if-eqz v9, :cond_2

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 226
    .local v16, "isAppendAttribute":Z
    :goto_3
    if-nez v8, :cond_3

    if-eqz v16, :cond_4

    :cond_3
    const-string v5, "@"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 227
    .local v5, "isValidAttribute":Z
    :goto_4
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->isThemeAttribute(Ljava/lang/String;)Z

    move-result v17

    .line 228
    .local v17, "isThemeAttribute":Z
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->isStyleAttribute(Ljava/lang/String;)Z

    move-result v18

    .line 229
    .local v18, "isStyleAttribute":Z
    if-eqz v5, :cond_7

    .line 230
    if-eqz v17, :cond_5

    const/4 v11, 0x1

    .line 231
    :cond_5
    if-eqz v18, :cond_6

    const/4 v14, 0x1

    .line 232
    :cond_6
    if-nez v17, :cond_7

    if-nez v18, :cond_7

    .line 233
    move/from16 v19, v5

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "isValidAttribute":Z
    .local v19, "isValidAttribute":Z
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 234
    .local v5, "resId":I
    move/from16 v20, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v8    # "isDefineAttribute":Z
    .local v20, "isDefineAttribute":Z
    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "name":Ljava/lang/String;
    .end local v5    # "resId":I
    .end local v12    # "value":Ljava/lang/String;
    .end local v16    # "isAppendAttribute":Z
    .end local v17    # "isThemeAttribute":Z
    .end local v18    # "isStyleAttribute":Z
    .end local v19    # "isValidAttribute":Z
    .end local v20    # "isDefineAttribute":Z
    :cond_7
    goto :goto_5

    .line 238
    :catch_0
    move-exception v0

    .line 217
    :goto_5
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .local v0, "i":I
    move-object/from16 v5, p4

    goto/16 :goto_2

    .line 246
    .end local v13    # "N":I
    .end local v14    # "hasStyle":Z
    .local v0, "hasTheme":Z
    .local v11, "hasStyle":Z
    :cond_8
    move v14, v11

    move v11, v0

    .end local v0    # "hasTheme":Z
    .local v11, "hasTheme":Z
    .restart local v14    # "hasStyle":Z
    :cond_9
    if-nez v11, :cond_a

    if-eqz v14, :cond_10

    .line 247
    :cond_a
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 248
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 249
    .local v8, "attr":I
    if-eqz v8, :cond_b

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 250
    goto :goto_6

    .line 252
    :cond_c
    const/4 v12, 0x0

    .line 253
    .local v12, "resId":I
    if-eqz v11, :cond_d

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v8, v1, v15, v13, v13}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v12

    .line 254
    :cond_d
    if-eqz v14, :cond_e

    invoke-static {v8, v1, v2, v3, v4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v12

    .line 255
    :cond_e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resolveAttribute theme&style attr key="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " resId=0x"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " hasTheme="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " hasStyle="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 256
    if-eqz v12, :cond_f

    .line 257
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "attr":I
    .end local v12    # "resId":I
    :cond_f
    goto :goto_6

    .line 265
    :cond_10
    if-gtz v3, :cond_11

    if-lez v4, :cond_15

    .line 267
    :cond_11
    :try_start_1
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 268
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    .line 269
    .local v5, "size":I
    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 270
    .local v8, "keys":[Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v12

    .line 271
    .local v12, "values":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    if-ge v13, v5, :cond_14

    .line 272
    aget-object v15, v8, v13

    .line 273
    .local v15, "key":Ljava/lang/String;
    aget v16, v12, v13

    move/from16 v21, v16

    .line 274
    .local v21, "attr":I
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 275
    nop

    .line 271
    move-object/from16 v22, v0

    goto :goto_8

    .line 277
    :cond_12
    move-object/from16 v22, v0

    move/from16 v0, v21

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v16

    .end local v21    # "attr":I
    .local v0, "attr":I
    .local v22, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v2, v16

    .line 278
    .local v2, "resId":I
    move/from16 v23, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "attr":I
    .local v23, "attr":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveAttribute def attr key="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 279
    if-eqz v2, :cond_13

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .end local v2    # "resId":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v23    # "attr":I
    :cond_13
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v22

    move-object/from16 v2, p1

    move/from16 v3, p2

    goto :goto_7

    .line 285
    .end local v5    # "size":I
    .end local v8    # "keys":[Ljava/lang/String;
    .end local v12    # "values":[I
    .end local v13    # "i":I
    .end local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    goto :goto_9

    .line 283
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ThemeWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAttribute style e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_9
    if-eqz v10, :cond_19

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 291
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 293
    goto :goto_a

    .line 295
    :cond_17
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 296
    .local v3, "attr":I
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v3, v1, v8, v5, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeResourceId(ILandroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v12

    .line 297
    .local v12, "resId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resolveAttribute global attr key="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " resId=0x"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 298
    if-eqz v12, :cond_18

    .line 299
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "attr":I
    .end local v12    # "resId":I
    :cond_18
    goto :goto_a

    .line 304
    :cond_19
    return-object v7
.end method

.method protected static setAttributeValue(Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 1
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "resId"    # I
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

    .line 307
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 309
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 313
    :cond_0
    :goto_0
    return-void
.end method

.method private static setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "type"    # I
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 453
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 454
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 469
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 470
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {p2, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    if-eqz v4, :cond_2

    .line 472
    const/4 v5, 0x4

    if-ne p0, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 473
    .local v5, "index":I
    :goto_0
    if-eqz v4, :cond_2

    .line 474
    aget-object v6, v4, v5

    invoke-static {p2, v6}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 475
    aget-object v3, v4, v3

    aget-object v1, v4, v1

    aget-object v2, v4, v2

    aget-object v0, v4, v0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "index":I
    goto :goto_1

    .line 459
    :pswitch_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 460
    .restart local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {p2, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    if-eqz v4, :cond_1

    .line 462
    move v5, p0

    .line 463
    .restart local v5    # "index":I
    aget-object v6, v4, v5

    invoke-static {p2, v6}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 464
    aget-object v3, v4, v3

    aget-object v1, v4, v1

    aget-object v2, v4, v2

    aget-object v0, v4, v0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 466
    .end local v4    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "index":I
    :cond_1
    nop

    .line 481
    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static setVerticalThumbDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 485
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 486
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/View;>;"
    const-string v1, "getScrollCache"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 487
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    return-void

    .line 488
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 489
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 490
    .local v2, "scrollCacheObj":Ljava/lang/Object;
    if-nez v2, :cond_1

    return-void

    .line 491
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 492
    .local v4, "scrollCacheClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_2

    return-void

    .line 493
    :cond_2
    const-string v5, "scrollBar"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 494
    .local v5, "scrollBarField":Ljava/lang/reflect/Field;
    if-nez v5, :cond_3

    return-void

    .line 495
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 496
    .local v6, "scrollBarObj":Ljava/lang/Object;
    if-nez v6, :cond_4

    return-void

    .line 497
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 498
    .local v7, "scrollBarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_5

    return-void

    .line 499
    :cond_5
    const-string v8, "mVerticalThumb"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 500
    .local v8, "verticalThumbField":Ljava/lang/reflect/Field;
    if-nez v8, :cond_6

    return-void

    .line 501
    :cond_6
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 502
    invoke-virtual {v8, v6, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/View;>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "scrollCacheObj":Ljava/lang/Object;
    .end local v4    # "scrollCacheClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "scrollBarField":Ljava/lang/reflect/Field;
    .end local v6    # "scrollBarObj":Ljava/lang/Object;
    .end local v7    # "scrollBarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "verticalThumbField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 506
    :goto_0
    return-void
.end method

.method private static setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "resId"    # I

    .line 329
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    .local v0, "ctx":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 331
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 332
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 334
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    :try_start_0
    const-string v3, "alpha"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_11

    .line 336
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 338
    :cond_1
    const-string v3, "background"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 340
    :cond_2
    const-string v3, "foreground"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_11

    .line 342
    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 344
    :cond_3
    const-string v3, "scrollbarThumbVertical"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setVerticalThumbDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 347
    :cond_4
    const-string v3, "src"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 348
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    .line 349
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 350
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    .end local v3    # "imageView":Landroid/widget/ImageView;
    goto/16 :goto_1

    .line 352
    :cond_5
    const-string v3, "textColor"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 354
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 355
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 357
    :cond_6
    const-string v3, "textColorHint"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 358
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 359
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 361
    :cond_7
    const-string v3, "drawableLeft"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 363
    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 365
    :cond_8
    const-string v3, "drawableTop"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 366
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 367
    const/4 v3, 0x1

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 369
    :cond_9
    const-string v3, "drawableRight"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 370
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 371
    const/4 v3, 0x2

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 373
    :cond_a
    const-string v3, "drawableBottom"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 374
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 375
    const/4 v3, 0x3

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 377
    :cond_b
    const-string v3, "drawableStart"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 378
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 379
    const/4 v3, 0x4

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 381
    :cond_c
    const-string v3, "drawableEnd"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 382
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_11

    .line 383
    const/4 v3, 0x5

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setCompoundDrawables(ILandroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 385
    :cond_d
    const-string v3, "progressDrawable"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 386
    instance-of v3, p1, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_11

    .line 387
    move-object v3, p1

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 389
    :cond_e
    const-string v3, "thumb"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 390
    instance-of v3, p1, Landroid/widget/SeekBar;

    if-eqz v3, :cond_11

    .line 391
    move-object v3, p1

    check-cast v3, Landroid/widget/SeekBar;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 393
    :cond_f
    const-string v3, "button"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 394
    instance-of v3, p1, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_11

    .line 395
    move-object v3, p1

    check-cast v3, Landroid/widget/CompoundButton;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 397
    :cond_10
    const-string v3, "divider"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 398
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_11

    .line 399
    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    invoke-static {v0, p3}, Landroidx/core/content/ThemeContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_11
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setViewResource view info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getViewInfo(Landroid/view/View;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_2

    .line 404
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setViewResource error attr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " view="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;)V

    .line 408
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_2
    return-void
.end method

.method protected static startImageDrawableTransition(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "startDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 570
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$5;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 596
    :cond_0
    return-void
.end method

.method protected static startTextColorTransition(Landroid/widget/TextView;II)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .line 512
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$3;-><init>(Landroid/widget/TextView;II)V

    .line 533
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p0, :cond_0

    .line 534
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 536
    :cond_0
    return-void
.end method

.method protected static startTextColorTransition(Landroid/widget/TextView;ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "startColor"    # I
    .param p2, "endColor"    # Landroid/content/res/ColorStateList;

    .line 538
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/libtheme/ThemeWrapper$4;-><init>(Landroid/widget/TextView;Landroid/content/res/ColorStateList;I)V

    .line 565
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p0, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 568
    :cond_0
    return-void
.end method

.method protected static startViewBackgroundTransition(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 598
    new-instance v0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper$6;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 621
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 624
    :cond_0
    return-void
.end method

.method private timeout()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    return-void
.end method

.method protected static updateAttribute(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
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

    .line 315
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 316
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

    .line 317
    .local v1, "attr":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p0, v1, v3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_2

    .line 320
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

    .line 322
    .end local v1    # "attr":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 324
    :cond_2
    return-void
.end method

.method private updateViewResource(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "tv"    # Lcom/xiaopeng/libtheme/ThemeView;

    .line 170
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/libtheme/ThemeWrapper;->getThemeView(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/libtheme/ThemeView;)Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    iget-object v1, p3, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    .local v1, "resAttr":Ljava/lang/String;
    const/4 v2, -0x1

    .line 176
    .local v2, "resValue":I
    :try_start_1
    iget-object v3, p3, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 178
    goto :goto_0

    .line 177
    :catch_0
    move-exception v3

    .line 179
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/xiaopeng/libtheme/ThemeManager$AttributeSet;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->setViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_1

    .line 182
    :cond_0
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->invokeViewResource(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "resAttr":Ljava/lang/String;
    .end local v2    # "resValue":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ThemeWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewResource e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method protected declared-synchronized onConfigurationChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/xiaopeng/libtheme/ThemeData;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/libtheme/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    .line 88
    .local v1, "isNightMode":Z
    invoke-static {p3}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v2

    .line 89
    .local v2, "isThemeChanged":Z
    const-string v3, "ThemeWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged isNightMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isThemeChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/libtheme/ThemeManager$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->handleThemeChanged(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "isNightMode":Z
    .end local v2    # "isThemeChanged":Z
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "data":Lcom/xiaopeng/libtheme/ThemeData;
    .end local p3    # "newConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/libtheme/ThemeWrapper;
    throw p1
.end method
