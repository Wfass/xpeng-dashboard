.class public Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
.super Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;
.source "UsbPlayAllButton.java"


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/common/CommonPlayAllButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 38
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->play_all_btn_resume:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_play_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 45
    :cond_1
    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->play_all_btn_default:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_play_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->play_all_btn_pause:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->d:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_pause_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->b:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getPlayText()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCountText(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->c:I

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->a()V

    return-void
.end method
