.class Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$3;
.super Ljava/lang/Object;
.source "MirrorControlPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->initImsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index",
            "fromuser"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 444
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_brightness:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$3;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsBrightLevel(I)V

    return-void
.end method
