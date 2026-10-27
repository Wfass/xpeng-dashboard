.class Lcom/xiaopeng/lib/security/none/NoneSecurity$1;
.super Ljava/lang/Object;
.source "NoneSecurity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/security/none/NoneSecurity;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

.field final synthetic val$ids:[Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$token:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/security/none/NoneSecurity;

    .line 242
    iput-object p1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    iput-object p2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$ids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$token:[Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->this$0:Lcom/xiaopeng/lib/security/none/NoneSecurity;

    iget-object v1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$ids:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$token:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 252
    return-void
.end method
