.class Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel$1;
.super Ljava/lang/Object;
.source "CmsMirrorControlPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->onInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "i"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XSegmented;->getId()I

    move-result p1

    const-wide/16 v0, 0x1f4

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJZ)Z

    move-result p1

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
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/CmsMirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p1

    if-nez p2, :cond_0

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->FLAT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    goto :goto_0

    .line 153
    :cond_0
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->WIDE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;

    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CmsViewAngle;->toBcmViewAngle()I

    move-result p2

    .line 152
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setCmsViewAngle(I)V

    :cond_1
    return-void
.end method
