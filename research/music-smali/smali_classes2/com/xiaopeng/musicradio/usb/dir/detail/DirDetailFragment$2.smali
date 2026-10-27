.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "DirDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$200(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 170
    instance-of p1, p1, Lbqv;

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$400(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I

    move-result p1

    return p1

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$300(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I

    move-result p1

    return p1

    .line 167
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$300(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)I

    move-result p1

    return p1
.end method
