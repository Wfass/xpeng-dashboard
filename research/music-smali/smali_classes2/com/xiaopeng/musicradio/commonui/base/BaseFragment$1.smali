.class Lcom/xiaopeng/musicradio/commonui/base/BaseFragment$1;
.super Landroidx/activity/b;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;Z)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment$1;->a:Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "MusicBaseFragment"

    const-string v1, "addBackPressCallback handleOnBackPressed: ========="

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment$1;->a:Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->popBackStack(Landroidx/activity/b;)V

    return-void
.end method
