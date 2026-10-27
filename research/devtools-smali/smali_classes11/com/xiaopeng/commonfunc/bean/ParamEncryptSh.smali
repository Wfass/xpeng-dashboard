.class public Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;
.super Ljava/lang/Object;
.source "ParamEncryptSh.java"


# instance fields
.field private download_path:Ljava/lang/String;

.field private md5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->download_path:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->md5:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getDownload_path()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->download_path:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public setDownload_path(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->download_path:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->md5:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamEncryptSh{download_path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->download_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/ParamEncryptSh;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
