.class Lcom/xiaopeng/devtools/view/hwcheck/a$2;
.super Ljava/lang/Object;
.source "ImageDispAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/hwcheck/a;->dr(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PF:Lcom/xiaopeng/devtools/view/hwcheck/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/hwcheck/a;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$2;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 131
    const-string p1, "ImageDispAdapter"

    const-string p2, "finish view"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$2;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/hwcheck/a;->b(Lcom/xiaopeng/devtools/view/hwcheck/a;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x700

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSystemUiVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$2;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/hwcheck/a;->c(Lcom/xiaopeng/devtools/view/hwcheck/a;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/hwcheck/a$2;->PF:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/hwcheck/a;->b(Lcom/xiaopeng/devtools/view/hwcheck/a;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 136
    const/4 p1, 0x1

    return p1
.end method
