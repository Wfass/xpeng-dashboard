.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 453
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStatusChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$800(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method
