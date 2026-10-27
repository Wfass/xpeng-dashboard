.class Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$1;
.super Ljava/lang/Object;
.source "PlaylistBlueView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$1;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-static {}, Latv;->b()V

    .line 78
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object p1

    const-string v0, "/mine/activity/playlist/blue"

    invoke-virtual {p1, v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method
