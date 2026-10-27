.class public Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;
.super Landroid/view/View;
.source "TempImmerseView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TempImmerseView"


# instance fields
.field private mColors:[Ljava/lang/String;

.field private mDrawableColor:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->init()V

    return-void
.end method

.method private init()V
    .locals 34

    move-object/from16 v0, p0

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->temp_immerse_bg:I

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mDrawableColor:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, v0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mDrawableColor:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 43
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const-string v5, "#FF576D"

    const-string v6, "#FF6A5A"

    const-string v7, "#FF794E"

    const-string v8, "#FF814D"

    const-string v9, "#FF8A48"

    const-string v10, "#FF9246"

    const-string v11, "#FF9B45"

    const-string v12, "#FFAB46"

    const-string v13, "#FFB948"

    const-string v14, "#FFC84A"

    const-string v15, "#FFD852"

    const-string v16, "#FFE85B"

    const-string v17, "#FCF469"

    const-string v18, "#F4FA84"

    const-string v19, "#E9FE9C"

    const-string v20, "#DEFF9D"

    const-string v21, "#D5FF9A"

    const-string v22, "#CAFF97"

    const-string v23, "#B5FF9F"

    const-string v24, "#98FFAB"

    const-string v25, "#77FFB9"

    const-string v26, "#46FFC0"

    const-string v27, "#15FFC8"

    const-string v28, "#01F6D3"

    const-string v29, "#00E6E0"

    const-string v30, "#00D7ED"

    const-string v31, "#00C7FA"

    const-string v32, "#00A9FF"

    const-string v33, "#0183FF"

    .line 46
    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mColors:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mDrawableColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTempValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TempImmerseView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mDrawableColor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->mColors:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/TempImmerseView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "e:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
