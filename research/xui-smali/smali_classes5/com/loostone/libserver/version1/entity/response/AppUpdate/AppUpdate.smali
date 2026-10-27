.class public Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private needUpdate:I

.field private url:Ljava/lang/String;

.field private versionCode:I

.field private versionContent:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeedUpdate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->needUpdate:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionCode:I

    return v0
.end method

.method public getVersionContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setNeedUpdate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->needUpdate:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionCode:I

    return-void
.end method

.method public setVersionContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionContent:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/AppUpdate/AppUpdate;->versionName:Ljava/lang/String;

    return-void
.end method
