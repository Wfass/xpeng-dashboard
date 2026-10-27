.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/view/XViewDelegate$onFontScaleChangeCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/widget/XGroupHeader;

.field private final synthetic f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XGroupHeader;Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;->f$0:Lcom/xiaopeng/xui/widget/XGroupHeader;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;->f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    return-void
.end method


# virtual methods
.method public final onFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;->f$0:Lcom/xiaopeng/xui/widget/XGroupHeader;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XGroupHeader$S_WD4TrSqPpLkbbLzZxGEBnE8zc;->f$1:Lcom/xiaopeng/xui/view/font/XFontScaleHelper;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XGroupHeader;->lambda$new$0$XGroupHeader(Lcom/xiaopeng/xui/view/font/XFontScaleHelper;)V

    return-void
.end method
