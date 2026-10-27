.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "UsbBaseDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setListener()V
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

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iput p2, p1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRvState:I

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->request()V

    return-void
.end method
