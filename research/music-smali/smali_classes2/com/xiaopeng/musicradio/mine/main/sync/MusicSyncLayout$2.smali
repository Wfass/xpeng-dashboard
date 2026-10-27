.class Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$2;
.super Ljava/lang/Object;
.source "MusicSyncLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->onSyncFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$2;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$2;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    .line 229
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ay;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ay;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
