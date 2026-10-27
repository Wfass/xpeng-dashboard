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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 4
    .param p1, "spinner"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v0

    .line 79
    .local v0, "minValue":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v1

    .line 80
    .local v1, "maxValue":I
    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 82
    .local v2, "newHour":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 83
    .end local v2    # "newHour":I
    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 85
    .restart local v2    # "newHour":I
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 87
    .end local v2    # "newHour":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;->this$0:Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->access$000(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    .line 88
    return-void
.end method
