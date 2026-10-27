.class Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;->a:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
