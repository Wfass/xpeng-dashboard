.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "XP-Appid"

.field public static final MODEL:Ljava/lang/String; = ""

.field public static final UPLOAD_TYPE:Ljava/lang/String; = "81"

.field public static final VERSION:Ljava/lang/String; = "2"


# instance fields
.field public app_id:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->file:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->app_id:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->model:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->type:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->v:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->timestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->timestamp:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo$Builder;->sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/UploadInfo;->sign:Ljava/lang/String;

    .line 83
    return-void
.end method
