.class Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;
.super Ljava/lang/Object;
.source "XDropdownMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;

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

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->access$000(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->access$000(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->access$100(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->access$200(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V

    :goto_0
    return-void
.end method
