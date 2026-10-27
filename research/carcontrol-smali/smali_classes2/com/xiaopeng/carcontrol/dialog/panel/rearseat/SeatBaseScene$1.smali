.class Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$1;
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene$1;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->access$000(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method
