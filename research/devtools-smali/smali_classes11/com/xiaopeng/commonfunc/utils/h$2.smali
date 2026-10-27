.class Lcom/xiaopeng/commonfunc/utils/h$2;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pj:Lcom/xiaopeng/commonfunc/utils/h;

.field final synthetic pk:Lcom/xiaopeng/commonfunc/utils/h$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/utils/h;Lcom/xiaopeng/commonfunc/utils/h$a;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pk:Lcom/xiaopeng/commonfunc/utils/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 190
    const-string v0, "FileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile2Oss onFailure s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", s1:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/h;->e(Lcom/xiaopeng/commonfunc/utils/h;)Lcom/xiaopeng/commonfunc/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/h;->e(Lcom/xiaopeng/commonfunc/utils/h;)Lcom/xiaopeng/commonfunc/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/commonfunc/a/a;->onFailure()V

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pk:Lcom/xiaopeng/commonfunc/utils/h$a;

    iget-object p1, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/i;->deleteFile(Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 173
    const-string v0, "FileUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadFile2Oss onStart s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", s1:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

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

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/h;->e(Lcom/xiaopeng/commonfunc/utils/h;)Lcom/xiaopeng/commonfunc/a/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/h;->e(Lcom/xiaopeng/commonfunc/utils/h;)Lcom/xiaopeng/commonfunc/a/a;

    move-result-object p2

    const-string v0, "https://xp-security.oss-cn-hangzhou.aliyuncs.com/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pk:Lcom/xiaopeng/commonfunc/utils/h$a;

    iget-object v0, v0, Lcom/xiaopeng/commonfunc/utils/h$a;->password:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/xiaopeng/commonfunc/a/a;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h$2;->pk:Lcom/xiaopeng/commonfunc/utils/h$a;

    iget-object p1, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/i;->deleteFile(Ljava/lang/String;)Z

    .line 186
    return-void
.end method
