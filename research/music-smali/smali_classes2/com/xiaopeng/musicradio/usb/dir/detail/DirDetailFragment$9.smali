.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;
.super Ljava/lang/Object;
.source "DirDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->updateLogo()V
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

    .line 345
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mLastVisibleItemPosition:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$9;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    iget v3, v3, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->mFirstVisibleItemPosition:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method
