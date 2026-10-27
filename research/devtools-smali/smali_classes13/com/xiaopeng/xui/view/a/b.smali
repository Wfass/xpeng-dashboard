.class public abstract Lcom/xiaopeng/xui/view/a/b;
.super Ljava/lang/Object;
.source "XViewDelegatePart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a/b;
    .locals 0
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/a/a;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract onAttachedToWindow()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDetachedFromWindow()V
.end method
