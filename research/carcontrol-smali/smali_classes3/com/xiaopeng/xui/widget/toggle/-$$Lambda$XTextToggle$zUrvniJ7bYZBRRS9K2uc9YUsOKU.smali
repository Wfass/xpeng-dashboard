.class public final synthetic Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$zUrvniJ7bYZBRRS9K2uc9YUsOKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

.field public final synthetic f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/toggle/XTextToggle;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$zUrvniJ7bYZBRRS9K2uc9YUsOKU;->f$0:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$zUrvniJ7bYZBRRS9K2uc9YUsOKU;->f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    return-void
.end method


# virtual methods
.method public final onFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$zUrvniJ7bYZBRRS9K2uc9YUsOKU;->f$0:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/toggle/-$$Lambda$XTextToggle$zUrvniJ7bYZBRRS9K2uc9YUsOKU;->f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->lambda$new$0$XTextToggle(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    return-void
.end method
