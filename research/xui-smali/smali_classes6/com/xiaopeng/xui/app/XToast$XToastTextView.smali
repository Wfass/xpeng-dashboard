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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$XToastTextView$LCJ2VUUQghoMdjN9EoMvxonSZGM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XToast$XToastTextView$LCJ2VUUQghoMdjN9EoMvxonSZGM;-><init>(Lcom/xiaopeng/xui/app/XToast$XToastTextView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 262
    :cond_0
    sget v0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XToastTextView create sCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/app/XToast$XToastTextView;)V
    .locals 2

    .line 256
    iget v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "XToastTextView onThemeChanged !!! "

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 260
    :cond_0
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

    sget v1, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->sCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->logD(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 267
    iput p1, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    .line 268
    iget v0, p0, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->mIcon:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/xiaopeng/xui/app/XToast$XToastTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 269
    return-void
.end method
