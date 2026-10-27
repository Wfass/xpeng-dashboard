.class public Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;
.super Lcom/loostone/libserver/version1/entity/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private brand:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->brand:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->channel:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->model:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/machine/RequestKaraokeApp;->packageName:Ljava/lang/String;

    return-void
.end method
