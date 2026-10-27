.class Lbqs$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "UsbDirBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    iput-object p1, p0, Lbqs$a;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    return-void
.end method

.method static synthetic a(Lbqs$a;)Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lbqs$a;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    return-object p0
.end method
