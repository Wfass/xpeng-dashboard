.class Lcom/xiaopeng/musicradio/home/view/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/home/view/HomeActivity;->listenAppFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/home/view/HomeActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity$3;->a:Lcom/xiaopeng/musicradio/home/view/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "HomeActivity.firstFrame"

    .line 295
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->d()V

    return-void
.end method
