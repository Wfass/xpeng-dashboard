.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field app_id:Ljava/lang/String;

.field file:Ljava/lang/String;

.field model:Ljava/lang/String;

.field sign:Ljava/lang/String;

.field timestamp:Ljava/lang/String;

.field type:Ljava/lang/String;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->file:Ljava/lang/String;

    .line 28
    const-string v0, "XP-Appid"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->app_id:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->model:Ljava/lang/String;

    .line 30
    const-string v0, "81"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->type:Ljava/lang/String;

    .line 31
    const-string v0, "2"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->v:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->timestamp:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->sign:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;)V

    return-object v0
.end method

.method public file(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->file:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public model(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->model:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public sign(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->sign:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public timestamp(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->timestamp:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->type:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->v:Ljava/lang/String;

    .line 53
    return-object p0
.end method
