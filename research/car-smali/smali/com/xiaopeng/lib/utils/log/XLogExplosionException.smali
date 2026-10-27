.class public Lcom/xiaopeng/lib/utils/log/XLogExplosionException;
.super Ljava/lang/RuntimeException;
.source "XLogExplosionException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u597d\u610f\u601d\uff0c\u6211\u5728\u55b7Log\uff0c1\u5206\u949f\u55b7\u4e86128k\uff0c\u6211\u7684\u5305\u540d\u662f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method
