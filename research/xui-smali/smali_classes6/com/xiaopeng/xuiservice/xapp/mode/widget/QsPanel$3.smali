.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$3;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;


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

    .line 357
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;I)V

    .line 361
    return-void
.end method
