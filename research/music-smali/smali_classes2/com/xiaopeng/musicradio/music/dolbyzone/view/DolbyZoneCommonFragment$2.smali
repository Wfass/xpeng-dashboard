.class Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$2;
.super Ljava/lang/Object;
.source "DolbyZoneCommonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "KugouZoneCommonFragment"

    const-string v0, "onClick: ========= "

    .line 136
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$2;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbgr;->a(Z)V

    return-void
.end method
