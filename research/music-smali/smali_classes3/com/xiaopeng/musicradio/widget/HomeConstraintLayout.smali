.class public Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "HomeConstraintLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeConstraintLayout"


# instance fields
.field private mAreaType:Ljava/lang/String;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mScreenId:I

.field protected mScreenState:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, -0x64

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0x64

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x64

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    .line 43
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged smallestScreenWidthDp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeConstraintLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 81
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onLayout(ZIIII)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout: ======is13 = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " is23: = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isFront = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " AreaType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ScreenId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HomeConstraintLayout"

    .line 82
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 58
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure: ====== mLastWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLastHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is13 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " is23: = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isFront = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " AreaType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ScreenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAreaType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " screenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HomeConstraintLayout"

    .line 60
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget v4, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    if-eq v3, v4, :cond_1

    .line 67
    :cond_0
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastWidth:I

    .line 68
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mLastHeight:I

    .line 69
    iput-object v2, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mAreaType:Ljava/lang/String;

    .line 70
    iput v3, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenId:I

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/HomeConstraintLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 76
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onMeasure(II)V

    return-void
.end method
