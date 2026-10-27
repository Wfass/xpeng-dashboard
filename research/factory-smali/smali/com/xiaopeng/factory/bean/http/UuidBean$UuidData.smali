.class public Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;
.super Ljava/lang/Object;
.source "UuidBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/bean/http/UuidBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UuidData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/bean/http/UuidBean;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/factory/bean/http/UuidBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/bean/http/UuidBean;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;->this$0:Lcom/xiaopeng/factory/bean/http/UuidBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UuidData{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/factory/bean/http/UuidBean$UuidData;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
