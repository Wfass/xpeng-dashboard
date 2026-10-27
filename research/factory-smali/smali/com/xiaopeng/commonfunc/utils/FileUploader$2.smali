.class Lcom/xiaopeng/commonfunc/utils/FileUploader$2;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/callback/FileUploadOssCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/utils/FileUploader;->lambda$uploadFile2Cloud$4(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

.field final synthetic val$encryptZipFile:Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/utils/FileUploader;Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/utils/FileUploader;

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->val$encryptZipFile:Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 190
    const-string v0, "FileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile2Oss onFailure s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", s1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$500(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$500(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;->onFailure()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->val$encryptZipFile:Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 173
    const-string v0, "FileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile2Oss onStart s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", s1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 179
    const-string v0, "FileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile2Oss onSuccess s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", s1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$500(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->this$0:Lcom/xiaopeng/commonfunc/utils/FileUploader;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUploader;->access$500(Lcom/xiaopeng/commonfunc/utils/FileUploader;)Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;

    move-result-object v0

    const-string v1, "https://xp-security.oss-cn-hangzhou.aliyuncs.com/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->val$encryptZipFile:Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    iget-object v2, v2, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/commonfunc/callback/FileUploadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/FileUploader$2;->val$encryptZipFile:Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/utils/FileUploader$EncryptZipFile;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 186
    return-void
.end method
