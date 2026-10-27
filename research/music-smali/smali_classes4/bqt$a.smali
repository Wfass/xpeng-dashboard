.class Lbqt$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UsbSongBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    iput-object p1, p0, Lbqt$a;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    return-void
.end method

.method static synthetic a(Lbqt$a;)Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lbqt$a;->a:Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    return-object p0
.end method
