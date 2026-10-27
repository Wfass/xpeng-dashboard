.class Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;
.super Ljava/lang/Object;
.source "XpAccountProxy.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/account/client/IContextProvider;


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

    .line 277
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$100(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$700(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;->this$0:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->access$000(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-result-object v0

    return-object v0
.end method
