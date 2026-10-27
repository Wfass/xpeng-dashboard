.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$1;
.super Ljava/lang/Object;
.source "NetRadioPlayerCommonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V

    const-string v0, "NetRadioPlayerCommonLay"

    const-string v1, "run: ==========createListView"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
