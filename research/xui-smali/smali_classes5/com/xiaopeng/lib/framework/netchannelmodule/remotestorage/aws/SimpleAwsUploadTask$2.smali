.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;
.super Ljava/lang/Object;
.source "SimpleAwsUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->executeUploadTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;Ljava/lang/String;)V

    .line 179
    return-void
.end method
