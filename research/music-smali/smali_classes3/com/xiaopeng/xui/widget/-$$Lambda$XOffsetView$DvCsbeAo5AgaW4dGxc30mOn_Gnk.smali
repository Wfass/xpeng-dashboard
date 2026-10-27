.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

.field private final synthetic f$1:Ljava/lang/Double;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XOffsetView;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;->f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;->f$1:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;->f$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XOffsetView$DvCsbeAo5AgaW4dGxc30mOn_Gnk;->f$1:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView;->lambda$onVuiElementEvent$2$XOffsetView(Ljava/lang/Double;)V

    return-void
.end method
