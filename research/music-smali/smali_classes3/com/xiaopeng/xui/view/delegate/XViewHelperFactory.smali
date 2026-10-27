.class public abstract Lcom/xiaopeng/xui/view/delegate/XViewHelperFactory;
.super Ljava/lang/Object;
.source "XViewHelperFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFont(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewFontScale;
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewFontScale;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewFontScale;

    move-result-object p0

    return-object p0
.end method

.method public static createLocale(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewLocale;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewLocale;

    move-result-object p0

    return-object p0
.end method
