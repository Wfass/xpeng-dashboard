.class Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;
.super Ljava/lang/Object;
.source "XDatePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;->this$0:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;->this$0:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    if-eqz p1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;->this$0:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method
