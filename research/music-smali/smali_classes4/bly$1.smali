.class Lbly$1;
.super Ljava/lang/Object;
.source "RdAlbumDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbly;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbly;


# direct methods
.method constructor <init>(Lbly;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lbly$1;->a:Lbly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lbly$1;->a:Lbly;

    invoke-static {p1}, Lbly;->a(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lbly$1;->a:Lbly;

    invoke-static {p1}, Lbly;->b(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    const/16 v0, 0xb

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    :cond_0
    return-void
.end method
