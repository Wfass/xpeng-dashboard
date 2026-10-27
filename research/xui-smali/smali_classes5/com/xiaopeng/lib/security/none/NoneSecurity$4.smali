.class Lcom/xiaopeng/lib/security/none/NoneSecurity$4;
.super Ljava/lang/Object;
.source "NoneSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/none/NoneSecurity;->asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

.field final synthetic val$token:[Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/none/NoneSecurity;

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 300
    sget-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->FAIL:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    .line 301
    .local v0, "result":Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    const-string v1, ""

    .line 304
    .local v1, "exceptionString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$ids:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$token:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->saveToken([Ljava/lang/String;[Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$ids:[Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$token:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    sget-object v2, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->SUCCEED:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 311
    goto :goto_0

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;->onResult(Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;Ljava/lang/String;)V

    .line 314
    return-void
.end method
