.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->removeMusicInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$2;->a:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$1300(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)V

    :cond_0
    return-void
.end method
