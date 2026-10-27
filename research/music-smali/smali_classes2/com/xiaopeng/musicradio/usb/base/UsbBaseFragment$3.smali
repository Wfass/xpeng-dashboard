.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;
.super Ljava/lang/Object;
.source "UsbBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->updateLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v3, v3, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
