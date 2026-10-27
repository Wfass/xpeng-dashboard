.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$1;
.super Ljava/lang/Object;
.source "DirDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$1;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity$1;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailActivity;->finish()V

    return-void
.end method
