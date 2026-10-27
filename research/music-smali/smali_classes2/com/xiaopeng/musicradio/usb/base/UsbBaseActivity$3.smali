.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "UsbBaseActivity.java"


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

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$3;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iput p2, p1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mRvState:I

    .line 158
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->request()V

    return-void
.end method
