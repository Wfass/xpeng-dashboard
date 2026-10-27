.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "QcSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QcSliderDrawable"
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "QcSliderDrawable"


# instance fields
.field private mBgColor:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBgRadius:F

.field private mContainerBounds:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mInsetX:I

.field private mInsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSliderBitmap:Landroid/graphics/Bitmap;

.field private mSliderBounds:Landroid/graphics/Rect;

.field private mSliderCanvas:Landroid/graphics/Canvas;

.field private mSliderColor:I

.field private mSliderFrom:I

.field private mSliderInnerRadius:F

.field private mSliderInsetX:I

.field private mSliderInsetY:I

.field private mSliderOuterRadius:F

.field private mSliderPaint:Landroid/graphics/Paint;

.field private mSliderShader:Landroid/graphics/BitmapShader;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 725
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgRadius:F

    .line 714
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderOuterRadius:F

    .line 715
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInnerRadius:F

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderFrom:I

    .line 718
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetX:I

    .line 719
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetY:I

    .line 720
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetX:I

    .line 721
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetY:I

    .line 726
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 727
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderPaint:Landroid/graphics/Paint;

    .line 728
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 729
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    .line 730
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    .line 731
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "bgColor"    # I
    .param p2, "sliderColor"    # I

    .line 734
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;-><init>()V

    .line 735
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->setColor(II)V

    .line 736
    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cornerRadius"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 922
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 923
    nop

    .line 924
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 923
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 925
    .local v0, "rad":F
    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    move-object v1, p1

    move v6, v0

    move v7, v0

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 927
    .end local v0    # "rad":F
    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 930
    :goto_0
    return-void
.end method

.method private refreshSliderBounds(I)V
    .locals 8
    .param p1, "level"    # I

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 822
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_0
    int-to-float v1, p1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    .line 824
    .local v1, "scale":F
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderFrom:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 841
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 842
    .local v2, "y":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 843
    const-string v3, "QcSliderDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSliderBounds: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "y":I
    goto/16 :goto_1

    .line 836
    :pswitch_1
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 837
    .local v2, "x":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 838
    const-string v3, "QcSliderDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSliderBounds: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    goto/16 :goto_1

    .line 831
    .end local v2    # "x":I
    :pswitch_2
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 832
    .local v2, "y":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 833
    const-string v3, "QcSliderDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSliderBounds: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    goto :goto_1

    .line 826
    .end local v2    # "y":I
    :pswitch_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 827
    .local v2, "x":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 828
    const-string v3, "QcSliderDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSliderBounds: level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    nop

    .line 846
    .end local v2    # "x":I
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 900
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 901
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 903
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 904
    .local v1, "sc":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInnerRadius:F

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 905
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 908
    .end local v1    # "sc":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 910
    .local v1, "count":I
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 913
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 914
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderOuterRadius:F

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->drawRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 916
    if-eqz v1, :cond_1

    .line 917
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 919
    :cond_1
    return-void
.end method

.method getContainerBounds()Landroid/graphics/Rect;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 944
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 867
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 868
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 869
    .local v1, "rad":F
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 871
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgRadius:F

    .line 872
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 871
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 874
    :cond_0
    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    .line 875
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 879
    :goto_0
    return-void
.end method

.method getSliderBounds()Landroid/graphics/Rect;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 4

    .line 889
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 890
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 891
    const-string v1, "QcSliderDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateSelf: callback className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hashCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_0
    const-string v1, "QcSliderDrawable"

    const-string v2, "invalidateSelf: callback=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 896
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 850
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 851
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBitmap:Landroid/graphics/Bitmap;

    .line 852
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 857
    :goto_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderShader:Landroid/graphics/BitmapShader;

    .line 859
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetX:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 860
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 861
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetX:I

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 862
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->refreshSliderBounds(I)V

    .line 863
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 809
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mContainerBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 810
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->refreshSliderBounds(I)V

    .line 811
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->invalidateSelf()V

    .line 812
    const/4 v0, 0x1

    return v0

    .line 814
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "state"    # [I

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "enabled":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 797
    .local v4, "s":I
    const v5, 0x101009e

    if-ne v4, v5, :cond_0

    .line 798
    const/4 v0, 0x1

    .line 799
    goto :goto_1

    .line 796
    .end local v4    # "s":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mEnabled:Z

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    move v1, v2

    .line 803
    .local v1, "changed":Z
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mEnabled:Z

    .line 804
    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 935
    return-void
.end method

.method setColor(II)V
    .locals 2
    .param p1, "bgColor"    # I
    .param p2, "sliderColor"    # I

    .line 762
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgColor:I

    .line 763
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderColor:I

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 939
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 940
    return-void
.end method

.method setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 741
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 742
    const/4 p1, 0x0

    .line 744
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mBgRadius:F

    .line 745
    return-void
.end method

.method setInset(II)V
    .locals 0
    .param p1, "insetX"    # I
    .param p2, "insetY"    # I

    .line 779
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetX:I

    .line 780
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mInsetY:I

    .line 781
    return-void
.end method

.method setSliderFrom(I)V
    .locals 0
    .param p1, "edge"    # I

    .line 770
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderFrom:I

    .line 771
    return-void
.end method

.method setSliderInnerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 755
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 756
    const/4 p1, 0x0

    .line 758
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInnerRadius:F

    .line 759
    return-void
.end method

.method setSliderInset(II)V
    .locals 0
    .param p1, "insetX"    # I
    .param p2, "insetY"    # I

    .line 774
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetX:I

    .line 775
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderInsetY:I

    .line 776
    return-void
.end method

.method setSliderOuterCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 748
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 749
    const/4 p1, 0x0

    .line 751
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$QcSliderDrawable;->mSliderOuterRadius:F

    .line 752
    return-void
.end method
