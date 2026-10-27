.class Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;
.super Ljava/lang/Object;
.source "UsbMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$b;->usb_main_content:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->access$002(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setContentView(Landroidx/fragment/app/FragmentManager;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showLoadingTip(I)V

    return-void
.end method
