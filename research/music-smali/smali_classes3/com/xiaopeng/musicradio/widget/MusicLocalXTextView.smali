.class public Lcom/xiaopeng/musicradio/widget/MusicLocalXTextView;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "MusicLocalXTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicLocalXTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicLocalXTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicLocalXTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 26
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/MusicLocalXTextView;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method
