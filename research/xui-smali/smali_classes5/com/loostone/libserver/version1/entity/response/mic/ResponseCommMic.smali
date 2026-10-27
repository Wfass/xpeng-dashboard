.class public Lcom/loostone/libserver/version1/entity/response/mic/ResponseCommMic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comm:I

.field private tip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/mic/ResponseCommMic;->comm:I

    return v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/mic/ResponseCommMic;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public setComm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/mic/ResponseCommMic;->comm:I

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/mic/ResponseCommMic;->tip:Ljava/lang/String;

    return-void
.end method
