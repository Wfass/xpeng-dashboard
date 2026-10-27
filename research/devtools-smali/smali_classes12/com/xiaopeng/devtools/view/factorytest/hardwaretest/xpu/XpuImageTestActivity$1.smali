.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;
.super Ljava/lang/Object;
.source "XpuImageTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->e(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OJ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;->OJ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;->OJ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method
