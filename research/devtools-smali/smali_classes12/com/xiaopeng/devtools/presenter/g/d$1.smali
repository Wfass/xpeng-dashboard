.class Lcom/xiaopeng/devtools/presenter/g/d$1;
.super Ljava/lang/Object;
.source "SystemInfoPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/g/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/ImageView;

.field final synthetic zA:Ljava/lang/String;

.field final synthetic zB:Lcom/xiaopeng/devtools/presenter/g/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/g/d;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/g/d$1;->zB:Lcom/xiaopeng/devtools/presenter/g/d;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/g/d$1;->zA:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/devtools/presenter/g/d$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/d$1;->zA:Ljava/lang/String;

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/xiaopeng/devtools/utils/n;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/xiaopeng/devtools/presenter/g/d$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/devtools/presenter/g/d$1$1;-><init>(Lcom/xiaopeng/devtools/presenter/g/d$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
