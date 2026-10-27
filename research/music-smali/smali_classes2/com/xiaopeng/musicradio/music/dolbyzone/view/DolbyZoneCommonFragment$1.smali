.class Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$1;
.super Ljava/lang/Object;
.source "DolbyZoneCommonFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;->findView()V
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

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/DolbyZoneCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KugouZoneCommonFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
