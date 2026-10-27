.class public interface abstract Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$OnValueChangeListener;
.super Ljava/lang/Object;
.source "ValuePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnValueChangeListener"
.end annotation


# virtual methods
.method public abstract onTouchDown()V
.end method

.method public abstract onTouchUp()V
.end method

.method public abstract onValueChange(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "picker",
            "oldVal",
            "newVal"
        }
    .end annotation
.end method
