.class Lcom/xiaopeng/devtools/view/a$3;
.super Ljava/lang/Object;
.source "NewConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/a;->lS()V
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

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a;Z)V

    .line 244
    goto :goto_0

    .line 246
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/a;->f(Lcom/xiaopeng/devtools/view/a;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/a;->g(Lcom/xiaopeng/devtools/view/a;)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->h(Lcom/xiaopeng/devtools/view/a;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a;Z)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/view/a;->a(Lcom/xiaopeng/devtools/view/a;F)F

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a;F)F

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->e(Lcom/xiaopeng/devtools/view/a;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->e(Lcom/xiaopeng/devtools/view/a;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/a$3;->Dw:Lcom/xiaopeng/devtools/view/a;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/a;->e(Lcom/xiaopeng/devtools/view/a;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 254
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
