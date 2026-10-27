.class Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;
.super Ljava/lang/Object;
.source "CustomKeyAdapter.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xToggleLayout",
            "isCheck"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->access$000(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 46
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;->setPosition(IZ)V

    :cond_1
    return-void
.end method

.method public onInterceptClickCheck(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xToggleLayout"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isChecked()Z

    move-result p1

    return p1
.end method
