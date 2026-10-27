.class Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$token:[Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$runnable",
            "val$uid",
            "val$token",
            "val$ids"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$ids:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$token:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->saveToken([Ljava/lang/String;[Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->this$0:Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$ids:[Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$token:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
