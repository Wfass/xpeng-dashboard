.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;
.super Ljava/lang/Object;
.source "TokenRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->callSuccessCallbacks(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

.field final synthetic val$token:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;->val$token:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;->val$token:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$CallbackList;->onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    .line 173
    return-void
.end method
