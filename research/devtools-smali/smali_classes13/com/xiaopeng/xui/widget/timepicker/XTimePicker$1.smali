.class Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;
.super Ljava/lang/Object;
.source "XTimePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akQ:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->akQ:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->akQ:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;->akQ:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1, p2}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method
