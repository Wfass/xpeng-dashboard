.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;
.super Ljava/lang/Object;
.source "SecureTokenRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->callFailureCallbacks(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

.field final synthetic val$exception:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;->val$exception:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$2;->val$exception:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$CallbackList;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void
.end method
