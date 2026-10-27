.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$5;
.super Ljava/lang/Object;
.source "UsbBaseActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->setAdapter()V
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

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
