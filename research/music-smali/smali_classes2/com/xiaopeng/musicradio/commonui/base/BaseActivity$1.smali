.class Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;->a:Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;->a:Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;->a:Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method
