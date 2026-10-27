.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;
.super Ljava/lang/Object;
.source "UsbBaseDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->refreshLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v3, v3, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbrm;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
