.class Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$2;
.super Ljava/lang/Object;
.source "UsbMainContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setContentView(Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->access$100(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->selectTab(I)V

    return-void
.end method
