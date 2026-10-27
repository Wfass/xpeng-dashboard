.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "UsbBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->setListener()V
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

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iput p2, p1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRvState:I

    .line 93
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->request()V

    return-void
.end method
