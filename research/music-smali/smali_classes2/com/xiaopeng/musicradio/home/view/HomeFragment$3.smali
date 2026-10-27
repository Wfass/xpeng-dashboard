.class Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeFragment;->startFirstFrameProtectedTask()V
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

    .line 726
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFirstFrameProtectedTask run isAppFirstFrameComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/utils/c;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasSetView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    .line 730
    invoke-static {v1}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->access$1000(Lcom/xiaopeng/musicradio/home/view/HomeFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeFragment"

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->c()V

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeFragment$3;->a:Lcom/xiaopeng/musicradio/home/view/HomeFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/home/view/HomeFragment;->onAppFirstFrameComplete()V

    return-void
.end method
