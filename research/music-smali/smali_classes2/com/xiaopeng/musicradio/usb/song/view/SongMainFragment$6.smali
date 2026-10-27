.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;
.super Ljava/lang/Object;
.source "SongMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$6;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v0

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
