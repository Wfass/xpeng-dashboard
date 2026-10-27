.class Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;
.super Ljava/lang/Object;
.source "XTimePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 69
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method
