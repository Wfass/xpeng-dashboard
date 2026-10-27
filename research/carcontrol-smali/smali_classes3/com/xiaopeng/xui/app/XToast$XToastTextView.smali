.class public Lcom/xiaopeng/xui/app/XToast$XToastTextView;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "XToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XToastTextView"
.end annotation


# static fields
.field private static sCount:I


# instance fields
.field private mIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$XToastTextView$VTxi_g91Xth0IHIezAMIARrvgog;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$XToastTextView$VTxi_g91Xth0IHIezAMIARrvgog;-><init>(Lcom/xiaopeng/xui/app/XToast$XToastTextView;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 262
    :cond_0
    sget p1, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "XToastTextView create sCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p2, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 272
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->finalize()V

    .line 273
    sget v0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XToastTextView finalize sCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$XToast$XToastTextView()V
    .locals 2

    .line 256
    iget v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    if-eqz v0, :cond_0

    const-string v0, "XToastTextView onThemeChanged !!! "

    .line 257
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 267
    iput p1, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
