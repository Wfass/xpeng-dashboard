.class public Lcom/xiaopeng/xui/utils/XInputUtils;
.super Ljava/lang/Object;
.source "XInputUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignoreHiddenInput(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x3e9

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
