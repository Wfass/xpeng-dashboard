.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionImage.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final file:Ljava/lang/String;

.field private final h:D

.field private imageView:Landroid/widget/ImageView;

.field private final w:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDD)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D
    .param p6, "w"    # D
    .param p8, "h"    # D

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->x:D

    .line 28
    iput-wide p4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->y:D

    .line 29
    iput-wide p6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->w:D

    .line 30
    iput-wide p8, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->h:D

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private hideImage()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 71
    .local v1, "windowManager":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    .line 74
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$2L2D6Asadk-zQWkZhBrv5SuQ3bw(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->hideImage()V

    return-void
.end method

.method public static synthetic lambda$aAii8VuDYGE8fS-byWYA1YaSYqE(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->showImage()V

    return-void
.end method

.method private showImage()V
    .locals 12

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/WindowManager;

    .line 62
    .local v10, "windowManager":Landroid/view/WindowManager;
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->imageView:Landroid/widget/ImageView;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->x:D

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->y:D

    iget-wide v6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->w:D

    iget-wide v8, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->h:D

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lcom/xiaopeng/xuiservice/smart/action/util/WindowUtil;->createWindowLayoutParam(Landroid/content/Context;DDDD)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v10, v11, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display image success, file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bitmap resolution = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 65
    return-void

    .line 45
    .end local v0    # "context":Landroid/content/Context;
    .end local v10    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load image bitmap fail, file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->stop()V

    .line 47
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionImage$aAii8VuDYGE8fS-byWYA1YaSYqE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionImage$aAii8VuDYGE8fS-byWYA1YaSYqE;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionImage$2L2D6Asadk-zQWkZhBrv5SuQ3bw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionImage$2L2D6Asadk-zQWkZhBrv5SuQ3bw;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
