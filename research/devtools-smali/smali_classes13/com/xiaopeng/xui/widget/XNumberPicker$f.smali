.class Lcom/xiaopeng/xui/widget/XNumberPicker$f;
.super Ljava/lang/Object;
.source "XNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private final aer:I

.field private final aes:I

.field private aet:I

.field private mMode:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0

    .line 1826
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    const/4 p1, 0x1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aer:I

    .line 1831
    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aes:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 1843
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->cancel()V

    .line 1844
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->mMode:I

    .line 1845
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aet:I

    .line 1846
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1847
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->cancel()V

    .line 1851
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->mMode:I

    .line 1852
    iput p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aet:I

    .line 1853
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1854
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1837
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->mMode:I

    .line 1838
    iput v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aet:I

    .line 1839
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1840
    return-void
.end method

.method public run()V
    .locals 5

    .line 1858
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1860
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aet:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1866
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->b(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1862
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->a(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$f;->aep:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->invalidate(IIII)V

    .line 1864
    nop

    .line 1872
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
