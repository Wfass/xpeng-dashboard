.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->updateMusicInfo(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
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

    .line 340
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->b:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$11;->a:I

    invoke-virtual {v0, v1}, Lbrm;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
