.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;
.super Ljava/lang/Object;
.source "XpWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->lS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 186
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->aa(Z)V

    .line 187
    goto/16 :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    .line 195
    cmpg-float v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    .line 196
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;F)F

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;F)F

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$1;->OD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 202
    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
