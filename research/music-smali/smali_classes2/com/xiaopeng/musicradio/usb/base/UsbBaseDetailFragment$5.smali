.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;
.super Ljava/lang/Object;
.source "UsbBaseDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setAdapter()V
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

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
