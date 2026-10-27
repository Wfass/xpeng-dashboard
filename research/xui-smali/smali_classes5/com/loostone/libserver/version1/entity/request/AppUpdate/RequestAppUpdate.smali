.class public Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;
.super Lcom/loostone/libserver/version1/entity/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private channel:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private version_code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->version_code:I

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->channel:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/request/AppUpdate/RequestAppUpdate;->version_code:I

    return-void
.end method
