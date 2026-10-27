.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;
.super Ljava/lang/Object;
.source "UsbBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->notifyItemChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;I)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->b:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->b:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->b:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->b:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$4;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
