.class Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$2;
.super Ljava/lang/Object;
.source "KugouZoneCommonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$2;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "KugouZoneCommonFragment"

    const-string v0, "onClick: ========= "

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment$2;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/KugouZoneCommonFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method
