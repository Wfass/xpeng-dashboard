.class Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$1;
.super Ljava/lang/Object;
.source "UsbMainContent.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;


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

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$1;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$1;->a:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 130
    invoke-static {p1}, Lbrn;->a(I)V

    return-void
.end method
