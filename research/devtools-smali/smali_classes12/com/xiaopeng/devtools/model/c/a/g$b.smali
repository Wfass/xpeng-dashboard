.class final Lcom/xiaopeng/devtools/model/c/a/g$b;
.super Ljava/lang/Thread;
.source "MobileNetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic sD:Lcom/xiaopeng/devtools/model/c/a/g;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/c/a/g;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/g$b;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;)V

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/g;->c(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/g$b;->interrupt()V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/g;->b(Lcom/xiaopeng/devtools/model/c/a/g;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/g;->b(Lcom/xiaopeng/devtools/model/c/a/g;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$a;)Lcom/xiaopeng/devtools/model/c/a/g$a;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$b;)Lcom/xiaopeng/devtools/model/c/a/g$b;

    .line 100
    return-void
.end method

.method public run()V
    .locals 4

    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/g$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/model/c/a/g$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$1;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;Lcom/xiaopeng/devtools/model/c/a/g$a;)Lcom/xiaopeng/devtools/model/c/a/g$a;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/g;->b(Lcom/xiaopeng/devtools/model/c/a/g;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/g$b;->sD:Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/c/a/g;->a(Lcom/xiaopeng/devtools/model/c/a/g;)Lcom/xiaopeng/devtools/model/c/a/g$a;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 91
    return-void
.end method
