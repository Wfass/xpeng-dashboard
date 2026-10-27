.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$0s1mJX6yHkkxlZ4QQjTyEyVX5Fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

.field public final synthetic f$1:Ljava/lang/Double;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XOffsetView;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$0s1mJX6yHkkxlZ4QQjTyEyVX5Fg;->f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$0s1mJX6yHkkxlZ4QQjTyEyVX5Fg;->f$1:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$0s1mJX6yHkkxlZ4QQjTyEyVX5Fg;->f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$0s1mJX6yHkkxlZ4QQjTyEyVX5Fg;->f$1:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView;->lambda$onVuiElementEvent$2$XOffsetView(Ljava/lang/Double;)V

    return-void
.end method
