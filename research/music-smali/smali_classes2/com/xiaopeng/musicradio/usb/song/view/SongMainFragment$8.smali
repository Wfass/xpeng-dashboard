.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$1100(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->getPlayText()Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$8;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$1200(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;Ljava/lang/String;)V

    return-void
.end method
