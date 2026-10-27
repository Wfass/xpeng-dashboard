.class Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;
.super Landroid/widget/ImageView;
.source "ActionImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->showImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;
    .param p2, "x0"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image view detached, recycle bitmap, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;->access$000(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    return-void
.end method
