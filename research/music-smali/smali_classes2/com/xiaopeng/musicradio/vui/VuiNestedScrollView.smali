.class public Lcom/xiaopeng/musicradio/vui/VuiNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "VuiNestedScrollView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    .line 34
    sget-object p1, Lbxy;->SCROLLVIEW:Lbxy;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/vui/VuiNestedScrollView;->setVuiElementType(Lbxy;)V

    .line 35
    sget-object p1, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {p1}, Lbxx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/vui/VuiNestedScrollView;->setVuiAction(Ljava/lang/String;)V

    .line 36
    sget-object p1, Lbya;->NORMAL:Lbya;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/vui/VuiNestedScrollView;->setVuiMode(Lbya;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
