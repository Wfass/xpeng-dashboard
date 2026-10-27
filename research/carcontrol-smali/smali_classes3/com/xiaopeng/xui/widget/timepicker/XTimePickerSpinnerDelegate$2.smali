.class Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "XTimePickerSpinnerDelegate.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result p1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_0

    if-ne p3, p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 82
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    if-ne p3, v0, :cond_1

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 87
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$000(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    return-void
.end method
