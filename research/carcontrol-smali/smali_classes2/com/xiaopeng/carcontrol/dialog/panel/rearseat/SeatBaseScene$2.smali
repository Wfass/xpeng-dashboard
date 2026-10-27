.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;
.super Ljava/lang/Object;
.source "SeatBaseScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->changePosName(Landroid/view/View;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

.field final synthetic val$editText:Lcom/xiaopeng/xui/widget/XEditText;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Lcom/xiaopeng/xui/widget/XEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->val$editText:Lcom/xiaopeng/xui/widget/XEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->val$editText:Lcom/xiaopeng/xui/widget/XEditText;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$102(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f11031a

    .line 147
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    return-void

    .line 150
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setPositiveButtonClickListener(Ljava/lang/String;I)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setPositiveButtonClickListener(Ljava/lang/String;I)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$100(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->setPositiveButtonClickListener(Ljava/lang/String;I)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
