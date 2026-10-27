.class public Lcom/xiaopeng/commonfunc/bean/http/UuidBean;
.super Ljava/lang/Object;
.source "UuidBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->code:I

    return v0
.end method

.method public getData()Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->data:Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UuidBean{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/http/UuidBean;->data:Lcom/xiaopeng/commonfunc/bean/http/UuidBean$UuidData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
