.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$2;
.super Ljava/lang/Object;
.source "UsbBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->setListener()V
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

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$2;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$2;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->finish()V

    return-void
.end method
