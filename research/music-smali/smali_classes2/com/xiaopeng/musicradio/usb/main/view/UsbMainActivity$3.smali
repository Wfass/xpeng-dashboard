.class Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;
.super Ljava/lang/Object;
.source "UsbMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$b;->usb_main_content:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->access$002(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->access$100(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->selectTab(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showLoadingTip(I)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->onBuildScene()V

    return-void
.end method
