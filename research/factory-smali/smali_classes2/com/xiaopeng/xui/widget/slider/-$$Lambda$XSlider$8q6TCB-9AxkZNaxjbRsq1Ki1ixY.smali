.class public final synthetic Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/slider/XSlider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$8q6TCB-9AxkZNaxjbRsq1Ki1ixY;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/slider/XSlider;->lambda$onVuiElementEvent$3(Lcom/xiaopeng/xui/widget/slider/XSlider;Landroid/view/View;)V

    return-void
.end method
