.class public Lcom/zhpan/bannerview/provider/ViewStyleSetter;
.super Ljava/lang/Object;
.source "ViewStyleSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyRoundCorner(Landroid/view/View;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 41
    new-instance v0, Lcom/zhpan/bannerview/provider/RoundViewOutlineProvider;

    invoke-direct {v0, p1}, Lcom/zhpan/bannerview/provider/RoundViewOutlineProvider;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
