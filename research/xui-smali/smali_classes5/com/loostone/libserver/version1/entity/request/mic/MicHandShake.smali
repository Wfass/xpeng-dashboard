.class public Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;
.super Lcom/loostone/libserver/version1/entity/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/String;

.field private state:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->type:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->data:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/request/mic/MicHandShake;->type:I

    return-void
.end method
