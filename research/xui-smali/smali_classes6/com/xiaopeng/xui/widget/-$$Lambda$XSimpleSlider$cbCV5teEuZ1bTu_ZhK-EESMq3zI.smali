.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;->f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput p2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;->f$0:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget v1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XSimpleSlider;I)V

    return-void
.end method
