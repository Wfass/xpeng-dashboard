.class public interface abstract Lcom/xiaopeng/carcontrol/view/widget/XSwitchText$OnCheckedChangeListener;
.super Ljava/lang/Object;
.source "XSwitchText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/XSwitchText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckedChangeListener"
.end annotation


# virtual methods
.method public abstract onCheckedChanged(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isChecked",
            "fromUser"
        }
    .end annotation
.end method

.method public abstract onInterceptChecked(ZZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isChecked",
            "fromUser"
        }
    .end annotation
.end method
