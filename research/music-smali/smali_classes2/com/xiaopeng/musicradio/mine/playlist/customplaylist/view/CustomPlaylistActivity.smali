.class public Lcom/xiaopeng/musicradio/mine/playlist/customplaylist/view/CustomPlaylistActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CustomPlaylistActivity.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/mine/activity/playlist/main"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/customplaylist/view/CustomPlaylistActivity;->finish()V

    return-void
.end method
