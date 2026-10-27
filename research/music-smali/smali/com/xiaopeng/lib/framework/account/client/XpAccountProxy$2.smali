.class Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$2;
.super Ljava/lang/Object;
.source "XpAccountProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "XpAccountProxy"

    const-string v1, "onServiceDeathRecipient binderDied"

    .line 93
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$500(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    return-void
.end method
