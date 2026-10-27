.class Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;
.super Ljava/lang/Object;
.source "FileUploadHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/utils/FileUploadHelper;->uploadFile2Oss(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "e"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploadHelper$1;->val$callback:Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method
