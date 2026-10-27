.class Lbtb$2;
.super Ljava/lang/Object;
.source "VipDataModelV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtb;->dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtb;


# direct methods
.method constructor <init>(Lbtb;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lbtb$2;->a:Lbtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lbtb$2;->a:Lbtb;

    invoke-static {v0}, Lbtb;->k(Lbtb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lbtb$2;->a:Lbtb;

    invoke-virtual {v0}, Lbtb;->b()V

    :cond_0
    return-void
.end method
