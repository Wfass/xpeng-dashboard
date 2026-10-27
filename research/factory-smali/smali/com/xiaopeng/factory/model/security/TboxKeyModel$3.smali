.class Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;
.super Ljava/lang/Object;
.source "TboxKeyModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/security/TboxKeyModel;->verifyTboxCert(Lcom/xiaopeng/lib/http/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

.field final synthetic val$callback:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;->this$0:Lcom/xiaopeng/factory/model/security/TboxKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 194
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 195
    .local v1, "result":Z
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-string v3, "/cache/factory/tbox.key"

    .line 196
    invoke-static {v3}, Lcom/xiaopeng/factory/utils/FileUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;

    .line 195
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;

    .line 197
    .local v2, "tboxVerifyKey":Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;
    invoke-virtual {v2}, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->getCertKeys()[Lcom/xiaopeng/factory/bean/http/CertKey;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 198
    .local v6, "certKey":Lcom/xiaopeng/factory/bean/http/CertKey;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/cache/factory/CERT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getCert()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/cache/factory/KEY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/cache/factory/KEY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/cache/factory/CERT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "T3g4daAxt6re"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/cache/factory/PKCS12_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 200
    invoke-static {v7, v8, v9, v10}, Lcom/xiaopeng/factory/utils/ProcessUtil;->changePemToPkcs12(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    new-instance v7, Lcom/xiaopeng/factory/model/security/CertVerifyModel;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/cache/factory/PKCS12_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/res/dfer27nt.png"

    const-string v8, "CHECK_TBOX_KEY"

    .line 205
    invoke-static {v8}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "T3g4daAxt6re"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 207
    .local v7, "certVerifyModel":Lcom/xiaopeng/factory/model/security/CertVerifyModel;
    invoke-virtual {v7}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->verifyCert()Z

    move-result v8

    if-nez v8, :cond_0

    .line 208
    const-string v3, "TboxKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyCert FAIL when cert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaopeng/factory/bean/http/CertKey;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    .line 210
    goto :goto_1

    .line 212
    :cond_0
    const/4 v1, 0x1

    .line 197
    .end local v6    # "certKey":Lcom/xiaopeng/factory/bean/http/CertKey;
    .end local v7    # "certVerifyModel":Lcom/xiaopeng/factory/model/security/CertVerifyModel;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 215
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v3, :cond_3

    .line 216
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 217
    iget-object v4, v0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 219
    :cond_2
    iget-object v4, v0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 222
    :cond_3
    :goto_2
    const-string v3, "/cache/factory/"

    invoke-static {v3}, Lcom/xiaopeng/factory/utils/FileUtil;->deleteFolderFile(Ljava/lang/String;)V

    .line 223
    return-void
.end method
