.class Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$3;
.super Ljava/lang/Object;
.source "XpAccountProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->startBindTask()V
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

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$3;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$3;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$600(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    return-void
.end method
