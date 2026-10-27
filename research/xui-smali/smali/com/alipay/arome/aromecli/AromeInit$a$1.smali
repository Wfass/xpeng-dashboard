.class final Lcom/alipay/arome/aromecli/AromeInit$a$1;
.super Ljava/lang/Object;
.source "AromeInit.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeInit$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/alipay/arome/aromecli/AromeInit$a;


# direct methods
.method constructor <init>(Lcom/alipay/arome/aromecli/AromeInit$a;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/arome/aromecli/AromeInit$a;

    .line 238
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInit$a$1;->b:Lcom/alipay/arome/aromecli/AromeInit$a;

    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeInit$a$1;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 241
    const-string v0, "binderDied"

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a$1;->b:Lcom/alipay/arome/aromecli/AromeInit$a;

    invoke-static {v0}, Lcom/alipay/arome/aromecli/AromeInit$a;->a(Lcom/alipay/arome/aromecli/AromeInit$a;)Lcom/alipay/arome/aromecli/AromeInit$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a$1;->b:Lcom/alipay/arome/aromecli/AromeInit$a;

    invoke-static {v0}, Lcom/alipay/arome/aromecli/AromeInit$a;->a(Lcom/alipay/arome/aromecli/AromeInit$a;)Lcom/alipay/arome/aromecli/AromeInit$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/arome/aromecli/AromeInit$Callback;->serverDied()V

    .line 245
    :cond_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->reset()V

    .line 246
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a$1;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 247
    return-void
.end method
