.class Lcom/xiaopeng/devtools/presenter/g/d$1$1;
.super Ljava/lang/Object;
.source "SystemInfoPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/g/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic zC:Lcom/xiaopeng/devtools/presenter/g/d$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/g/d$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/g/d$1$1;->zC:Lcom/xiaopeng/devtools/presenter/g/d$1;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/g/d$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d$1$1;->zC:Lcom/xiaopeng/devtools/presenter/g/d$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/presenter/g/d$1;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/g/d$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method
