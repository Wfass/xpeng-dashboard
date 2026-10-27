.class Lcom/xiaopeng/devtools/view/a$2;
.super Landroid/view/animation/Animation;
.source "NewConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Dw:Lcom/xiaopeng/devtools/view/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a$2;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/a$2;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-virtual {p2}, Lcom/xiaopeng/devtools/view/a;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$2;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 93
    return-void
.end method
