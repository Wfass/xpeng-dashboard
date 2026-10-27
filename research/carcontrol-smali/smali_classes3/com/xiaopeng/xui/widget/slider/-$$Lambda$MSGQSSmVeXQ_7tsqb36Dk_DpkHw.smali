.class public final synthetic Lcom/xiaopeng/xui/widget/slider/-$$Lambda$MSGQSSmVeXQ_7tsqb36Dk_DpkHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/slider/XSlider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$MSGQSSmVeXQ_7tsqb36Dk_DpkHw;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/-$$Lambda$MSGQSSmVeXQ_7tsqb36Dk_DpkHw;->f$0:Lcom/xiaopeng/xui/widget/slider/XSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/slider/XSlider;->showVuiFloating()V

    return-void
.end method
