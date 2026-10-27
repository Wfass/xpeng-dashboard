.class Lcom/xiaopeng/musicradio/netradio/player/view/d$1;
.super Ljava/lang/Object;
.source "NetRadioPlayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Lcom/xiaopeng/musicradio/netradio/player/view/d$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/player/view/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/d;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;->b:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;->b:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Lcom/xiaopeng/musicradio/netradio/player/view/d;)Lcom/xiaopeng/musicradio/netradio/player/view/d$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;->b:Lcom/xiaopeng/musicradio/netradio/player/view/d;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Lcom/xiaopeng/musicradio/netradio/player/view/d;)Lcom/xiaopeng/musicradio/netradio/player/view/d$b;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/d$b;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    :cond_0
    return-void
.end method
