.class Lbxc$6;
.super Ljava/lang/Object;
.source "TTSEngineProxy.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxc;->a(Ljava/lang/String;ILjava/lang/String;IIIJI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbvs;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:J

.field final synthetic h:I

.field final synthetic i:Lbxc;


# direct methods
.method constructor <init>(Lbxc;Ljava/lang/String;ILjava/lang/String;IIIJI)V
    .locals 0

    .line 316
    iput-object p1, p0, Lbxc$6;->i:Lbxc;

    iput-object p2, p0, Lbxc$6;->a:Ljava/lang/String;

    iput p3, p0, Lbxc$6;->b:I

    iput-object p4, p0, Lbxc$6;->c:Ljava/lang/String;

    iput p5, p0, Lbxc$6;->d:I

    iput p6, p0, Lbxc$6;->e:I

    iput p7, p0, Lbxc$6;->f:I

    iput-wide p8, p0, Lbxc$6;->g:J

    iput p10, p0, Lbxc$6;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbvs;)Ljava/lang/Boolean;
    .locals 10

    .line 320
    :try_start_0
    iget-object v1, p0, Lbxc$6;->a:Ljava/lang/String;

    iget v2, p0, Lbxc$6;->b:I

    iget-object v3, p0, Lbxc$6;->c:Ljava/lang/String;

    iget v4, p0, Lbxc$6;->d:I

    iget v5, p0, Lbxc$6;->e:I

    iget v6, p0, Lbxc$6;->f:I

    iget-wide v7, p0, Lbxc$6;->g:J

    iget v9, p0, Lbxc$6;->h:I

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lbvs;->a(Ljava/lang/String;ILjava/lang/String;IIIJI)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC Excption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 316
    check-cast p1, Lbvs;

    invoke-virtual {p0, p1}, Lbxc$6;->a(Lbvs;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
