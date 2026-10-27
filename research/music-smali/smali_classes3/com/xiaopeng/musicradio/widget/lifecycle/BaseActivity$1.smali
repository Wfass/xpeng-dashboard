.class Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseActivity;->setView()V

    return-void
.end method
