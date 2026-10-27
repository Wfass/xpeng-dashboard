.class public final synthetic Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    iput p2, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    iget v1, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$XSlider$6nRMnQGFhZSAnHXSTyWZZ5qLEF4;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/widget/slider/XSlider;->lambda$setCurrentIndex$0(Lcom/xiaopeng/xui/widget/slider/XSlider;IZ)V

    return-void
.end method
