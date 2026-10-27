.class public interface abstract Lcom/xiaopeng/xui/lang/LangPresenter;
.super Ljava/lang/Object;
.source "LangPresenter.java"


# virtual methods
.method public abstract addLongClickAction(Landroid/view/View;)V
.end method

.method public abstract getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleCustomString(Landroid/view/View;)V
.end method

.method public abstract parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
.end method

.method public abstract sendModifyRequest(Landroid/view/View;)V
.end method

.method public abstract setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
.end method

.method public abstract setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V
.end method
