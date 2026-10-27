.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$9;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$9;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$9;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$400(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)V

    const-string v0, "HomeFragment"

    const-string v1, "setView: ======="

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
