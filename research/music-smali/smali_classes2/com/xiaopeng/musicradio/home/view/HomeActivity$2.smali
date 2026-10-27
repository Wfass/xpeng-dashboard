.class Lcom/xiaopeng/musicradio/home/view/HomeActivity$2;
.super Landroidx/activity/b;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeActivity;->addActivityBackPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity$2;->a:Lcom/xiaopeng/musicradio/home/view/HomeActivity;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "HomeActivity"

    const-string v1, "handleOnBackPressed: ======"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity$2;->a:Lcom/xiaopeng/musicradio/home/view/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->moveTaskToBack(Z)Z

    return-void
.end method
