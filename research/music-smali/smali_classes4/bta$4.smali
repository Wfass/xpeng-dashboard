.class Lbta$4;
.super Ljava/lang/Object;
.source "VipDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbta;->dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbta;


# direct methods
.method constructor <init>(Lbta;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lbta$4;->a:Lbta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lbta$4;->a:Lbta;

    invoke-static {v0}, Lbta;->f(Lbta;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lbta$4;->a:Lbta;

    invoke-virtual {v0}, Lbta;->b()V

    .line 192
    :cond_0
    iget-object v0, p0, Lbta$4;->a:Lbta;

    invoke-static {v0}, Lbta;->g(Lbta;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lbta$4;->a:Lbta;

    invoke-virtual {v0}, Lbta;->c()V

    :cond_1
    return-void
.end method
