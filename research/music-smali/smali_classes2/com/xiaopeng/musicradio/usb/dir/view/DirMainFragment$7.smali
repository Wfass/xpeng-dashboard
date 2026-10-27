.class Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "DirMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 210
    instance-of p1, p1, Lbqv;

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$800(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I

    move-result p1

    return p1

    .line 213
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$700(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I

    move-result p1

    return p1

    .line 207
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$7;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$700(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)I

    move-result p1

    return p1
.end method
