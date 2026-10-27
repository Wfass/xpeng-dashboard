.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;
.super Ljava/lang/Object;
.source "UsbBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->refreshLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$4;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v3, v3, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mFirstVisibleItemPosition:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/common/b;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
