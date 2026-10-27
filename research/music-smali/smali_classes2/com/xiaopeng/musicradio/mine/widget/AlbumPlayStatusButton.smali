.class public Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;
.super Lcom/xiaopeng/xui/widget/XImageButton;
.source "AlbumPlayStatusButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 42
    sget p1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_btn_playall:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;->setImageResource(I)V

    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    sget p1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_btn_stop:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;->setImageResource(I)V

    :goto_0
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    sget p1, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/AlbumPlayStatusButton;->setTag(ILjava/lang/Object;)V

    return-void
.end method
