.class Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;
.super Ljava/lang/Object;
.source "MusicSyncLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->setListener()V
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

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mTvSyncBackground:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->sync_retry:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->access$000(Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/main/sync/present/SyncStatePresenter;->b(JI)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout$1;->a:Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/mine/main/sync/MusicSyncLayout;->mDialog:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
