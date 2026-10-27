.class Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

.field final synthetic val$token:[Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 514
    sget-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->FAIL:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$ids:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$token:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->saveToken([Ljava/lang/String;[Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$ids:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$token:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;->SUCCEED:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception v1

    .line 523
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 527
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;->val$listener:Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;->onResult(Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener$RESULT;Ljava/lang/String;)V

    return-void
.end method
