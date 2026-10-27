.class public Lbqs;
.super Lme/drakeet/multitype/c;
.source "UsbDirBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbqv;",
        "Lbqs$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbqs$a;
    .locals 2

    .line 27
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->usb_dir_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lbqs$a;

    invoke-direct {p2, p1}, Lbqs$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lbqs$a;

    check-cast p2, Lbqv;

    invoke-virtual {p0, p1, p2}, Lbqs;->a(Lbqs$a;Lbqv;)V

    return-void
.end method

.method protected a(Lbqs$a;Lbqv;)V
    .locals 2

    .line 34
    invoke-virtual {p2}, Lbqv;->b()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lbqs$a;->a(Lbqs$a;)Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lbqs$a;->a(Lbqs$a;)Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setVisibility(I)V

    .line 38
    invoke-static {p1}, Lbqs$a;->a(Lbqs$a;)Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;

    move-result-object p1

    invoke-virtual {p2}, Lbqv;->b()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v0

    invoke-virtual {p2}, Lbqv;->a()I

    move-result v1

    invoke-virtual {p2}, Lbqv;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbqs;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbqs$a;

    move-result-object p1

    return-object p1
.end method
