.class Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;
.super Ljava/lang/Object;
.source "HomeMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->access$000(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment$1;->a:Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;->access$100(Lcom/xiaopeng/musicradio/home/view/HomeMainFragment;)V

    :cond_0
    return-void
.end method
