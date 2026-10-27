.class public interface abstract Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "XDropdownMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onInterceptItemSelected(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "title"
        }
    .end annotation
.end method

.method public abstract onItemSelected(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "title"
        }
    .end annotation
.end method
